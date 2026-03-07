import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hey_mate_app/core/theme/app_colors.dart';
import 'package:hey_mate_app/gen/assets.gen.dart';
import 'package:hey_mate_app/presentation/components/app_bottom_nav.dart';
import 'package:hey_mate_app/presentation/routes/app_router_name.dart';

enum ScoreBadgeTone { success, info, warning }

class MatchListPage extends StatelessWidget {
  const MatchListPage({super.key});

  static final List<_RecentMatchItem> _recentMatches = [
    _RecentMatchItem(
      name: 'Yuki',
      avatar: Assets.images.takuSanto,
      fallbackInitial: 'Y',
      hasHighlightRing: true,
      isOnline: true,
    ),
    _RecentMatchItem(
      name: 'Ken',
      avatar: null,
      fallbackInitial: 'K',
      hasHighlightRing: true,
      isOnline: false,
    ),
    _RecentMatchItem(
      name: 'Sara',
      avatar: Assets.images.twoWomenHighFive,
      fallbackInitial: 'S',
      hasHighlightRing: false,
      isOnline: false,
    ),
    _RecentMatchItem(
      name: 'Miki',
      avatar: null,
      fallbackInitial: 'M',
      hasHighlightRing: true,
      isOnline: false,
    ),
    _RecentMatchItem(
      name: 'Riku',
      avatar: Assets.images.sampleImage,
      fallbackInitial: 'R',
      hasHighlightRing: true,
      isOnline: false,
    ),
  ];

  static final List<_ConversationPreviewItem> _conversations = [
    _ConversationPreviewItem(
      name: 'Yuki',
      avatar: Assets.images.takuSanto,
      fallbackInitial: 'Y',
      previewText: '今日のトレーニングお疲れ様でした...',
      timeLabel: '12:45',
      trustScore: 98,
      unreadCount: 2,
      badgeTone: ScoreBadgeTone.success,
    ),
    _ConversationPreviewItem(
      name: 'Ken',
      avatar: null,
      fallbackInitial: 'K',
      previewText: '明日の朝、一緒にランニングどうですか？',
      timeLabel: '昨日',
      trustScore: 92,
      unreadCount: 0,
      badgeTone: ScoreBadgeTone.info,
    ),
    _ConversationPreviewItem(
      name: 'Sara',
      avatar: Assets.images.twoWomenHighFive,
      fallbackInitial: 'S',
      previewText: 'スタンプを送信しました',
      timeLabel: '火曜日',
      trustScore: 99,
      unreadCount: 0,
      badgeTone: ScoreBadgeTone.success,
    ),
    _ConversationPreviewItem(
      name: 'Hiro',
      avatar: null,
      fallbackInitial: 'H',
      previewText: 'プロテインのおすすめ教えて！',
      timeLabel: '2月10日',
      trustScore: 85,
      unreadCount: 0,
      badgeTone: ScoreBadgeTone.warning,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _PageHeader(),
                const SizedBox(height: 44),
                _SectionTitle(
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
                      for (var i = 0; i < _recentMatches.length; i++) ...[
                        _RecentMatchCard(item: _recentMatches[i]),
                        if (i != _recentMatches.length - 1)
                          const SizedBox(width: 18),
                      ],
                    ],
                  ),
                ),
                const SizedBox(height: 56),
                const _SectionTitle(title: 'メッセージ'),
                const SizedBox(height: 18),
                for (var i = 0; i < _conversations.length; i++) ...[
                  _ConversationRow(item: _conversations[i]),
                  if (i != _conversations.length - 1)
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
        bottomNavigationBar: AppBottomNav(
          currentIndex: 1,
          onTap: (index) {
            switch (index) {
              case 0:
                context.go(AppRouteName.home);
                return;
              case 1:
                return;
              case 2:
                return;
            }
          },
          backgroundColor: AppColors.white,
          selectedColor: AppColors.primary,
          unselectedColor: AppColors.textSecondary,
        ),
      ),
    );
  }
}

class _PageHeader extends StatelessWidget {
  const _PageHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Row(
            children: [
              _BrandMark(),
              SizedBox(width: 14),
              Text(
                'Hey Mate',
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
        _HeaderActionButton(icon: Icons.search, onPressed: () {}),
        const SizedBox(width: 12),
        _HeaderActionButton(icon: Icons.tune, onPressed: () {}),
      ],
    );
  }
}

class _BrandMark extends StatelessWidget {
  const _BrandMark();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 42,
      height: 42,
      child: Stack(
        children: [
          Positioned(
            left: 3,
            top: 9,
            child: Transform.rotate(
              angle: -math.pi / 5,
              child: const _BrandCross(size: 15),
            ),
          ),
          Positioned(
            right: 4,
            bottom: 8,
            child: Transform.rotate(
              angle: -math.pi / 6,
              child: const _BrandCross(size: 12),
            ),
          ),
          const Positioned(left: 11, top: 15, child: _BrandNode()),
          const Positioned(right: 11, bottom: 12, child: _BrandNode()),
        ],
      ),
    );
  }
}

