sealed class OnboardingStatus {
  const OnboardingStatus();
}

class OnboardingInitialState extends OnboardingStatus {
  const OnboardingInitialState();
}

class OnboardingLoadingState extends OnboardingStatus {
  const OnboardingLoadingState();
}

class ShowOnboardingState extends OnboardingStatus {
  const ShowOnboardingState();
}

class NavigateToLoginState extends OnboardingStatus {
  const NavigateToLoginState();
}
