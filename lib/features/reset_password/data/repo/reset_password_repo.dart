import 'package:chef_app/core/database/API/api_consumer.dart';
import 'package:chef_app/core/database/API/end_points.dart';
import 'package:chef_app/core/errors/error.dart';
import 'package:chef_app/core/model/success_model.dart';
import 'package:chef_app/core/services/server_locator.dart';
import 'package:dartz/dartz.dart';

class ResetPasswordRepo {
  Future<Either<String, String>> resetPassword(
      {required String email,
      required String password,
      required String confirmPassword,
      required String code}) async {
    try {
      final response = await sl<ApiConsumer>().patch(
        EndPoints.changeForgottenPassword,
        data: {
          ApiKeys.email: email,
          ApiKeys.password: password,
          ApiKeys.confirmPassword: confirmPassword,
          ApiKeys.code: code,
        },
      );
      return right(SuccessModel.fromJson(response).message);
    } on ServerException catch (e) {
      return left(e.errorModel.eMessage);
    } catch (e) {
      return left(e.toString());
    }
  }
}
