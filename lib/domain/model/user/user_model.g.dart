// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelImplAdapter extends TypeAdapter<_$UserModelImpl> {
  @override
  final int typeId = 0;

  @override
  _$UserModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$UserModelImpl(
      uid: fields[0] as String?,
      fullName: fields[1] as String?,
      role: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$UserModelImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.uid)
      ..writeByte(1)
      ..write(obj.fullName)
      ..writeByte(2)
      ..write(obj.role);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      uid: json['uid'] as String?,
      fullName: json['fullName'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'fullName': instance.fullName,
      'role': instance.role,
    };
