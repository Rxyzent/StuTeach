// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:dio/dio.dart' as _i361;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:firebase_storage/firebase_storage.dart' as _i457;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:stu_teach/common/di/app_module.dart' as _i786;
import 'package:stu_teach/common/di/firebase_module.dart' as _i638;
import 'package:stu_teach/common/di/network_module.dart' as _i117;
import 'package:stu_teach/common/widgets/display/display.dart' as _i973;
import 'package:stu_teach/common/widgets/display/display_impl.dart' as _i722;
import 'package:stu_teach/data/auth/auth_repo_impl.dart' as _i435;
import 'package:stu_teach/data/home/home_repo_impl.dart' as _i158;
import 'package:stu_teach/data/main/main_repo_impl.dart' as _i170;
import 'package:stu_teach/domain/model/colors/dark_theme_colors.dart' as _i696;
import 'package:stu_teach/domain/model/colors/theme_colors.dart' as _i303;
import 'package:stu_teach/domain/model/dio_interceptor/dio_interceptor.dart'
    as _i33;
import 'package:stu_teach/domain/model/storage/storage.dart' as _i603;
import 'package:stu_teach/domain/repo/auth_repo.dart' as _i803;
import 'package:stu_teach/domain/repo/home_repo.dart' as _i375;
import 'package:stu_teach/domain/repo/main_repo.dart' as _i832;
import 'package:stu_teach/presentation/auth/register/cubit/register_cubit.dart'
    as _i932;
import 'package:stu_teach/presentation/auth/sign_in/cubit/sign_in_cubit.dart'
    as _i341;
import 'package:stu_teach/presentation/home/dashboard/cubit/home_cubit.dart'
    as _i472;
import 'package:stu_teach/presentation/home/new_task/cubit/new_task_cubit.dart'
    as _i542;
import 'package:stu_teach/presentation/main/cubit/main_cubit.dart' as _i128;
import 'package:stu_teach/presentation/profile/cubit/profile_cubit.dart'
    as _i166;
import 'package:stu_teach/presentation/splash/cubit/splash_cubit.dart' as _i418;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseModule = _$FirebaseModule();
    final appModule = _$AppModule();
    final networkModule = _$NetworkModule();
    gh.singleton<_i696.DarkThemeColors>(() => _i696.DarkThemeColors());
    gh.lazySingleton<_i59.FirebaseAuth>(() => firebaseModule.auth);
    gh.lazySingleton<_i974.FirebaseFirestore>(() => firebaseModule.firestore);
    gh.lazySingleton<_i457.FirebaseStorage>(
        () => firebaseModule.firebaseStorage);
    gh.lazySingleton<_i974.Logger>(() => appModule.logger);
    await gh.lazySingletonAsync<_i603.Storage>(
      () => _i603.Storage.create(),
      preResolve: true,
    );
    gh.lazySingleton<_i303.ThemeColors>(() => _i303.ThemeColors());
    gh.singleton<_i973.Display>(() => _i722.DisplayImpl());
    gh.lazySingleton<_i33.DioInterceptor>(
        () => _i33.DioInterceptor(gh<_i603.Storage>()));
    gh.factory<_i832.MainRepo>(() => _i170.MainRepoImpl(gh<_i603.Storage>()));
    gh.factory<_i803.AuthRepo>(() => _i435.RegisterRepoImpl(
          gh<_i59.FirebaseAuth>(),
          gh<_i974.FirebaseFirestore>(),
          gh<_i603.Storage>(),
        ));
    gh.factory<_i341.SignInCubit>(
        () => _i341.SignInCubit(gh<_i803.AuthRepo>()));
    gh.factory<_i932.RegisterCubit>(
        () => _i932.RegisterCubit(gh<_i803.AuthRepo>()));
    gh.factory<_i166.ProfileCubit>(
        () => _i166.ProfileCubit(gh<_i803.AuthRepo>()));
    gh.factory<_i361.Dio>(() => networkModule.dio(gh<_i33.DioInterceptor>()));
    gh.factory<_i128.MainCubit>(() => _i128.MainCubit(gh<_i832.MainRepo>()));
    gh.factory<_i375.HomeRepo>(() => _i158.HomeRepoImpl(
          gh<_i974.FirebaseFirestore>(),
          gh<_i457.FirebaseStorage>(),
          gh<_i603.Storage>(),
          gh<_i361.Dio>(),
        ));
    gh.factory<_i542.NewTaskCubit>(
        () => _i542.NewTaskCubit(gh<_i375.HomeRepo>()));
    gh.factory<_i472.HomeCubit>(() => _i472.HomeCubit(gh<_i375.HomeRepo>()));
    gh.factory<_i418.SplashCubit>(
        () => _i418.SplashCubit(gh<_i375.HomeRepo>()));
    return this;
  }
}

class _$FirebaseModule extends _i638.FirebaseModule {}

class _$AppModule extends _i786.AppModule {}

class _$NetworkModule extends _i117.NetworkModule {}
