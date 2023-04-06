import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:omar_ahmad/cubit/my_cubit.dart';
import 'package:omar_ahmad/my_repo.dart';
import 'package:omar_ahmad/web_services.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<MyCubit>(() => MyCubit(getIt()));
  getIt.registerLazySingleton<MyRepo>(() => MyRepo(getIt()));
  getIt.registerLazySingleton<WebServices>(
      () => WebServices(createDioAndInjection()));
}

Dio createDioAndInjection() {
  Dio dio = Dio();

  dio.interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: false,
      responseBody: true,
      responseHeader: false,
      error: true));

  return dio;
}
