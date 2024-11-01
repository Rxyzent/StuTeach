import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stu_teach/common/extensions/text_extensions.dart';
import 'package:stu_teach/common/extensions/theme_extensions.dart';
import 'package:stu_teach/common/widgets/common_button.dart';
import 'package:stu_teach/domain/model/task/task_model.dart';
import 'package:stu_teach/presentation/home/dashboard/cubit/home_cubit.dart';

class SolutionInfo extends StatelessWidget {
  const SolutionInfo({
    super.key,
    required this.solution,
    required this.homeContext,
  });

  final Solution solution;
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
            title: 'Student:',
            value: solution.fullName,
          ),
          const SizedBox(height: 8),
          _SingleRow(
            title: 'Submitted time:',
            value: formatter.format(solution.submittedAt!),
          ),
          const SizedBox(height: 8),
          CommonButton.elevated(
            text: 'Download solution',
            onPressed: () {
              homeContext.read<HomeCubit>().downloadTask(
                    solution.fileUrl!,
                    solution.fileName!,
                  );
              context.router.maybePop();
            },
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
