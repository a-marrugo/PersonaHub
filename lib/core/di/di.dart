import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_hub/core/di/di.config.dart';
import 'package:personal_hub/core/shared/router/router_app.dart';

/// Access to the Singleton instance of GetIt
final GetIt getIt = GetIt.instance;

/// Initializes dependency injection using Injectable and GetIt.
@InjectableInit()
void configureDependencies() => getIt.init();

/// Module for inject external dependencies
@module
abstract class InjectableModule {
  /// Injection for [RouterApp]
  @lazySingleton
  RouterApp get router => RouterApp();
}
