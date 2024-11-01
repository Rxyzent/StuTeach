import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stu_teach/domain/model/task/task_model.dart';

part 'new_task_state.freezed.dart';

@freezed
class NewTaskBuildable with _$NewTaskBuildable {
  const factory NewTaskBuildable({
    @Default(false) bool loading,
    String? taskId,
    TaskModel? task,
    DateTime? deadline,
    String? taskName,
    String? description,
    PlatformFile? file,
}) = _NewTaskBuildable;
}

@freezed
class NewTaskListenable with _$NewTaskListenable {
  const factory NewTaskListenable({
    required NewTaskEffects effect,
}) = _NewTaskListenable;
}

enum NewTaskEffects {home}