import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:stu_teach/domain/model/storage/storage.dart';
import 'package:stu_teach/domain/model/user/user_model.dart';
import 'package:stu_teach/domain/repo/auth_repo.dart';
import 'package:stu_teach/presentation/auth/sign_in/cubit/sign_in_state.dart';

@Injectable(as: AuthRepo)
class RegisterRepoImpl extends AuthRepo {
  RegisterRepoImpl(this._auth, this._firestore, this._storage);

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;
  final Storage _storage;

  @override
  Future<void> createUser(
      String email, String password, String role, String name) async {
    await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    final ref = _firestore.collection('users');
    final user = _auth.currentUser;
    ref.doc(user!.uid).set({
      'email': email,
      'role': role,
      'fullName': name,
    });
  }

  @override
  Future<SignInEffects> signIn(String email, String password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
    final uid = _auth.currentUser!.uid;
    final documentSnapshot =
        await _firestore.collection('users').doc(uid).get();
    if (documentSnapshot.exists) {
      final user = UserModel.fromJson(documentSnapshot.data()!);
      await _storage.user.set(user.copyWith(uid: uid));
      return SignInEffects.home;
    } else {
      return SignInEffects.error;
    }
  }

  @override
  Future<void> logout() async {
    await _storage.user.set(null);
  }
}
