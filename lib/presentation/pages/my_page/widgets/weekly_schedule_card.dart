import 'package:flutter/material.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';
import 'package:hey_mate_app/presentation/pages/my_page/my_page_models.dart';

class WeeklyScheduleCard extends StatelessWidget {
  const WeeklyScheduleCard({
    super.key,
    required this.schedule,
    required this.note,
  });

  final List<ScheduleDayData> schedule;
  final String note;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(14, 18, 14, 18),
      decoration: BoxDecoration(
        color: AppColors.mutedSurface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.subtleBorder),
      ),
      child: Column(
        children: [
          Row(
            children: [
              for (var i = 0; i < schedule.length; i++) ...[
                Expanded(child: _ScheduleDayChip(item: schedule[i])),
                if (i != schedule.length - 1) const SizedBox(width: 8),
              ],
            ],
          ),
          const SizedBox(height: 16),
          Text(
            note,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.textSecondary,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class _ScheduleDayChip extends StatelessWidget {
  const _ScheduleDayChip({required this.item});

  final ScheduleDayData item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          item.dayLabel,
          style: const TextStyle(
            color: AppColors.fadedText,
            fontSize: 11,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 11),
          decoration: BoxDecoration(
            color:
                item.isActive ? AppColors.primary : AppColors.disabledSurface,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            item.statusLabel,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: item.isActive ? AppColors.white : AppColors.textSecondary,
              fontSize: 13,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
