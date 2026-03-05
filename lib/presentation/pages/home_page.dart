import 'package:flutter/material.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';
import 'package:hey_mate_app/gen/assets.gen.dart';
import 'package:hey_mate_app/presentation/components/app_bottom_nav.dart';
import 'package:hey_mate_app/presentation/components/matching_action_buttons.dart';
import 'package:hey_mate_app/presentation/components/partner_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final data = PartnerCardData(
      photo: Assets.images.takuSanto,
      statusLabel: 'パートナー募集中',
      trustScore: 98,
      achievements: 24,
      focusParts: const ['胸（大胸筋）', '三頭筋'],
      scheduleNote: '今週のトレ予定あり',
      todayNote: '今日やりたい部位',
      name: '山東　拓',
      age: 23,
      lastLogin: 'ログイン 1時間前',
      gym: 'ゴールドジム 心斎橋',
      benchPress: 'BP 110kg',
      frequency: '週4〜5回',
      motivation: '真剣に追い込みたい',
    );

    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Positioned.fill(child: data.photo.image(fit: BoxFit.cover)),
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withValues(alpha: 0.18),
                      Colors.black.withValues(alpha: 0.72),
                    ],
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Hey Mate!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        PillChip(
                          label: data.statusLabel,
                          bgColor: AppColors.primaryLight,
                          fgColor: Colors.white,
                          icon: Icons.circle,
                          iconSize: 10,
                        ),
                        PillChip(
                          label: '信頼スコア ${data.trustScore}',
                          bgColor: Colors.white.withValues(alpha: 0.18),
                          fgColor: Colors.white,
                          borderColor: Colors.white24,
                          icon: Icons.verified_user,
                          iconColor: Colors.greenAccent,
                        ),
                        PillChip(
                          label: '実績 ${data.achievements}回',
                          bgColor: Colors.white.withValues(alpha: 0.18),
                          fgColor: Colors.white,
                          borderColor: Colors.white24,
                          icon: Icons.emoji_events,
                          iconColor: Colors.white,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PillChip(
                          label: data.scheduleNote,
                          bgColor: AppColors.primaryLight,
                          fgColor: Colors.white,
                          icon: Icons.schedule,
                          iconColor: Colors.white,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '${data.name} ${data.age}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            const Icon(
                              Icons.place,
                              size: 16,
                              color: Colors.white70,
                            ),
                            const SizedBox(width: 6),
                            Flexible(
                              child: Text(
                                data.gym,
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Wrap(
                          spacing: 10,
                          runSpacing: 8,
                          children: [
                            PillChip(
                              label: data.benchPress,
                              bgColor: Colors.white.withValues(alpha: 0.16),
                              fgColor: Colors.white,
                              borderColor: Colors.white24,
                              icon: Icons.fitness_center,
                              iconColor: Colors.white,
                            ),
                            PillChip(
                              label: data.frequency,
                              bgColor: Colors.white.withValues(alpha: 0.16),
                              fgColor: Colors.white,
                              borderColor: Colors.white24,
                              icon: Icons.calendar_today,
                              iconColor: Colors.white,
                            ),
                          ],
                        ),
                        const SizedBox(height: 14),
                        Text(
                          data.todayNote,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Wrap(
                          spacing: 10,
                          runSpacing: 8,
                          children:
                              data.focusParts
                                  .map(
                                    (part) => PillChip(
                                      label: part,
                                      bgColor: Colors.white,
                                      fgColor: AppColors.primary,
                                      borderColor: Colors.transparent,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 8,
                                      ),
                                    ),
                                  )
                                  .toList(),
                        ),
                        const SizedBox(height: 20),
                        MatchingActionButtons(
                          ghostBackgroundColor: Colors.transparent,
                          ghostBorderColor: Colors.white70,
                          ghostIconColor: Colors.white,
                          ghostLabelColor: Colors.white,
                          primaryBackgroundColor: AppColors.primary,
                          primaryForegroundColor: Colors.white,
                          primaryShadowColor: Colors.black26,
                          primarySubLabel: 'JOIN SESSION',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: AppBottomNav(
          currentIndex: 0,
          onTap: (_) {},
          backgroundColor: AppColors.white,
          selectedColor: AppColors.primary,
          unselectedColor: AppColors.primary,
        ),
      ),
    );
  }
}
