// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskModelImpl _$$TaskModelImplFromJson(Map<String, dynamic> json) =>
    _$TaskModelImpl(
      teacherId: json['teacherId'] as String?,
      taskId: json['taskId'] as String?,
      fileName: json['fileName'] as String?,
      taskName: json['taskName'] as String?,
      fileUrl: json['fileUrl'] as String?,
      deadline: _deadlineFromJson(json['deadline'] as Timestamp),
      description: json['description'] as String?,
      solutions: (json['solutions'] as List<dynamic>?)
          ?.map((e) => Solution.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TaskModelImplToJson(_$TaskModelImpl instance) =>
    <String, dynamic>{
      'teacherId': instance.teacherId,
      'taskId': instance.taskId,
      'fileName': instance.fileName,
      'taskName': instance.taskName,
      'fileUrl': instance.fileUrl,
      'deadline': instance.deadline?.toIso8601String(),
      'description': instance.description,
      'solutions': instance.solutions,
    };

_$SolutionImpl _$$SolutionImplFromJson(Map<String, dynamic> json) =>
    _$SolutionImpl(
      fullName: json['fullName'] as String?,
      fileName: json['fileName'] as String?,
      fileUrl: json['fileUrl'] as String?,
      submittedAt: _deadlineFromJson(json['submittedAt'] as Timestamp),
    );

Map<String, dynamic> _$$SolutionImplToJson(_$SolutionImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'fileName': instance.fileName,
      'fileUrl': instance.fileUrl,
      'submittedAt': instance.submittedAt?.toIso8601String(),
    };
