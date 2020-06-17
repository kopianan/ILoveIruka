// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:i_love_iruka/infrastructure/core/dio_injection_module.dart';
import 'package:dio/dio.dart';
import 'package:i_love_iruka/infrastructure/auth/auth_repository.dart';
import 'package:i_love_iruka/domain/auth/i_auth_facade.dart';
import 'package:i_love_iruka/infrastructure/feed_home/feed_home_repository.dart';
import 'package:i_love_iruka/domain/feed_home/i_feed_home_facade.dart';
import 'package:i_love_iruka/infrastructure/transaction/transaction_repository.dart';
import 'package:i_love_iruka/domain/transaction/i_transaction_facade.dart';
import 'package:i_love_iruka/application/transaction/transaction_bloc.dart';
import 'package:i_love_iruka/application/auth/auth_bloc.dart';
import 'package:i_love_iruka/application/auth/authentication/authentication_bloc.dart';
import 'package:i_love_iruka/application/feed_home.dart/feed_home_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final dioInjectionModule = _$DioInjectionModule();
  g.registerLazySingleton<Dio>(() => dioInjectionModule.dio);
  g.registerLazySingleton<IAuthFacade>(() => AuthRepository(g<Dio>()));
  g.registerLazySingleton<IFeedHomeFacade>(() => FeedHomeRepository(g<Dio>()));
  g.registerLazySingleton<ITransactionFacade>(
      () => TransactionRepository(g<Dio>()));
  g.registerFactory<TransactionBloc>(
      () => TransactionBloc(g<ITransactionFacade>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
  g.registerFactory<AuthenticationBloc>(
      () => AuthenticationBloc(g<IAuthFacade>()));
  g.registerFactory<FeedHomeBloc>(() => FeedHomeBloc(g<IFeedHomeFacade>()));
}

class _$DioInjectionModule extends DioInjectionModule {}
