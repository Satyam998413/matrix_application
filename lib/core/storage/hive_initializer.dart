import 'package:hive_ce/hive_ce.dart';
import 'package:matrix_application/core/storage/hive_box_names.dart';
import 'package:matrix_application/features/user/data/models/user_model.dart';
import 'package:matrix_application/hive_registrar.g.dart';
import 'package:path_provider/path_provider.dart';

abstract class HiveInitializer {
  static Future<void> init() async {
    // Application-support dir, not Documents — on Windows, Documents is
    // commonly OneDrive-synced, and OneDrive locking Hive's .lock file
    // during sync causes a FileSystemException at startup.
    final dir = await getApplicationSupportDirectory();
    Hive.init(dir.path);
    Hive.registerAdapters();
    await Hive.openBox<UserModel>(HiveBoxNames.users);
  }
}
