import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stu_teach/domain/model/task/task_model.dart';
import 'package:stu_teach/domain/model/user/user_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeBuildable with _$HomeBuildable {
  const factory HomeBuildable({
    @Default(true) bool loading,
    @Default(false) bool error,
    List<TaskModel>? allTasks,
    List<TaskModel>? newTasks,
    List<TaskModel>? completedTasks,
    UserModel? user,
}) = _HomeBuildable;
}

@freezed
class HomeListenable with _$HomeListenable {
  const factory HomeListenable() = _HomeListenable;
}