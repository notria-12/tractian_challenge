import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:tractian/src/repositories/company_repository.dart';
import 'package:tractian/src/viewmodels/company_viewmodel.dart';

final getIt = GetIt.instance;

void setup() {
  //dio instance
  getIt.registerSingleton<Dio>(
      Dio(
        BaseOptions(baseUrl: 'https://fake-api.tractian.com'),
      ),
      instanceName: 'Dio');

  //repositories
  getIt.registerLazySingleton<CompanyRepository>(
      () => CompanyRepository(getIt(instanceName: 'Dio')));

  //viewmodels
  getIt.registerFactory(() => CompanyViewModel(getIt()));
}
