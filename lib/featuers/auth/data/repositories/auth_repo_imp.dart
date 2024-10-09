import 'package:senior_code_app/core/app_helper.dart';

import '../../../../exports.dart';
import '../../domain/repositories/auth_repo.dart';
import '../data_sources/remote_data_source.dart';
import '../models/login_request_model/login_request_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final RemoteAuthDataSource remoteAuthDataSource;

  AuthRepositoryImpl({required this.remoteAuthDataSource});

  @override
  Future<Either<Failure, ResponseModel>> login(LoginRequestModel request) =>
      execute(() async => remoteAuthDataSource.login(request));
}
