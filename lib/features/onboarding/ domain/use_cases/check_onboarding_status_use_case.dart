import 'package:injectable/injectable.dart';

import '../repository/onboarding_repository.dart';

@injectable
class CheckOnboardingStatusUseCase {
  final OnboardingRepository _onboardingRepository;

  CheckOnboardingStatusUseCase(this._onboardingRepository);

  Future<bool> invoke() {
    return _onboardingRepository.isOnboardingCompleted();
  }
}
