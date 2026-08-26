import 'package:matrix_application/core/utils/result.dart';
import 'package:matrix_application/features/user/domain/entities/user.dart';

abstract class UserRepository {
  Future<Result<User?>> lookupByPhone(String phoneNumber);

  Future<Result<User>> register({
    required String phoneNumber,
    required String username,
    required int matrixNumber,
  });

  Future<Result<List<User>>> getAllUsers();

  Future<Result<User>> submitMatrix({
    required String phoneNumber,
    required Map<String, int> committedColors,
  });
}
