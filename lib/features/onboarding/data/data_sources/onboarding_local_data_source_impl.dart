import 'package:injectable/injectable.dart';
import 'package:taskora/core/cache/shared_prefs_utils.dart';
import 'package:taskora/features/onboarding/data/data_sources/onboarding_local_data_source.dart';

@LazySingleton(as: OnboardingLocalDataSource)
class OnboardingLocalDataSourceImpl implements OnboardingLocalDataSource {
  final SharedPrefsUtils _sharedPrefsUtils;

  OnboardingLocalDataSourceImpl(
      this._sharedPrefsUtils); // ← constructor injection

  static const String _onboardingKey = 'onboarding_completed';

  @override
  Future<bool> isOnboardingCompleted() async {
    return _sharedPrefsUtils.getBool(_onboardingKey) ??
        false; // ← آمن بدون casting
  }

  @override
  Future<bool> saveOnboardingCompleted() async {
    return await _sharedPrefsUtils.saveData(key: _onboardingKey, value: true);
  }
}