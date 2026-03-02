import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hey_mate_app/domain/mock/export_models.dart';
import 'package:hey_mate_app/domain/mock/repository/age_repository.dart';
import 'package:hey_mate_app/domain/mock/repository/birthdate_repository.dart';
import 'package:hey_mate_app/domain/mock/repository/chat_repository.dart';
import 'package:hey_mate_app/domain/mock/repository/guideline_repository.dart';
import 'package:hey_mate_app/domain/mock/repository/home_repository.dart';
import 'package:hey_mate_app/domain/mock/repository/kyc_repository.dart';
import 'package:hey_mate_app/domain/mock/repository/match_repository.dart';
import 'package:hey_mate_app/domain/mock/repository/mypage_repository.dart';
import 'package:hey_mate_app/domain/mock/repository/onboarding_repository.dart';
import 'package:hey_mate_app/domain/mock/repository/profile_repository.dart';
import 'package:hey_mate_app/infrastructure/mock/age_repository_mock.dart';
import 'package:hey_mate_app/infrastructure/mock/birthdate_repository_mock.dart';
import 'package:hey_mate_app/infrastructure/mock/chat_repository_mock.dart';
import 'package:hey_mate_app/infrastructure/mock/guideline_repository_mock.dart';
import 'package:hey_mate_app/infrastructure/mock/home_repository_mock.dart';
import 'package:hey_mate_app/infrastructure/mock/json_loader.dart';
import 'package:hey_mate_app/infrastructure/mock/kyc_repository_mock.dart';
import 'package:hey_mate_app/infrastructure/mock/match_repository_mock.dart';
import 'package:hey_mate_app/infrastructure/mock/mypage_repository_mock.dart';
import 'package:hey_mate_app/infrastructure/mock/onboarding_repository_mock.dart';
import 'package:hey_mate_app/infrastructure/mock/profile_repository_mock.dart';

final jsonLoaderProvider = Provider<JsonLoader>((ref) => JsonLoader());

final onboardingRepositoryProvider = Provider<OnboardingRepository>(
  (ref) => OnboardingRepositoryMock(ref.watch(jsonLoaderProvider)),
);
final ageRepositoryProvider = Provider<AgeRepository>(
  (ref) => AgeRepositoryMock(ref.watch(jsonLoaderProvider)),
);
final guidelineRepositoryProvider = Provider<GuidelineRepository>(
  (ref) => GuidelineRepositoryMock(ref.watch(jsonLoaderProvider)),
);
final kycRepositoryProvider = Provider<KycRepository>(
  (ref) => KycRepositoryMock(ref.watch(jsonLoaderProvider)),
);
final birthdateRepositoryProvider = Provider<BirthdateRepository>(
  (ref) => BirthdateRepositoryMock(ref.watch(jsonLoaderProvider)),
);
final homeRepositoryProvider = Provider<HomeRepository>(
  (ref) => HomeRepositoryMock(ref.watch(jsonLoaderProvider)),
);
final matchRepositoryProvider = Provider<MatchRepository>(
  (ref) => MatchRepositoryMock(ref.watch(jsonLoaderProvider)),
);
final profileRepositoryProvider = Provider<ProfileRepository>(
  (ref) => ProfileRepositoryMock(ref.watch(jsonLoaderProvider)),
);
final chatRepositoryProvider = Provider<ChatRepository>(
  (ref) => ChatRepositoryMock(ref.watch(jsonLoaderProvider)),
);
final mypageRepositoryProvider = Provider<MypageRepository>(
  (ref) => MypageRepositoryMock(ref.watch(jsonLoaderProvider)),
);

// Data providers
final onboardingStepsProvider = FutureProvider<List<OnboardingStep>>(
  (ref) => ref.watch(onboardingRepositoryProvider).fetchSteps(),
);
final ageGateProvider = FutureProvider<AgeGate>(
  (ref) => ref.watch(ageRepositoryProvider).fetchAgeGate(),
);
final guidelineProvider = FutureProvider<GuidelineContent>(
  (ref) => ref.watch(guidelineRepositoryProvider).fetchGuidelines(),
);
final kycFlowProvider = FutureProvider<KycFlow>(
  (ref) => ref.watch(kycRepositoryProvider).fetchFlow(),
);
final birthdateFlowProvider = FutureProvider<BirthdateFlow>(
  (ref) => ref.watch(birthdateRepositoryProvider).fetchFlow(),
);
final homeCardsProvider = FutureProvider<List<MatchCard>>(
  (ref) => ref.watch(homeRepositoryProvider).fetchCards(),
);
final matchesProvider = FutureProvider<List<MatchListItem>>(
  (ref) => ref.watch(matchRepositoryProvider).fetchMatches(),
);
final profileProvider =
    FutureProvider.family<ProfileDetail, String>((ref, id) async {
  return ref.watch(profileRepositoryProvider).fetchProfile(id);
});
final chatRoomProvider =
    FutureProvider.family<ChatRoom, String>((ref, roomId) async {
  return ref.watch(chatRepositoryProvider).fetchRoom(roomId);
});
final mypageProvider = FutureProvider<MypageSummary>(
  (ref) => ref.watch(mypageRepositoryProvider).fetchSummary(),
);
