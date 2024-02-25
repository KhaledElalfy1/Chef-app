import 'package:chef_app/core/database/API/api_consumer.dart';
import 'package:chef_app/core/database/API/end_points.dart';
import 'package:chef_app/core/errors/error.dart';
import 'package:chef_app/core/errors/error_model.dart';
import 'package:chef_app/features/sign_in/data/model/sign_in_model.dart';
import 'package:dartz/dartz.dart';
import 'package:chef_app/core/services/server_locator.dart';

class SignInRepo {
  Future<Either<ErrorModel, SignInModel>> signIn(
      {required String email, required String password}) async {
    try {
      final response = await sl<ApiConsumer>().post(
        EndPoints.chefSignIn,
        data: {
          ApiKeys.email: email,
          ApiKeys.password: password,
        },
      );
      return right(SignInModel.fromJson(response));
    } on ServerException catch (e) {
      return left(e.errorModel);
    }
  }
}
