import 'package:injectable/injectable.dart';

import '../../ domain/repository/onboarding_repository.dart';
import '../data_sources/onboarding_local_data_source.dart';

@LazySingleton(as: OnboardingRepository)
class OnboardingRepositoryImpl implements OnboardingRepository {
  final OnboardingLocalDataSource onboardingLocalDataSource;

  OnboardingRepositoryImpl({required this.onboardingLocalDataSource});

  @override
  Future<bool> isOnboardingCompleted() async {
    // TODO: implement isOnboardingCompleted
    return await onboardingLocalDataSource.isOnboardingCompleted();
  }

  @override
  Future<bool> saveOnboardingCompleted() async {
    // TODO: implement saveOnboardingCompleted
    return await onboardingLocalDataSource.saveOnboardingCompleted();
  }
}
