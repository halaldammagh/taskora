import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:taskora/features/onboarding/%20domain/use_cases/check_onboarding_status_use_case.dart';
import 'package:taskora/features/onboarding/%20domain/use_cases/complete_onboarding_use_case.dart';
import 'package:taskora/features/onboarding/presentation/bloc/onboarding_event.dart';
import 'package:taskora/features/onboarding/presentation/bloc/onboarding_status.dart';

@injectable
class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingStatus> {
  final CheckOnboardingStatusUseCase _checkOnboardingStatusUseCase;
  final CompleteOnboardingUseCase _completeOnboardingUseCase;

  OnboardingBloc(
    this._checkOnboardingStatusUseCase,
    this._completeOnboardingUseCase,
  ) : super(OnboardingInitialState()) {
    on<AppStartedEvent>(_onStarted);
    on<OnboardingCompletedEvent>(_onComplete);
  }

  Future<void> _onStarted(
    AppStartedEvent event,
    Emitter<OnboardingStatus> emit,
  ) async {
    final isDone = await _checkOnboardingStatusUseCase.invoke();
    emit(isDone ? NavigateToHomeState() : ShowOnboardingState());
  }

  Future<void> _onComplete(
    OnboardingCompletedEvent event,
    Emitter<OnboardingStatus> emit,
  ) async {
    await _completeOnboardingUseCase.invoke();
    emit(NavigateToHomeState());
  }
}
