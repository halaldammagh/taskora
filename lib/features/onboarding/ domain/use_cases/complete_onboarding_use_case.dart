import 'package:injectable/injectable.dart';

import '../repository/onboarding_repository.dart';

@injectable
class CompleteOnboardingUseCase {
  final OnboardingRepository _onboardingRepository;

  CompleteOnboardingUseCase(this._onboardingRepository);

  Future<void> invoke() {
    return _onboardingRepository.saveOnboardingCompleted();
  }
}
