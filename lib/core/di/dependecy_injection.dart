import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/home/data/repo/add_energncy_repo.dart';
import '../../features/home/data/repo/add_proplem_repo.dart';
import '../../features/home/logic/cubit/add_proplem_cubit.dart';
import '../../features/home/logic/cubit/add_emergency_cubit.dart';
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
  // // add emergency
  getIt.registerLazySingleton<AddEmergncyRepo>(() => AddEmergncyRepo(getIt()));
  getIt.registerFactory<AddEmergencyCubit>(() => AddEmergencyCubit(getIt()));
  getIt.registerLazySingleton<AddProblemRepo>(() => AddProblemRepo(getIt()));
  getIt.registerFactory<AddProplemCubit>(() => AddProplemCubit(getIt()));

  getIt.registerLazySingleton<EmergencyProblemResponseRepo>(
      () => EmergencyProblemResponseRepo(getIt()));

  getIt.registerFactory<EmergencyProblemResponseCubit>(
      () => EmergencyProblemResponseCubit(getIt()));
}
