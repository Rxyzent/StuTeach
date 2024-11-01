import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stu_teach/common/extensions/text_extensions.dart';
import 'package:stu_teach/common/extensions/theme_extensions.dart';
import 'package:stu_teach/domain/model/task/task_model.dart';
import 'package:stu_teach/presentation/home/dashboard/cubit/home_cubit.dart';
import 'package:stu_teach/presentation/home/dashboard/widgets/solution_info.dart';

class Solutions extends StatefulWidget {
  const Solutions({super.key});

  @override
  State<Solutions> createState() => _SolutionsState();
}

class _SolutionsState extends State<Solutions> {
  int? expandedIndex;

  void toggleSolutions(int index) {
    setState(() {
      if (expandedIndex == index) {
        expandedIndex = null;
      } else {
        expandedIndex = index;
      }
    });
  }

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
                final task = state.completedTasks![index];
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () => state.user!.role == 'Teacher'
                          ? toggleSolutions(index)
                          : {},
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
                                child: formatter
                                    .format(task.deadline!)
                                    .w(500)
                                    .c(context.colors.black)
                                    .copyWith(overflow: TextOverflow.ellipsis),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    if (expandedIndex == index) ...[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: state.completedTasks![index].solutions!
                              .map((solution) {
                            return GestureDetector(
                              onTap: () => _showSolutionInfo(context, solution),
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
                                        child: solution.fileName!
                                            .w(500)
                                            .c(context.colors.black)
                                            .copyWith(
                                                overflow:
                                                    TextOverflow.ellipsis),
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
                                      Icon(
                                        Icons.person_outline,
                                        color: context.colors.primary,
                                      ),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: solution.fullName!
                                            .toString()
                                            .w(500)
                                            .c(context.colors.black)
                                            .copyWith(
                                                overflow:
                                                    TextOverflow.ellipsis),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 8);
              },
              itemCount: state.completedTasks!.length),
        ),
      ],
    );
  }
}

void _showSolutionInfo(BuildContext context, Solution solution) {
  showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      context: context,
      builder: (BuildContext ctx) {
        return SolutionInfo(
          solution: solution,
          homeContext: context,
        );
      });
}
