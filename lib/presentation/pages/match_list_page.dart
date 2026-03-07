import 'package:flutter/material.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';
import 'package:hey_mate_app/presentation/components/primary_app_bar.dart';
import 'package:hey_mate_app/presentation/pages/match_list/match_list_mock_data.dart';
import 'package:hey_mate_app/presentation/pages/match_list/widgets/conversation_row.dart';
import 'package:hey_mate_app/presentation/pages/match_list/widgets/header_action_button.dart';
import 'package:hey_mate_app/presentation/pages/match_list/widgets/recent_match_card.dart';
import 'package:hey_mate_app/presentation/pages/match_list/widgets/section_title.dart';

class MatchListPage extends StatelessWidget {
  const MatchListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: PrimaryAppBar(
          title: 'メッセージ',
          showBackButton: false,
          backgroundColor: AppColors.white,
          foregroundColor: AppColors.textPrimary,
          actions: [
            HeaderActionButton(icon: Icons.search, onPressed: () {}),
            const SizedBox(width: 12),
            HeaderActionButton(icon: Icons.tune, onPressed: () {}),
            const SizedBox(width: 16),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionTitle(
                title: '新しいマッチ',
                trailing: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Text(
                    '5 NEW',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 22),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var i = 0; i < recentMatches.length; i++) ...[
                      RecentMatchCard(item: recentMatches[i]),
                      if (i != recentMatches.length - 1)
                        const SizedBox(width: 18),
                    ],
                  ],
                ),
              ),
              const SizedBox(height: 56),
              const SectionTitle(title: 'メッセージ'),
              const SizedBox(height: 18),
              for (var i = 0; i < conversations.length; i++) ...[
                ConversationRow(item: conversations[i]),
                if (i != conversations.length - 1)
                  const Divider(
                    height: 1,
                    thickness: 1,
                    color: AppColors.border,
                  ),
              ],
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
