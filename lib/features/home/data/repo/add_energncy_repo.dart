import 'package:dio/dio.dart';
import 'package:radary/core/networking/api_error_handler.dart';
import 'package:radary/core/networking/api_result.dart';
import 'package:radary/core/networking/api_service.dart';

import '../models/add_emrgncy_response.dart';

class AddEmergncyRepo {
  final ApiService _apiService;

  AddEmergncyRepo(this._apiService);

  Future<ApiResult<AddEmergncyResponse>> addEmergancy(FormData addEmergncyRequestBody) async {
    try {
      // Sending the request with the form data
      final response = await _apiService.addemergency(addEmergncyRequestBody);
      

      return ApiResult.success(response);
    } catch (error) {
      // Handling errors using a custom ErrorHandler
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
