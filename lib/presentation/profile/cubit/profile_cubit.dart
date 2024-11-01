import 'package:injectable/injectable.dart';
import 'package:stu_teach/common/base/base_cubit.dart';
import 'package:stu_teach/domain/repo/auth_repo.dart';
import 'package:stu_teach/presentation/profile/cubit/profile_state.dart';

@injectable
class ProfileCubit extends BaseCubit<ProfileBuildable, ProfileListenable> {
  ProfileCubit(this._repo) : super(const ProfileBuildable());

  final AuthRepo _repo;

  void logout() async{
   await _repo.logout();
  }
}