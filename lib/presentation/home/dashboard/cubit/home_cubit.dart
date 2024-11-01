import 'package:injectable/injectable.dart';
import 'package:stu_teach/common/base/base_cubit.dart';
import 'package:stu_teach/domain/model/task/task_model.dart';
import 'package:stu_teach/domain/repo/home_repo.dart';
import 'package:stu_teach/presentation/home/dashboard/cubit/home_state.dart';

@injectable
class HomeCubit extends BaseCubit<HomeBuildable, HomeListenable> {
  HomeCubit(this._repo) : super(const HomeBuildable()) {
    refresh();
    _getUser();
  }

  final HomeRepo _repo;

  Future<void> refresh() async {
    await _getTasks();
    final List<TaskModel> newTasks = [];
    final List<TaskModel> completedTasks = [];
    for (var task in buildable.allTasks!) {
      if (task.solutions != null) {
        completedTasks.add(task);
      } else {
        newTasks.add(task);
      }
    }
    build((buildable) => buildable.copyWith(
          newTasks: newTasks,
          completedTasks: completedTasks,
          loading: false,
        ));
  }

  Future<void> _getTasks() => callable(
        future: _repo.getTasks(),
        buildOnStart: () => buildable.copyWith(loading: true),
        buildOnData: (data) => buildable.copyWith(allTasks: data),
        onErrorData: (e) => display.error(e),
      );

  Future<void> deleteTask(String taskId) => callable(
        future: _repo.deleteTask(taskId),
        onErrorData: (e) => display.error(e),
        buildOnDone: () {
          refresh();
          return buildable.copyWith();
        },
      );

  void downloadTask(String url, String fileName) => callable(
        future: _repo.downloadFile(url, fileName),
        onErrorData: (e) => display.error(e),
        onData: (data) => display.info('Download successfully'),
      );

  void _getUser() {
    final user = _repo.getUser();
    build((buildable) => buildable.copyWith(user: user));
  }
}