class _BrandCross extends StatelessWidget {
  const _BrandCross({required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        children: [
          Align(
            child: Container(
              width: size,
              height: 3,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(99),
              ),
            ),
          ),
          Align(
            child: Transform.rotate(
              angle: math.pi / 2,
              child: Container(
                width: size,
                height: 3,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(99),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BrandNode extends StatelessWidget {
  const _BrandNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 5,
      height: 5,
      decoration: const BoxDecoration(
        color: AppColors.primary,
        shape: BoxShape.circle,
      ),
    );
  }
}

class _HeaderActionButton extends StatelessWidget {
  const _HeaderActionButton({required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56,
      height: 56,
      child: IconButton(
        onPressed: onPressed,
        style: IconButton.styleFrom(
          backgroundColor: AppColors.white,
          foregroundColor: AppColors.textSecondary,
          side: const BorderSide(color: AppColors.border),
        ),
        icon: Icon(icon, size: 28),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.title, this.trailing});

  final String title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              color: AppColors.textPrimary,
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        if (trailing != null) trailing!,
      ],
    );
  }
}

class _RecentMatchCard extends StatelessWidget {
  const _RecentMatchCard({required this.item});

  final _RecentMatchItem item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 92,
      child: Column(
        children: [
          _RecentMatchAvatar(item: item),
          const SizedBox(height: 14),
          Text(
            item.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: AppColors.textPrimary,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class _RecentMatchAvatar extends StatelessWidget {
  const _RecentMatchAvatar({required this.item});

  final _RecentMatchItem item;

  @override
  Widget build(BuildContext context) {
    final ringColor =
        item.hasHighlightRing ? AppColors.primary : AppColors.border;

    return SizedBox(
      width: 86,
      height: 86,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(shape: BoxShape.circle, color: ringColor),
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.white,
              ),
              child: _AvatarCircle(
                avatar: item.avatar,
                fallbackInitial: item.fallbackInitial,
                size: 76,
              ),
            ),
          ),
          if (item.isOnline)
            Positioned(
              right: 0,
              bottom: 2,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: AppColors.success,
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.white, width: 3),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _ConversationRow extends StatelessWidget {
  const _ConversationRow({required this.item});

  final _ConversationPreviewItem item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 22),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _AvatarCircle(
            avatar: item.avatar,
            fallbackInitial: item.fallbackInitial,
            size: 62,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      item.name,
                      style: const TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 19,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    _TrustScoreBadge(
                      trustScore: item.trustScore,
                      tone: item.badgeTone,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  item.previewText,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color(0xFF8090AE),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          SizedBox(
            width: 52,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  item.timeLabel,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    color: Color(0xFF9AA8C0),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 14),
                if (item.unreadCount > 0)
                  _UnreadCountBadge(count: item.unreadCount),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AvatarCircle extends StatelessWidget {
  const _AvatarCircle({
    required this.avatar,
    required this.fallbackInitial,
    required this.size,
  });

  final AssetGenImage? avatar;
  final String fallbackInitial;
  final double size;

  @override
  Widget build(BuildContext context) {
    final gradient = _gradientForFallback(fallbackInitial);

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: avatar == null ? gradient : null,
      ),
      child: ClipOval(
        child:
            avatar != null
                ? avatar!.image(width: size, height: size, fit: BoxFit.cover)
                : Center(
                  child: Text(
                    fallbackInitial,
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: size * 0.36,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
      ),
    );
  }
}

class _TrustScoreBadge extends StatelessWidget {
  const _TrustScoreBadge({required this.trustScore, required this.tone});

  final int trustScore;
  final ScoreBadgeTone tone;

  @override
  Widget build(BuildContext context) {
    final colorSet = _scoreBadgeColors(tone);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: colorSet.background,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.verified_user_outlined,
            size: 14,
            color: colorSet.foreground,
          ),
          const SizedBox(width: 4),
          Text(
            '$trustScore%',
            style: TextStyle(
              color: colorSet.foreground,
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}

class _UnreadCountBadge extends StatelessWidget {
  const _UnreadCountBadge({required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: const BoxDecoration(
        color: AppColors.primary,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Text(
        '$count',
        style: const TextStyle(
          color: AppColors.white,
          fontSize: 15,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}

class _RecentMatchItem {
  const _RecentMatchItem({
    required this.name,
    required this.avatar,
    required this.fallbackInitial,
    required this.hasHighlightRing,
    required this.isOnline,
  });

  final String name;
  final AssetGenImage? avatar;
  final String fallbackInitial;
  final bool hasHighlightRing;
  final bool isOnline;
}

class _ConversationPreviewItem {
  const _ConversationPreviewItem({
    required this.name,
    required this.avatar,
    required this.fallbackInitial,
    required this.previewText,
    required this.timeLabel,
    required this.trustScore,
    required this.unreadCount,
    required this.badgeTone,
  });

  final String name;
  final AssetGenImage? avatar;
  final String fallbackInitial;
  final String previewText;
  final String timeLabel;
  final int trustScore;
  final int unreadCount;
  final ScoreBadgeTone badgeTone;
}

LinearGradient _gradientForFallback(String fallbackInitial) {
  const palettes = [
    [Color(0xFFF0AD89), Color(0xFFE08C80)],
    [Color(0xFF93C5FD), Color(0xFF5A8DEE)],
    [Color(0xFFF4D06F), Color(0xFFE7A977)],
    [Color(0xFFA7E0D2), Color(0xFF67C3B2)],
  ];

  final palette = palettes[fallbackInitial.codeUnitAt(0) % palettes.length];

  return LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: palette,
  );
}

_ScoreBadgeColors _scoreBadgeColors(ScoreBadgeTone tone) {
  switch (tone) {
    case ScoreBadgeTone.success:
      return _ScoreBadgeColors(
        background: AppColors.success.withValues(alpha: 0.16),
        foreground: const Color(0xFF179154),
      );
    case ScoreBadgeTone.info:
      return _ScoreBadgeColors(
        background: AppColors.primary.withValues(alpha: 0.16),
        foreground: const Color(0xFF2463E4),
      );
    case ScoreBadgeTone.warning:
      return _ScoreBadgeColors(
        background: AppColors.accentYellow.withValues(alpha: 0.22),
        foreground: const Color(0xFFB47200),
      );
  }
}

class _ScoreBadgeColors {
  const _ScoreBadgeColors({required this.background, required this.foreground});

  final Color background;
  final Color foreground;
}
