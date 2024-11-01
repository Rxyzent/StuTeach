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

class TaskInfo extends StatelessWidget {
  const TaskInfo({
    super.key,
    required this.task,
    this.role,
    required this.homeContext,
  });

  final TaskModel task;
  final String? role;
  final BuildContext homeContext;

  @override
  Widget build(BuildContext context) {
    final formatter = DateFormat('MM.dd.yyyy HH:mm');
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.colors.onPrimary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          _SingleRow(
            title: 'Name:',
            value: task.fileName,
          ),
          const SizedBox(height: 8),
          _SingleRow(
            title: 'Deadline:',
            value: formatter.format(task.deadline!),
          ),
          const SizedBox(height: 8),
          RichText(
            text: TextSpan(
              style: TextStyle(
                color: context.colors.black,
                fontSize: 18,
              ),
              children: [
                const TextSpan(
                    text: 'Description: ',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                TextSpan(text: task.description ?? ''),
              ],
            ),
          ),
          const SizedBox(height: 8),
          role == 'Teacher'
              ? Row(
                  children: [
                    Expanded(
                      child: CommonButton.elevated(
                        text: 'Delete',
                        backgroundColor: context.colors.error,
                        onPressed: () {
                          homeContext
                              .read<HomeCubit>()
                              .deleteTask(task.taskId!);
                          context.router.maybePop();
                        },
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: CommonButton.elevated(
                        text: 'Edit',
                        onPressed: () {
                          context.router.maybePop();
                          context.router
                              .push(NewTaskRoute(taskId: null, task: task));
                        },
                      ),
                    )
                  ],
                )
              : Row(
                  children: [
                    Expanded(
                      child: CommonButton.elevated(
                        text: 'Download task',
                        onPressed: () =>
                            homeContext.read<HomeCubit>().downloadTask(
                                  task.fileUrl!,
                                  task.fileName!,
                                ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: CommonButton.elevated(
                        text: 'Upload solution',
                        onPressed: () {
                          context.router.maybePop();
                          context.router.push(
                              NewTaskRoute(taskId: task.taskId, task: null));
                        },
                      ),
                    )
                  ],
                ),
        ],
      ),
    );
  }
}

class _SingleRow extends StatelessWidget {
  const _SingleRow({required this.title, this.value});

  final String title;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        title.w(500).s(18).c(context.colors.black),
        const SizedBox(width: 8),
        Expanded(
          child: (value ?? '')
              .w(400)
              .s(18)
              .c(context.colors.black)
              .copyWith(overflow: TextOverflow.ellipsis),
        ),
      ],
    );
  }
}
