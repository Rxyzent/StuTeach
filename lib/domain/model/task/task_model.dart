// ignore_for_file: invalid_annotation_target
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_model.freezed.dart';

part 'task_model.g.dart';

List<TaskModel> tasksFromJson(dynamic json) =>
    List<TaskModel>.from(json.map((x) => TaskModel.fromJson(x)));

@freezed
class TaskModel with _$TaskModel {
  factory TaskModel({
    String? teacherId,
    String? taskId,
    String? fileName,
    String? taskName,
    String? fileUrl,
    @JsonKey(fromJson: _deadlineFromJson) DateTime? deadline,
    String? description,
    List<Solution>? solutions,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}

List<Solution> solutionsFromJson(dynamic json) =>
    List<Solution>.from(json.map((x) => Solution.fromJson(x)));
@freezed
class Solution with _$Solution{
  factory Solution({
    String? fullName,
    String? fileName,
    String? fileUrl,
    @JsonKey(fromJson: _deadlineFromJson) DateTime? submittedAt,
}) = _Solution;
factory Solution.fromJson(Map<String, dynamic> json) =>
_$SolutionFromJson(json);
}

DateTime _deadlineFromJson(Timestamp deadline) =>
    DateTime.fromMicrosecondsSinceEpoch(deadline.microsecondsSinceEpoch);
