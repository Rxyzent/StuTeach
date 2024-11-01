import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stu_teach/common/extensions/text_extensions.dart';
import 'package:stu_teach/common/extensions/theme_extensions.dart';
import 'package:stu_teach/common/router/app_router.dart';
import 'package:stu_teach/common/widgets/common_button.dart';
import 'package:stu_teach/domain/model/task/task_model.dart';
import 'package:stu_teach/presentation/home/dashboard/cubit/home_cubit.dart';
import 'package:stu_teach/presentation/home/dashboard/widgets/task_info.dart';

class Tasks extends StatelessWidget {
  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    final formatter = DateFormat('MM.dd.yyyy HH:mm');
    final state = context.watch<HomeCubit>().buildable;
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 30),
            SizedBox(
              height: 16,
              child: VerticalDivider(
                color: context.colors.label,
                width: 2,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              flex: 3,
              child: 'Name'
                  .w(500)
                  .c(context.colors.black)
                  .s(14)
                  .copyWith(overflow: TextOverflow.ellipsis),
            ),
            const SizedBox(width: 8),
            SizedBox(
              height: 16,
              child: VerticalDivider(
                color: context.colors.label,
                width: 2,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              flex: 2,
              child: 'Deadline'
                  .w(500)
                  .c(context.colors.black)
                  .s(14)
                  .copyWith(overflow: TextOverflow.ellipsis),
            ),
          ],
        ),
        Divider(
          height: 2,
          color: context.colors.label,
        ),
        const SizedBox(height: 16),
        Expanded(
          child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                final task = state.newTasks![index];
                return GestureDetector(
                  onTap: () => _showTaskInfo(context, task, state.user!.role),
                  child: Card(
                    elevation: 0,
                    margin: EdgeInsets.zero,
                    color: context.colors.headline,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: Row(
                        children: [
                          Icon(
                            Icons.file_copy_outlined,
                            color: context.colors.primary,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            flex: 3,
                            child: task.fileName!
                                .w(500)
                                .c(context.colors.black)
                                .copyWith(overflow: TextOverflow.ellipsis),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            flex: 2,
                            child: formatter.format(task.deadline!)
                                .w(500)
                                .c(context.colors.black)
                                .copyWith(overflow: TextOverflow.ellipsis),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 8);
              },
              itemCount: state.newTasks!.length),
        ),
        state.user!.role! == 'Teacher'
            ? CommonButton.elevated(
                text: 'Add task',
                onPressed: () => context.router.push( NewTaskRoute(taskId: null,task: null)),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}

void _showTaskInfo(BuildContext context, TaskModel task, String? role) {
  showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      context: context,
      builder: (BuildContext ctx) {
        return TaskInfo(
          task: task,
          role: role,
          homeContext: context,
        );
      });
}
