import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stu_teach/common/base/base_page.dart';
import 'package:stu_teach/common/extensions/text_extensions.dart';
import 'package:stu_teach/common/extensions/theme_extensions.dart';
import 'package:stu_teach/common/widgets/common_button.dart';
import 'package:stu_teach/common/widgets/common_text_filed.dart';
import 'package:stu_teach/domain/model/task/task_model.dart';
import 'package:stu_teach/presentation/home/new_task/cubit/new_task_cubit.dart';
import 'package:stu_teach/presentation/home/new_task/cubit/new_task_state.dart';

@RoutePage()
class NewTaskPage
    extends BasePage<NewTaskCubit, NewTaskBuildable, NewTaskListenable> {
  const NewTaskPage(this.taskId, this.task, {super.key});

  final String? taskId;
  final TaskModel? task;

  @override
  void listener(BuildContext context, NewTaskListenable state) {
    super.listener(context, state);
    switch (state.effect) {
      case NewTaskEffects.home:
        context.router.maybePop();
        break;
    }
  }

  @override
  void init(BuildContext context) {
    super.init(context);
    context.read<NewTaskCubit>().init(taskId, task);
  }

  @override
  Widget builder(BuildContext context, NewTaskBuildable state) {
    var title = '';
    var buttonText = '';
    var buttonState = false;
    DateTime? deadline;
    if (taskId == null && task == null) {
      title = 'New task';
      buttonText = 'Create new task';
      buttonState = state.file != null && state.deadline != null;
      deadline = state.deadline;
    } else if (task != null) {
      title = 'Edit task';
      buttonText = 'Save changes';
      buttonState = state.file != null || state.deadline != null;
      deadline = state.deadline ?? task!.deadline;
    } else if (taskId != null) {
      title = 'Upload solution';
      buttonText = 'Upload';
      buttonState = state.file != null;
    }
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: context.colors.primary,
          title: title.w(500).c(context.colors.white),
          leading: GestureDetector(
              onTap: context.router.maybePop,
              child: const Icon(Icons.arrow_back_ios)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomScrollView(
            physics: const ClampingScrollPhysics(),
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                fillOverscroll: true,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    'File *'.w(500).s(18).c(state.file == null && task == null
                        ? context.colors.error
                        : context.colors.black),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => _pickFile(context),
                          child: Card(
                            margin: EdgeInsets.zero,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                side: state.file == null && task == null
                                    ? BorderSide(
                                        color: context.colors.error,
                                        width: 1,
                                      )
                                    : BorderSide.none,
                                borderRadius: BorderRadius.circular(8)),
                            color: context.colors.headline,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  state.file == null && task == null
                                      ? Icons.add
                                      : Icons.refresh_outlined,
                                  color: context.colors.label,
                                  size: 40,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Icon(
                          Icons.file_copy_outlined,
                          color: context.colors.primary,
                          size: 40,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: (state.file != null
                                  ? state.file!.name
                                  : task != null
                                      ? task!.fileName!
                                      : 'Empty')
                              .w(500)
                              .s(16)
                              .c(context.colors.black)
                              .copyWith(overflow: TextOverflow.ellipsis),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    'Name'.w(500).s(18).c(context.colors.black),
                    const SizedBox(height: 8),
                    CommonTextField(
                      hint: state.file?.name ?? 'Task name',
                      onChanged: context.read<NewTaskCubit>().changeTaskName,
                    ),
                    const SizedBox(height: 16),
                    'Description'.w(500).s(18).c(context.colors.black),
                    const SizedBox(height: 8),
                    CommonTextField(
                      hint: 'Description',
                      onChanged: context.read<NewTaskCubit>().changeDescription,
                      maxLines: 3,
                    ),
                    const SizedBox(height: 16),
                    if (taskId == null) ...[
                      'Deadline *'.w(500).s(18).c(
                          state.deadline == null && task == null
                              ? context.colors.error
                              : context.colors.black),
                      const SizedBox(height: 8),
                      GestureDetector(
                        onTap: () {
                          showCupertinoModalPopup(
                            context: context,
                            builder: (sheetContext) {
                              return CupertinoActionSheet(
                                actions: [
                                  SizedBox(
                                    height: 255,
                                    child: CupertinoDatePicker(
                                      dateOrder: DatePickerDateOrder.dmy,
                                      mode: CupertinoDatePickerMode.date,
                                      backgroundColor: Colors.transparent,
                                      initialDateTime: state.deadline,
                                      onDateTimeChanged: (DateTime date) {
                                        context
                                            .read<NewTaskCubit>()
                                            .changeDeadline(date);
                                      },
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: CommonTextField(
                          enabled: false,
                          hint: 'Choose deadline',
                          keyboardType: TextInputType.number,
                          mask: '##.##.####',
                          errorText: state.deadline == null && task == null
                              ? 'This field cannot be empty'
                              : null,
                          controller: TextEditingController(
                            text: deadline != null
                                ? DateFormat('dd.MM.yyyy').format(deadline)
                                : null,
                          ),
                        ),
                      ),
                    ],
                    const Spacer(),
                    CommonButton.elevated(
                      text: buttonText,
                      loading: state.loading,
                      enabled: buttonState,
                      onPressed: () {
                        if (taskId == null && task == null) {
                          context.read<NewTaskCubit>().createNewTask();
                        } else if (taskId != null) {
                          context.read<NewTaskCubit>().submitSolution();
                        } else if (task != null) {
                          context.read<NewTaskCubit>().editTask();
                        }
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _pickFile(BuildContext context) async {
  final result = await FilePicker.platform.pickFiles();
  if (result != null) {
    final file = result.files.first;
    if (!context.mounted) return;
    context.read<NewTaskCubit>().saveFile(file);
  }
}
