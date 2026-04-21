abstract class OnboardingLocalDataSource {
  Future<bool> isOnboardingCompleted();

  Future<void> saveOnboardingCompleted();
}
