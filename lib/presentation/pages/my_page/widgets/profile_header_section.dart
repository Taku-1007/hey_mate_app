import 'package:flutter/material.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';
import 'package:hey_mate_app/gen/assets.gen.dart';

class ProfileHeaderSection extends StatelessWidget {
  const ProfileHeaderSection({
    super.key,
    required this.name,
    required this.age,
    required this.location,
  });

  final String name;
  final int age;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 124,
          height: 124,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.white, width: 4),
            boxShadow: const [
              BoxShadow(
                color: AppColors.overlayShadow,
                blurRadius: 20,
                offset: Offset(0, 8),
              ),
            ],
          ),
          child: ClipOval(
            child: Assets.images.takuSanto.image(fit: BoxFit.cover),
          ),
        ),
        Transform.translate(
          offset: const Offset(0, -8),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(999),
              boxShadow: const [
                BoxShadow(
                  color: AppColors.overlayShadow,
                  blurRadius: 12,
                  offset: Offset(0, 6),
                ),
              ],
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.verified_outlined, color: AppColors.white, size: 16),
                SizedBox(width: 6),
                Text(
                  '本人確認済',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(
          '$name ($age歳)',
          style: const TextStyle(
            color: AppColors.textPrimary,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.place_outlined,
              color: AppColors.textSecondary,
              size: 18,
            ),
            const SizedBox(width: 4),
            Flexible(
              child: Text(
                location,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: AppColors.textSecondary,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
