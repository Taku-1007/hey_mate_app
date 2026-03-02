import 'package:hey_mate_app/domain/mock/model/onboarding_step.dart';

abstract class OnboardingRepository {
  Future<List<OnboardingStep>> fetchSteps();
}
