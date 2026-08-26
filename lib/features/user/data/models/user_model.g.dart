// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelAdapter extends TypeAdapter<UserModel> {
  @override
  final typeId = 0;

  @override
  UserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserModel(
      phoneNumber: fields[0] as String,
      username: fields[1] as String,
      matrixNumber: (fields[2] as num).toInt(),
      isSubmitted: fields[3] as bool,
      createdAt: fields[4] as DateTime,
      submittedAt: fields[5] as DateTime?,
      committedColors: (fields[6] as Map?)?.cast<String, int>(),
    );
  }

  @override
  void write(BinaryWriter writer, UserModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.phoneNumber)
      ..writeByte(1)
      ..write(obj.username)
      ..writeByte(2)
      ..write(obj.matrixNumber)
      ..writeByte(3)
      ..write(obj.isSubmitted)
      ..writeByte(4)
      ..write(obj.createdAt)
      ..writeByte(5)
      ..write(obj.submittedAt)
      ..writeByte(6)
      ..write(obj.committedColors);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
