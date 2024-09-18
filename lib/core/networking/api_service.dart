import 'package:dio/dio.dart';
import 'package:radary/core/networking/api_constants.dart';
import 'package:retrofit/retrofit.dart';


part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // @POST(ApiConstants.login)
  // Future<LoginResponse> login(
  //   @Body() LoginRequestBody loginRequestBody,
  // );

  // @POST("api/register")
  // Future<SignupResponse> signup(
  //   @Body() SignupRequestBody signupRequestBody,
  // );
}
