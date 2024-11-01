import 'package:stu_teach/common/base/base_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:stu_teach/domain/model/user/user_model.dart';

@lazySingleton
class Storage {
  Storage(this._box);

  final Box _box;

  @FactoryMethod(preResolve: true)
  static Future<Storage> create() async {
    await Hive.initFlutter();
    Hive.registerAdapter(UserModelImplAdapter());
    final box = await Hive.openBox('storage');
    return Storage(box);
  }

  BaseStorage<String> get token => BaseStorage(_box, 'token');

 BaseStorage<UserModel> get user => BaseStorage(_box, 'user');

  BaseStorage<bool> get theme => BaseStorage(_box, 'theme');
}
