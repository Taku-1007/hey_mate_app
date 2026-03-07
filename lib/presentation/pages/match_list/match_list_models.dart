import 'package:flutter/material.dart';
import 'package:hey_mate_app/gen/assets.gen.dart';

enum ScoreBadgeTone { success, info, warning }

class RecentMatchItem {
  const RecentMatchItem({
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

class ConversationPreviewItem {
  const ConversationPreviewItem({
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

class ScoreBadgeColors {
  const ScoreBadgeColors({required this.background, required this.foreground});

  final Color background;
  final Color foreground;
}
