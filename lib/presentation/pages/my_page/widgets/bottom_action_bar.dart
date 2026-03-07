import 'package:flutter/material.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';
import 'package:hey_mate_app/presentation/components/primary_button.dart';

class BottomActionBar extends StatelessWidget {
  const BottomActionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.transparent, AppColors.white],
          stops: [0, 0.3],
        ),
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 10),
          child: Row(
            children: [
              Expanded(
                flex: 10,
                child: SizedBox(
                  height: 56,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: AppColors.mutedBorder),
                      backgroundColor: AppColors.mutedSurface,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    icon: const Icon(
                      Icons.chat_bubble_outline,
                      color: AppColors.textPrimary,
                    ),
                    label: const Text(
                      'メッセージ',
                      style: TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                flex: 23,
                child: PrimaryButton(
                  label: 'パートナー申請',
                  onPressed: () {},
                  height: 56,
                  borderRadius: 18,
                  backgroundColor: AppColors.primary,
                  foregroundColor: AppColors.white,
                  icon: Icons.handshake_outlined,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
