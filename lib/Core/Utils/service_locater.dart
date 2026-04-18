// import 'package:get_it/get_it.dart';
// import 'package:instagram/Features/Auth/Data/datasources/log_in_remote_data_source.dart';
// import 'package:instagram/Features/Auth/Data/datasources/register_remote_data_source.dart';
// import 'package:instagram/Features/Auth/Data/repositories/log_in_repo_impl.dart';
// import 'package:instagram/Features/Auth/Data/repositories/register_repo_data_impl.dart';
// import 'package:instagram/Features/Auth/Domain/repositories/log_in_repo.dart';
// import 'package:instagram/Features/Auth/Domain/repositories/register_repo.dart';
// import 'package:instagram/Features/Auth/Domain/usecases/log_in_use_case.dart';
// import 'package:instagram/Features/Auth/Domain/usecases/register_uses_case.dart';

// final getIt = GetIt.instance;
// void setupServiceLocater() {
//   //! Register Data Source Register
//   getIt.registerLazySingleton<RegisterRemoteDataSource>(
//     () => RegisterRemoteDataSourceImpl(),
//   );

//   //! Register Repository
//   getIt.registerLazySingleton<RegisterRepo>(
//     () => RegisterRepoDateImpl(remoteDataSource: getIt()),
//   );

//   //! Register UseCase
//   getIt.registerLazySingleton<RegisterUsesCase>(
//     () => RegisterUsesCase(registerRepo: getIt()),
//   );

//   //! Login Data Source Register
//   getIt.registerLazySingleton<LogInRemoteDataSource>(
//     () => LogInRemoteDataSourceImpl(),
//   );

//   //! Login Repository
//   getIt.registerLazySingleton<LogInRepo>(
//     () => LogInRepoImpl(remoteDataSource: getIt()),
//   );

//   //! Login UseCase
//   getIt.registerLazySingleton<LogInUseCase>(
//     () => LogInUseCase(logInRepo: getIt()),
//   );
// }
