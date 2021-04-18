// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i26;
import 'application/auth/authentication/authentication_bloc.dart' as _i27;
import 'application/feed_home.dart/feed_home_bloc.dart' as _i28;
import 'application/membership/membership_bloc.dart' as _i20;
import 'application/other/other_bloc.dart' as _i21;
import 'application/partnership/partnership_bloc.dart' as _i22;
import 'application/pet/pet_bloc.dart' as _i23;
import 'application/transaction/bloc/transaction_bloc.dart' as _i24;
import 'application/user/user_bloc.dart' as _i25;
import 'domain/auth/i_auth_facade.dart' as _i4;
import 'domain/feed_home/i_feed_home_facade.dart' as _i6;
import 'domain/membership/i_membership_facade.dart' as _i8;
import 'domain/other/i_other_facade.dart' as _i10;
import 'domain/partnership/i_partnership_facade.dart' as _i12;
import 'domain/pets/i_pet_facade.dart' as _i14;
import 'domain/transaction_data/i_transaction_facade.dart' as _i16;
import 'domain/user/i_user_facade.dart' as _i18;
import 'infrastructure/auth/auth_repository.dart' as _i5;
import 'infrastructure/core/dio_injection_module.dart' as _i29;
import 'infrastructure/feed_home/feed_home_repository.dart' as _i7;
import 'infrastructure/membership/membership_repository.dart' as _i9;
import 'infrastructure/other/other_repository.dart' as _i11;
import 'infrastructure/partnership/partnership_repository.dart' as _i13;
import 'infrastructure/pet/pet_repository.dart' as _i15;
import 'infrastructure/transaction/transaction_repository.dart' as _i17;
import 'infrastructure/user/user_repository.dart'
    as _i19; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i8.IMembershipFacade>(
      () => _i9.MembershipRepository(get<_i3.Dio>()));
  gh.lazySingleton<_i10.IOtherFacade>(
      () => _i11.OtherRepository(get<_i3.Dio>()));
  gh.lazySingleton<_i12.IPartnershipFacade>(
      () => _i13.PartnershipRepository(get<_i3.Dio>()));
  gh.lazySingleton<_i14.IPetFacade>(() => _i15.PetRepository(get<_i3.Dio>()));
  gh.lazySingleton<_i16.ITransactionFacade>(
      () => _i17.TransactionRepository(get<_i3.Dio>()));
  gh.lazySingleton<_i18.IUserFacade>(() => _i19.UserRepository(get<_i3.Dio>()));
  gh.factory<_i20.MembershipBloc>(
      () => _i20.MembershipBloc(get<_i8.IMembershipFacade>()));
  gh.factory<_i21.OtherBloc>(() => _i21.OtherBloc(get<_i10.IOtherFacade>()));
  gh.factory<_i22.PartnershipBloc>(
      () => _i22.PartnershipBloc(get<_i12.IPartnershipFacade>()));
  gh.factory<_i23.PetBloc>(() => _i23.PetBloc(get<_i14.IPetFacade>()));
  gh.factory<_i24.TransactionBloc>(
      () => _i24.TransactionBloc(get<_i16.ITransactionFacade>()));
  gh.factory<_i25.UserBloc>(() => _i25.UserBloc(get<_i18.IUserFacade>()));
  gh.factory<_i26.AuthBloc>(() => _i26.AuthBloc(get<_i4.IAuthFacade>()));
  gh.factory<_i27.AuthenticationBloc>(
      () => _i27.AuthenticationBloc(get<_i4.IAuthFacade>()));
  gh.factory<_i28.FeedHomeBloc>(
      () => _i28.FeedHomeBloc(get<_i6.IFeedHomeFacade>()));
  return get;
}

class _$DioInjectionModule extends _i29.DioInjectionModule {}
