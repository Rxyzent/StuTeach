import 'package:stu_teach/domain/model/storage/storage.dart';
import 'package:stu_teach/domain/repo/main_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: MainRepo)
class MainRepoImpl extends MainRepo {
  MainRepoImpl(this._storage);

  final Storage _storage;

  @override
  bool? getThemeMode() {
    return _storage.theme.call();
  }

  @override
  Future<void> setThemeMode(bool themeMode) {
    return _storage.theme.set(themeMode);
  }

  @override
  String getRole() {
    return _storage.user.call()!.role!;
  }

}
