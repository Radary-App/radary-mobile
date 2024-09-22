import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../../../../core/networking/dio_factory.dart';
import '../models/emergency_problem_response_model.dart';

class EmergencyProblemResponseRepo {
  final ApiService _apiService;

  EmergencyProblemResponseRepo(this._apiService);

  Future<ApiResult<EmergencyProblemResponseModel>>
      getEmergencyAndProblems() async {
    try {
      DioFactory.addDioHeaders();

      final response = await _apiService.getEmergencyAndProblems();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
