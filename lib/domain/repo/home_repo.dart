import 'package:file_picker/file_picker.dart';
import 'package:stu_teach/domain/model/task/task_model.dart';
import 'package:stu_teach/domain/model/user/user_model.dart';

abstract class HomeRepo {
  Future<void> createNewTask(
    String name,
    PlatformFile file,
    DateTime deadline,
    String? description,
  );

  Future<void> updateTask(
      String taskId,
      String? name,
      String fileName,
      String? filePath,
      String fileUrl,
      DateTime deadline,
      String? description,
      );

  Future<List<TaskModel>> getTasks();

  Future<void> downloadFile(String url,String fileName);

  Future<void> submitSolution(
    String taskId,
    PlatformFile file,
    String? name,
  );

  Future<List<Solution>> getSolutions(String taskId);

  Future<void> deleteTask(String taskId);

  UserModel? getUser();
}
