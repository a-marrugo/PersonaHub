// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:personal_hub/core/di/di.dart' as _i721;
import 'package:personal_hub/core/shared/router/router_app.dart' as _i267;
import 'package:personal_hub/features/home/domain/use_cases/get_user_use_case.dart'
    as _i138;
import 'package:personal_hub/features/sign_up/data/data_sources/loca_services/local_storage_service.dart'
    as _i754;
import 'package:personal_hub/features/sign_up/data/repositories/user_repository_impl.dart'
    as _i434;
import 'package:personal_hub/features/sign_up/domain/repositories/user_repository.dart'
    as _i967;
import 'package:personal_hub/features/sign_up/domain/use_cases/save_user_use_case.dart'
    as _i34;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModule = _$InjectableModule();
    gh.lazySingleton<_i267.RouterApp>(() => injectableModule.router);
    gh.factory<_i754.LocalStorageService>(
        () => _i754.LocalStorageServiceImpl());
    gh.factory<_i967.UserRepository>(
        () => _i434.UserRepositoryImpl(gh<_i754.LocalStorageService>()));
    gh.factory<_i34.SaveUserUseCase>(
        () => _i34.SaveUserUseCase(gh<_i967.UserRepository>()));
    gh.factory<_i138.GetUserUseCase>(
        () => _i138.GetUserUseCase(gh<_i967.UserRepository>()));
    return this;
  }
}

class _$InjectableModule extends _i721.InjectableModule {}
