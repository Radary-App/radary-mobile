import 'package:radary/features/home/data/models/addproplem_request_body.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../models/add_proplem_response.dart';
import 'package:dio/dio.dart'; 

class AddEnergnyRepo {
  final ApiService _apiService;

  AddEnergnyRepo(this._apiService);

  Future<ApiResult<AddProblemResponse>> addProblem(FormData addProblemRequestBody) async {
    try {
      final response = await _apiService.addProblem(addProblemRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}