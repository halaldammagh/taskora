// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:taskora/features/onboarding/%20domain/repository/onboarding_repository.dart'
    as _i704;
import 'package:taskora/features/onboarding/%20domain/use_cases/check_onboarding_status_use_case.dart'
    as _i765;
import 'package:taskora/features/onboarding/%20domain/use_cases/complete_onboarding_use_case.dart'
    as _i887;
import 'package:taskora/features/onboarding/data/data_sources/onboarding_local_data_source.dart'
    as _i679;
import 'package:taskora/features/onboarding/data/data_sources/onboarding_local_data_source_impl.dart'
    as _i51;
import 'package:taskora/features/onboarding/data/repository/onboarding_repository_impl.dart'
    as _i511;
import 'package:taskora/features/onboarding/presentation/bloc/onboarding_bloc.dart'
    as _i302;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i679.OnboardingLocalDataSource>(
      () => _i51.OnboardingLocalDataSourceImpl(),
    );
    gh.lazySingleton<_i704.OnboardingRepository>(
      () => _i511.OnboardingRepositoryImpl(
        onboardingLocalDataSource: gh<_i679.OnboardingLocalDataSource>(),
      ),
    );
    gh.factory<_i765.CheckOnboardingStatusUseCase>(
      () =>
          _i765.CheckOnboardingStatusUseCase(gh<_i704.OnboardingRepository>()),
    );
    gh.factory<_i887.CompleteOnboardingUseCase>(
      () => _i887.CompleteOnboardingUseCase(gh<_i704.OnboardingRepository>()),
    );
    gh.factory<_i302.OnboardingBloc>(
      () => _i302.OnboardingBloc(
        gh<_i765.CheckOnboardingStatusUseCase>(),
        gh<_i887.CompleteOnboardingUseCase>(),
      ),
    );
    return this;
  }
}
