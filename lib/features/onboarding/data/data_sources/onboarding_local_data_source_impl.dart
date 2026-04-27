import 'package:injectable/injectable.dart';
import 'package:taskora/core/cache/shared_prefs_utils.dart';
import 'package:taskora/features/onboarding/data/data_sources/onboarding_local_data_source.dart';

@LazySingleton(as: OnboardingLocalDataSource)
class OnboardingLocalDataSourceImpl implements OnboardingLocalDataSource {
  static const String _onboardingKey = 'onboarding_completed';

  @override
  Future<bool> isOnboardingCompleted() async {
    final result = SharedPrefsUtils.getData(key: _onboardingKey);
    return result as bool? ?? false;
  }

  @override
  Future<bool> saveOnboardingCompleted() async {
    // TODO: implement saveOnboardingCompleted
    final saveData = await SharedPrefsUtils.saveData(
      key: _onboardingKey,
      value: true,
    );
    return saveData;
  }
}
