import 'package:hey_mate_app/presentation/pages/my_page/my_page_models.dart';

const myPageProfileName = '山東 拓海';
const myPageProfileAge = 32;
const myPageProfileLocation = '東京都 渋谷区 / ゴールドジム渋谷';
const myPageTrustScore = 98;
const myPageTrainingHistory = '5年6ヶ月';
const myPageSpecialty = '胸・肩';
const myPageScheduleNote = '平日 19:00〜21:00 を中心に活動';

const myPageLifts = [
  LiftDisplayData(label: 'ベンチプレス', valueKg: 120, maxKg: 140),
  LiftDisplayData(label: 'スクワット', valueKg: 160, maxKg: 190),
  LiftDisplayData(label: 'デッドリフト', valueKg: 190, maxKg: 220),
];

const myPageSchedule = [
  ScheduleDayData(dayLabel: 'MON', statusLabel: 'Gym', isActive: true),
  ScheduleDayData(dayLabel: 'TUE', statusLabel: 'Gym', isActive: true),
  ScheduleDayData(dayLabel: 'WED', statusLabel: 'Off', isActive: false),
  ScheduleDayData(dayLabel: 'THU', statusLabel: 'Gym', isActive: true),
  ScheduleDayData(dayLabel: 'FRI', statusLabel: 'Gym', isActive: true),
  ScheduleDayData(dayLabel: 'SAT', statusLabel: 'Gym', isActive: true),
  ScheduleDayData(dayLabel: 'SUN', statusLabel: 'Off', isActive: false),
];
