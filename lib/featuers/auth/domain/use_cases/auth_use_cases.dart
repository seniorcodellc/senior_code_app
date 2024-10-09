import '../../../../exports.dart';
import '../../data/models/login_request_model/login_request_model.dart';
import '../repositories/auth_repo.dart';

class AuthUseCase {
  final AuthRepository repository;

  AuthUseCase(this.repository);

  Future<Either<Failure, ResponseModel>> login(LoginRequestModel request) {
    return repository.login(request);
  }
}
