import 'package:hey_mate_app/domain/mock/model/onboarding_step.dart';
import 'package:hey_mate_app/domain/mock/repository/onboarding_repository.dart';
import 'package:hey_mate_app/infrastructure/mock/json_loader.dart';

class OnboardingRepositoryMock implements OnboardingRepository {
  OnboardingRepositoryMock(this._loader);

  final JsonLoader _loader;

  @override
  Future<List<OnboardingStep>> fetchSteps() async {
    final data = await _loader.load('assets/mock/onboarding.json') as Map;
    final steps = (data['steps'] as List)
        .map((e) => OnboardingStep.fromJson(Map<String, dynamic>.from(e)))
        .toList();
    return steps;
  }
}
