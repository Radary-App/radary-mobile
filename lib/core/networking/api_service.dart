import 'package:dio/dio.dart';
import 'package:radary/core/networking/api_constants.dart';
import 'package:radary/features/home/data/models/add_emrgncy_response.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/home/data/models/add_proplem_response.dart';
import '../../features/home/data/models/addproplem_request_body.dart';
import '../../features/login/data/models/login_request_body.dart';
import '../../features/login/data/models/login_response.dart';
import '../../features/problem_review/data/models/emergency_problem_response_model.dart';
import '../../features/sign_up/data/models/sign_up_request_body.dart';
import '../../features/sign_up/data/models/sign_up_response.dart';


part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.signup)
  Future<SignupResponse> signup(
    @Body() SignupRequestBody signupRequestBody,
  );
@POST(ApiConstants.addProblem)
Future<AddProblemResponse> addProblem(
  @Body() FormData addProblemRequestBody,
);
@GET(ApiConstants.emergencyProblem)
Future<EmergencyProblemResponseModel> getEmergencyAndProblems();
@POST(ApiConstants.addEmergency)
Future<AddEmergncyResponse> addemergency(
  @Body() FormData addProblemRequestBody,
);
}
