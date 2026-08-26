import 'package:hive_ce/hive_ce.dart';
import 'package:injectable/injectable.dart';
import 'package:matrix_application/core/storage/hive_box_names.dart';
import 'package:matrix_application/features/user/data/models/user_model.dart';

@lazySingleton
class UserLocalDataSource {
  Box<UserModel> get _box => Hive.box<UserModel>(HiveBoxNames.users);

  UserModel? getByPhone(String phoneNumber) => _box.get(phoneNumber);

  List<UserModel> getAll() => _box.values.toList();

  Future<void> put(UserModel model) => _box.put(model.phoneNumber, model);
}
