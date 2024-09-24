import 'package:radary/core/networking/api_result.dart';
import '../../../../../../../core/networking/api_error_handler.dart';
import '../../../../../../../core/networking/api_service.dart';
import '../../../../../../../core/networking/dio_factory.dart';
import '../models/user_model.dart';
import '../models/user_model.dart';

class UserRepository {
  final ApiService _apiService;

  UserRepository(this._apiService);
  Future<ApiResult<User>> getEmergencyAndProblems() async {
    try {
      DioFactory.addDioHeaders();

      final response = await _apiService.getUserData();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
