import 'package:chef_app/core/database/API/api_consumer.dart';
import 'package:chef_app/core/database/API/end_points.dart';
import 'package:chef_app/core/errors/error.dart';
import 'package:chef_app/core/services/server_locator.dart';
import 'package:dartz/dartz.dart';

class SendCodeRepo {
  Future<Either<String, String>> sendCode({required String email}) async {
    try {
      final response = await sl<ApiConsumer>().post(
        EndPoints.sendCode,
        data: {
          ApiKeys.email: email,
        },
      );
      return right(response[ApiKeys.message]);
    } on ServerException catch (e) {
      return left(e.errorModel.eMessage);
    } catch (e) {
      // Handle other exceptions (e.g., network errors)
      return Left("Error: ${e.toString()}");
    }
  }
}
