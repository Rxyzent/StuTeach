import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stu_teach/domain/model/storage/storage.dart';
import 'package:stu_teach/domain/model/task/task_model.dart';
import 'package:stu_teach/domain/model/user/user_model.dart';
import 'package:stu_teach/domain/repo/home_repo.dart';

@Injectable(as: HomeRepo)
class HomeRepoImpl extends HomeRepo {
  HomeRepoImpl(
    this._firestore,
    this._firebaseStorage,
    this._storage,
    this._dio,
  );

  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStorage;
  final Storage _storage;
  final Dio _dio;

  @override
  Future<void> createNewTask(
    String name,
    PlatformFile file,
    DateTime deadline,
    String? description,
  ) async {
    final user = _storage.user.call();
    final ref = _firebaseStorage.ref('uploads/${file.name}');
    await ref.putFile(File(file.path!));
    final downloadUrl = await ref.getDownloadURL();
    final tasks = _firestore.collection('tasks');
    final documentRef = await tasks.add({
      'teacherId': user!.uid,
      'fileName': file.name,
      'taskName': name,
      'fileUrl': downloadUrl,
      'deadline': Timestamp.fromDate(deadline),
      'description': description,
    });
    await tasks.doc(documentRef.id).update({'taskId': documentRef.id});
  }

  @override
  Future<List<TaskModel>> getTasks() async {
    final querySnapshot = await _firestore.collection('tasks').get();
    final json = querySnapshot.docs.map((doc) => doc.data()).toList();
    return tasksFromJson(json);
  }

  @override
  Future<List<Solution>> getSolutions(String taskId) async {
    final tasks = await _firestore
        .collection('tasks')
        .doc(taskId)
        .collection('solutions')
        .get();
    final json = tasks.docs.map((doc) => doc.data()).toList();
    return solutionsFromJson(json);
  }

  @override
  Future<void> submitSolution(
    String taskId,
    PlatformFile file,
    String? name,
  ) async {
    final user = _storage.user.call();
    final solutions = _firestore.collection('tasks').doc(taskId);
    final ref = _firebaseStorage.ref('uploads/${file.name}');
    await ref.putFile(File(file.path!));
    final downloadUrl = await ref.getDownloadURL();
    final solution = {
      'fileName': file.name,
      'taskName': name,
      'fileUrl': downloadUrl,
      'fullName': user!.fullName,
      'submittedAt': Timestamp.fromDate(DateTime.now()),
    };
    await solutions.update({
      'solutions': FieldValue.arrayUnion([solution])
    });
  }

  @override
  Future<void> deleteTask(String taskId) async {
    await _firestore.collection('tasks').doc(taskId).delete();
  }

  @override
  UserModel? getUser() {
    return _storage.user.call();
  }

  @override
  Future<void> updateTask(
    String taskId,
    String? name,
    String fileName,
    String? filePath,
    String fileUrl,
    DateTime deadline,
    String? description,
  ) async {
    final task = _firestore.collection('tasks').doc(taskId);
    var downloadUrl = fileUrl;
    if(filePath != null){
      final ref = _firebaseStorage.ref('uploads/$fileName');
      await ref.putFile(File(filePath));
      downloadUrl = await ref.getDownloadURL();
    }
    await task.update({
      'fileName': fileName,
      'taskName': name,
      'fileUrl': downloadUrl,
      'deadline': Timestamp.fromDate(deadline),
      'description': description,
    });
  }

  @override
  Future<void> downloadFile(String url, String fileName) async {
    final isPermissionGranted = await Permission.storage.isGranted;
    if (!isPermissionGranted) await Permission.storage.request();
    if (await Permission.storage.isGranted) {
      final directory = await getExternalStorageDirectory();
      final fullPath = '${directory!.path}/$fileName';
      await _dio.download(url, fullPath);
    }
  }
}
