// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i17;
import 'application/auth/authentication/authentication_bloc.dart' as _i18;
import 'application/feed_home.dart/feed_home_bloc.dart' as _i19;
import 'application/other/other_bloc.dart' as _i14;
import 'application/transaction/bloc/transaction_bloc.dart' as _i15;
import 'application/user/user_bloc.dart' as _i16;
import 'domain/auth/i_auth_facade.dart' as _i4;
import 'domain/feed_home/i_feed_home_facade.dart' as _i6;
import 'domain/other/i_other_facade.dart' as _i8;
import 'domain/transaction_data/i_transaction_facade.dart' as _i10;
import 'domain/user/i_user_facade.dart' as _i12;
import 'infrastructure/auth/auth_repository.dart' as _i5;
import 'infrastructure/core/dio_injection_module.dart' as _i20;
import 'infrastructure/feed_home/feed_home_repository.dart' as _i7;
import 'infrastructure/other/other_repository.dart' as _i9;
import 'infrastructure/transaction/transaction_repository.dart' as _i11;
import 'infrastructure/user/user_repository.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioInjectionModule = _$DioInjectionModule();
  gh.lazySingleton<_i3.Dio>(() => dioInjectionModule.dio);
  gh.lazySingleton<_i4.IAuthFacade>(() => _i5.AuthRepository(get<_i3.Dio>()));
  gh.lazySingleton<_i6.IFeedHomeFacade>(
      () => _i7.FeedHomeRepository(get<_i3.Dio>()));
  gh.lazySingleton<_i8.IOtherFacade>(() => _i9.OtherRepository(get<_i3.Dio>()));
  gh.lazySingleton<_i10.ITransactionFacade>(
      () => _i11.TransactionRepository(get<_i3.Dio>()));
  gh.lazySingleton<_i12.IUserFacade>(() => _i13.UserRepository(get<_i3.Dio>()));
  gh.factory<_i14.OtherBloc>(() => _i14.OtherBloc(get<_i8.IOtherFacade>()));
  gh.factory<_i15.TransactionBloc>(
      () => _i15.TransactionBloc(get<_i10.ITransactionFacade>()));
  gh.factory<_i16.UserBloc>(() => _i16.UserBloc(get<_i12.IUserFacade>()));
  gh.factory<_i17.AuthBloc>(() => _i17.AuthBloc(get<_i4.IAuthFacade>()));
  gh.factory<_i18.AuthenticationBloc>(
      () => _i18.AuthenticationBloc(get<_i4.IAuthFacade>()));
  gh.factory<_i19.FeedHomeBloc>(
      () => _i19.FeedHomeBloc(get<_i6.IFeedHomeFacade>()));
  return get;
}

class _$DioInjectionModule extends _i20.DioInjectionModule {}
