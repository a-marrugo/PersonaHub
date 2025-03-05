import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_hub/core/di/di.config.dart';
import 'package:personal_hub/core/shared/router/router_app.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();

/// Module for inject external dependencies
@module
abstract class InjectableModule {
  /// Injection for [RouterApp]
  @lazySingleton
  RouterApp get router => RouterApp();
}
