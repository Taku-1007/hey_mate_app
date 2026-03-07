import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';
import 'package:hey_mate_app/presentation/components/primary_app_bar.dart';
import 'package:hey_mate_app/presentation/pages/my_page/my_page_mock_data.dart';
import 'package:hey_mate_app/presentation/pages/my_page/widgets/personal_record_card.dart';
import 'package:hey_mate_app/presentation/pages/my_page/widgets/profile_header_section.dart';
import 'package:hey_mate_app/presentation/pages/my_page/widgets/status_cards_section.dart';
import 'package:hey_mate_app/presentation/pages/my_page/widgets/trust_score_card.dart';
import 'package:hey_mate_app/presentation/pages/my_page/widgets/weekly_schedule_card.dart';

class ProfileDetailPage extends StatelessWidget {
  const ProfileDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: PrimaryAppBar(
        title: 'プロフィール',
        centerTitle: true,
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.textPrimary,
        onBackPressed: () {
          if (context.canPop()) {
            context.pop();
          }
        },
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share_outlined,
              color: AppColors.primary,
              size: 22,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 28),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            ProfileHeaderSection(
              name: myPageProfileName,
              age: myPageProfileAge,
              location: myPageProfileLocation,
            ),
            SizedBox(height: 28),
            TrustScoreCard(score: myPageTrustScore),
            SizedBox(height: 28),
            Text(
              '本気度ステータス',
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 14),
            StatusCardsSection(
              trainingHistory: myPageTrainingHistory,
              specialty: myPageSpecialty,
            ),
            SizedBox(height: 28),
            PersonalRecordCard(lifts: myPageLifts),
            SizedBox(height: 26),
            Text(
              '週間のスケジュール',
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 14),
            WeeklyScheduleCard(
              schedule: myPageSchedule,
              note: myPageScheduleNote,
            ),
          ],
        ),
      ),
    );
  }
}
