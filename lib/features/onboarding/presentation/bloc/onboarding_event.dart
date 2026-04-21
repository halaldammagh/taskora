sealed class OnboardingEvent {
  const OnboardingEvent();
}

class AppStartedEvent extends OnboardingEvent {
  const AppStartedEvent();
}

class OnboardingCompletedEvent extends OnboardingEvent {
  const OnboardingCompletedEvent();
}
