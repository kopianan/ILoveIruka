// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'application/auth/auth_bloc.dart';
import 'infrastructure/auth/auth_repository.dart';
import 'application/auth/authentication/authentication_bloc.dart';
import 'infrastructure/core/dio_injection_module.dart';
import 'application/feed_home.dart/feed_home_bloc.dart';
import 'infrastructure/feed_home/feed_home_repository.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/feed_home/i_feed_home_facade.dart';
import 'domain/other/i_other_facade.dart';
import 'domain/transaction/i_transaction_facade.dart';
import 'application/other/other_bloc.dart';
import 'infrastructure/other/other_repository.dart';
import 'application/transaction/transaction_bloc.dart';
import 'infrastructure/transaction/transaction_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final dioInjectionModule = _$DioInjectionModule();
  gh.lazySingleton<Dio>(() => dioInjectionModule.dio);
  gh.lazySingleton<IAuthFacade>(() => AuthRepository(get<Dio>()));
  gh.lazySingleton<IFeedHomeFacade>(() => FeedHomeRepository(get<Dio>()));
  gh.lazySingleton<IOtherFacade>(() => OtherRepository(get<Dio>()));
  gh.lazySingleton<ITransactionFacade>(() => TransactionRepository(get<Dio>()));
  gh.factory<OtherBloc>(() => OtherBloc(get<IOtherFacade>()));
  gh.factory<TransactionBloc>(() => TransactionBloc(get<ITransactionFacade>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  gh.factory<AuthenticationBloc>(() => AuthenticationBloc(get<IAuthFacade>()));
  gh.factory<FeedHomeBloc>(() => FeedHomeBloc(get<IFeedHomeFacade>()));
  return get;
}

class _$DioInjectionModule extends DioInjectionModule {}
