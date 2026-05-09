abstract class OnboardingLocalDataSource {
  Future<bool> isOnboardingCompleted();

  Future<bool> saveOnboardingCompleted();
}