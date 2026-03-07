import 'package:flutter/material.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';
import 'package:hey_mate_app/presentation/pages/my_page/my_page_models.dart';

class PersonalRecordCard extends StatelessWidget {
  const PersonalRecordCard({super.key, required this.lifts});

  final List<LiftDisplayData> lifts;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 18),
      decoration: BoxDecoration(
        color: AppColors.darkNavySurface,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: AppColors.shadow,
            blurRadius: 14,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          const Row(
            children: [
              Expanded(
                child: Text(
                  'MAX PR (BIG 3)',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.4,
                  ),
                ),
              ),
              Icon(Icons.insert_chart_outlined, color: AppColors.primary),
            ],
          ),
          const SizedBox(height: 18),
          for (var i = 0; i < lifts.length; i++) ...[
            _LiftBarRow(item: lifts[i]),
            if (i != lifts.length - 1) const SizedBox(height: 16),
          ],
        ],
      ),
    );
  }
}

class _LiftBarRow extends StatelessWidget {
  const _LiftBarRow({required this.item});

  final LiftDisplayData item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                item.label,
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text(
              '${item.valueKg} kg',
              style: const TextStyle(
                color: AppColors.primary,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(999),
          child: LinearProgressIndicator(
            minHeight: 8,
            value: item.valueKg / item.maxKg,
            backgroundColor: AppColors.darkNavyTrack,
            valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primary),
          ),
        ),
      ],
    );
  }
}
