import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/home/data/repo/add_proplem_repo.dart';
import '../../features/home/logic/cubit/addemergency_cubit.dart';
import '../../features/home/logic/cubit/addproplem_cubit.dart';
import '../../features/login/data/repo/login_repo.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import '../../features/problem_review/data/repo/emergency_problem_repo.dart';
import '../../features/problem_review/logic/cubit/emergency_problem_response_cubit.dart';
import '../../features/sign_up/data/repo/sign_up_repo.dart';
import '../../features/sign_up/logic/cubit/sigin_up_cubit.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
  // // add problem
  // getIt.registerLazySingleton<AddProblemRepo>(() => AddProblemRepo(getIt()));
  // getIt.registerFactory<AddProblemCubit>(() => AddProblemCubit(getIt()));
  // emergency problem
  getIt.registerLazySingleton<AddProblemRepo>(() => AddProblemRepo(getIt()));
  getIt.registerFactory<AddEmergencyCubit>(() => AddEmergencyCubit(getIt()));

  getIt.registerLazySingleton<EmergencyProblemResponseRepo>(
      () => EmergencyProblemResponseRepo(getIt()));

  getIt.registerFactory<EmergencyProblemResponseCubit>(
      () => EmergencyProblemResponseCubit(getIt()));
}
