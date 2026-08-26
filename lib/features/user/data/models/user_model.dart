import 'package:hive_ce/hive_ce.dart';
import 'package:matrix_application/core/storage/hive_type_ids.dart';
import 'package:matrix_application/features/user/domain/entities/user.dart';

part 'user_model.g.dart';

@HiveType(typeId: HiveTypeIds.user)
class UserModel {
  UserModel({
    required this.phoneNumber,
    required this.username,
    required this.matrixNumber,
    required this.isSubmitted,
    required this.createdAt,
    this.submittedAt,
    this.committedColors,
  });

  @HiveField(0)
  final String phoneNumber;

  @HiveField(1)
  final String username;

  @HiveField(2)
  final int matrixNumber;

  @HiveField(3)
  final bool isSubmitted;

  @HiveField(4)
  final DateTime createdAt;

  @HiveField(5)
  final DateTime? submittedAt;

  @HiveField(6)
  final Map<String, int>? committedColors;

  factory UserModel.fromEntity(User user) => UserModel(
    phoneNumber: user.phoneNumber,
    username: user.username,
    matrixNumber: user.matrixNumber,
    isSubmitted: user.isSubmitted,
    createdAt: user.createdAt,
    submittedAt: user.submittedAt,
    committedColors: user.committedColors,
  );

  User toEntity() => User(
    phoneNumber: phoneNumber,
    username: username,
    matrixNumber: matrixNumber,
    isSubmitted: isSubmitted,
    createdAt: createdAt,
    submittedAt: submittedAt,
    committedColors: committedColors,
  );

  UserModel copyWith({
    bool? isSubmitted,
    DateTime? submittedAt,
    Map<String, int>? committedColors,
  }) => UserModel(
    phoneNumber: phoneNumber,
    username: username,
    matrixNumber: matrixNumber,
    isSubmitted: isSubmitted ?? this.isSubmitted,
    createdAt: createdAt,
    submittedAt: submittedAt ?? this.submittedAt,
    committedColors: committedColors ?? this.committedColors,
  );
}
