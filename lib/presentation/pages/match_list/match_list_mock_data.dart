import 'package:hey_mate_app/gen/assets.gen.dart';
import 'package:hey_mate_app/presentation/pages/match_list/match_list_models.dart';

final recentMatches = [
  RecentMatchItem(
    name: 'Yuki',
    avatar: Assets.images.takuSanto,
    fallbackInitial: 'Y',
    hasHighlightRing: true,
    isOnline: true,
  ),
  RecentMatchItem(
    name: 'Ken',
    avatar: null,
    fallbackInitial: 'K',
    hasHighlightRing: true,
    isOnline: false,
  ),
  RecentMatchItem(
    name: 'Sara',
    avatar: Assets.images.twoWomenHighFive,
    fallbackInitial: 'S',
    hasHighlightRing: false,
    isOnline: false,
  ),
  RecentMatchItem(
    name: 'Miki',
    avatar: null,
    fallbackInitial: 'M',
    hasHighlightRing: true,
    isOnline: false,
  ),
  RecentMatchItem(
    name: 'Riku',
    avatar: Assets.images.sampleImage,
    fallbackInitial: 'R',
    hasHighlightRing: true,
    isOnline: false,
  ),
];

final conversations = [
  ConversationPreviewItem(
    name: 'Yuki',
    avatar: Assets.images.takuSanto,
    fallbackInitial: 'Y',
    previewText: '今日のトレーニングお疲れ様でした...',
    timeLabel: '12:45',
    trustScore: 98,
    unreadCount: 2,
    badgeTone: ScoreBadgeTone.success,
  ),
  ConversationPreviewItem(
    name: 'Ken',
    avatar: null,
    fallbackInitial: 'K',
    previewText: '明日の朝、一緒にランニングどうですか？',
    timeLabel: '昨日',
    trustScore: 92,
    unreadCount: 0,
    badgeTone: ScoreBadgeTone.info,
  ),
  ConversationPreviewItem(
    name: 'Sara',
    avatar: Assets.images.twoWomenHighFive,
    fallbackInitial: 'S',
    previewText: 'スタンプを送信しました',
    timeLabel: '火曜日',
    trustScore: 99,
    unreadCount: 0,
    badgeTone: ScoreBadgeTone.success,
  ),
  ConversationPreviewItem(
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
