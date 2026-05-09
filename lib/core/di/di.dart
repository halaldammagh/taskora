import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'di.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: false,
  asExtension: true,
)
Future<void> configureDependencies() async => getIt.init();

@module
abstract class RegisterModule {
  @preResolve // ← يعني "انتظر حتى تجهز"
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}