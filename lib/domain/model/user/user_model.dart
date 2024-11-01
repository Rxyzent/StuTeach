import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel{
  @HiveType(typeId: 0)
  const factory UserModel({
    @HiveField(0) String? uid,
    @HiveField(1) String? fullName,
    @HiveField(2) String? role,
}) =_UserModel;
factory UserModel.fromJson(Map<String, dynamic> json) =>
_$UserModelFromJson(json);
}