import 'package:dio/dio.dart';
import 'package:doc_appointment_app/core/networking/api_service.dart';
import 'package:doc_appointment_app/core/networking/dio_factory.dart';
import 'package:doc_appointment_app/features/login/data/repos/login_repo.dart';
import 'package:doc_appointment_app/features/login/logic/login_cubit/login_cubit.dart';
import 'package:doc_appointment_app/features/register/data/repos/register_repo.dart';
import 'package:doc_appointment_app/features/register/logic/register_cubit/register_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt<ApiService>()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));

  // Register
  getIt.registerLazySingleton<RegisterRepo>(
    () => RegisterRepo(getIt<ApiService>()),
  );
  getIt.registerFactory<RegisterCubit>(
    () => RegisterCubit(getIt<RegisterRepo>()),
  );
}
