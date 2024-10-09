import 'package:get_it/get_it.dart';
import 'package:senior_code_app/exports.dart';
import 'package:senior_code_app/featuers/auth/data/repositories/auth_repo_imp.dart';
import 'package:senior_code_app/featuers/auth/domain/repositories/auth_repo.dart';
import 'core/network/impl/dio_impl/dio-consumer.dart';
import 'core/network/impl/dio_impl/dio_interceptors.dart';
import 'featuers/auth/data/data_sources/remote_data_source.dart';
import 'featuers/auth/domain/use_cases/auth_use_cases.dart';
import 'featuers/auth/managers/auth_cubit/auth_cubit.dart';

class ServiceLocator {
  GetIt getIt = GetIt.instance;

  /// Factory method to reuse the same instance automatically
  static final ServiceLocator instance = ServiceLocator._internal();

  /// Private constructor
  ServiceLocator._internal();

  factory ServiceLocator() => instance;

  Future<void> get init async {
    _registerNetwork();
    _registerUser();
  }

  void _registerNetwork() {
    getIt.registerLazySingleton<Dio>(() => Dio());
    getIt.registerLazySingleton<DioInterceptor>(() => DioInterceptor());
    getIt.registerLazySingleton<LogInterceptor>(() => LogInterceptor(
          request: true,
          requestBody: true,
          requestHeader: true,
          responseBody: true,
          responseHeader: true,
          error: true,
        ));
    getIt.registerLazySingleton<DioConsumer>(() => DioConsumer(
          client: getIt(),
          dioInterceptor: getIt(),
          logInterceptor: getIt(),
        )..dioInit());
  }

  void _registerUser() {
    getIt.registerLazySingleton<RemoteAuthDataSource>(
      () => RemoteAuthDataSourceImpl(dioConsumer: getIt()),
    );
    getIt.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(
        remoteAuthDataSource: getIt(),
      ),
    );
    getIt.registerLazySingleton<AuthUseCase>(
      () => AuthUseCase(getIt()),
    );
    getIt.registerLazySingleton<AuthCubit>(
      () => AuthCubit(getIt()),
    );
  }
}
