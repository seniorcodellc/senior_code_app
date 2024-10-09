import '../../../../exports.dart';
import '../../data/models/login_request_model/login_request_model.dart';

abstract class AuthRepository {
  Future<Either<Failure, ResponseModel>> login(LoginRequestModel request);
}
