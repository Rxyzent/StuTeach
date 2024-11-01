import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:stu_teach/common/base/base_cubit.dart';
import 'package:stu_teach/domain/repo/home_repo.dart';
import 'package:stu_teach/presentation/splash/cubit/splash_state.dart';

@injectable
class SplashCubit extends BaseCubit<SplashBuildable, SplashListenable> {
  SplashCubit(this._repo) : super(const SplashBuildable()) {
    _init();
  }

  final HomeRepo _repo;

  void _init() {
    final user = _repo.getUser();
    Timer(
      const Duration(milliseconds: 300),
      () {
        invoke(SplashListenable(
            effect: user == null ? SplashEffect.login : SplashEffect.home));
      },
    );
  }
}
