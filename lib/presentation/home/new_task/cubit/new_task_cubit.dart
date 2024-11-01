import 'package:file_picker/file_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:stu_teach/common/base/base_cubit.dart';
import 'package:stu_teach/domain/model/task/task_model.dart';
import 'package:stu_teach/domain/repo/home_repo.dart';
import 'package:stu_teach/presentation/home/new_task/cubit/new_task_state.dart';

@injectable
class NewTaskCubit extends BaseCubit<NewTaskBuildable, NewTaskListenable> {
  NewTaskCubit(this._repo) : super(const NewTaskBuildable());

  final HomeRepo _repo;

  init(String? taskId, TaskModel? task) => build(
        (buildable) => buildable.copyWith(
          taskId: taskId,
          task: task,
          taskName: task?.fileName,
        ),
      );

  void changeDeadline(DateTime date) {
    build((buildable) => buildable.copyWith(deadline: date));
  }

  void changeTaskName(String taskName) {
    build((buildable) => buildable.copyWith(taskName: taskName));
  }

  void changeDescription(String description) {
    build((buildable) => buildable.copyWith(description: description));
  }

  void saveFile(PlatformFile file) {
    build((buildable) => buildable.copyWith(file: file));
  }

  Future<void> submitSolution() => callable(
        future: _repo.submitSolution(
          buildable.taskId!,
          buildable.file!,
          buildable.taskName ?? buildable.file!.name,
        ),
        buildOnStart: () => buildable.copyWith(loading: true),
        onErrorData: (e) => display.error(e),
        buildOnDone: () => buildable.copyWith(loading: false),
        invokeOnDone: () =>
            const NewTaskListenable(effect: NewTaskEffects.home),
      );

  Future<void> editTask() => callable(
        future: _repo.updateTask(
          buildable.task!.taskId!,
          buildable.taskName ?? buildable.task!.taskName,
          buildable.file?.name ?? buildable.task!.fileName!,
          buildable.file?.path,
          buildable.task!.fileUrl!,
          buildable.deadline ?? buildable.task!.deadline!,
          buildable.description ?? buildable.task!.description,
        ),
        buildOnStart: () => buildable.copyWith(loading: true),
        onErrorData: (e) => display.error(e),
        buildOnDone: () => buildable.copyWith(loading: false),
        invokeOnDone: () =>
            const NewTaskListenable(effect: NewTaskEffects.home),
      );

  Future<void> createNewTask() => callable(
        future: _repo.createNewTask(
          buildable.taskName ?? buildable.file!.name,
          buildable.file!,
          buildable.deadline!,
          buildable.description,
        ),
        buildOnStart: () => buildable.copyWith(loading: true),
        onErrorData: (e) => display.error(e),
        buildOnDone: () => buildable.copyWith(loading: false),
        invokeOnDone: () =>
            const NewTaskListenable(effect: NewTaskEffects.home),
      );
}
