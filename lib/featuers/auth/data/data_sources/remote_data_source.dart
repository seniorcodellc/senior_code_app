import 'package:senior_code_app/core/app_helper.dart';

import '../../../../core/network/impl/dio_impl/dio-consumer.dart';
import '../../../../exports.dart';
import '../models/login_request_model/login_request_model.dart';
import '../models/login_response_model/login_response_model.dart';

abstract class RemoteAuthDataSource {
  Future<ResponseModel> login(LoginRequestModel request);
}

//! Implementation using Dio Consumer
class RemoteAuthDataSourceImpl implements RemoteAuthDataSource {
  DioConsumer dioConsumer;

  RemoteAuthDataSourceImpl({required this.dioConsumer});

  @override
  Future<ResponseModel> login(LoginRequestModel request) async =>
      await remoteExecute(
        request: dioConsumer.postRequest(
          path: EndPoints.login,
          body: request.toJson(),
        ),
        fromJsonFunction: (data) => loginResponseModel.fromJson(data),
      );
}
