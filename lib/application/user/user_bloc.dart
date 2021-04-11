import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_love_iruka/domain/core/general_failure.dart';
import 'package:i_love_iruka/domain/user/i_user_facade.dart';
import 'package:i_love_iruka/domain/user/password_data_model.dart';
import 'package:i_love_iruka/domain/user/user_req_res_data_model.dart';
import 'package:i_love_iruka/presentation/home/user_home/address/address_req_res_data_model.dart';
import 'package:injectable/injectable.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  IUserFacade _iUserFacade;
  UserBloc(this._iUserFacade) : super(_Initial());

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    yield* event.map(
      started: (e) async* {},
      changeProfilePhoto: (e) async* {
        yield UserState.uploadProfilePhoto(none(), true);
        final _result = await _iUserFacade.uploadPhoto(e.file);
        yield UserState.uploadProfilePhoto(some(_result), false);
      },
      changePassword: (_ChangePassword value) async* {
        yield UserState.loading();
        try {
          final result = await _iUserFacade.changePassword(value.password);
          yield result.fold(
            (l) => UserState.error(l),
            (r) => UserState.onChangePassword(r),
          );
        } catch (onError) {
          yield UserState.error(GeneralFailure(onError.toString()));
        }
      },
      updateProfileData: (_UpdateProfileData value) async* {
        yield UserState.onProfileDataUpdated(none(), true);
        try {
          final _result =
              await _iUserFacade.updateUserData(value.requestDataModel);
          yield UserState.onProfileDataUpdated(some(_result), false);
        } catch (e) {
          yield UserState.onProfileDataUpdated(
              some(left(GeneralFailure("Something wrong"))), false);
        }
      },
      getAddress: (_GetAddress value) async* {
        yield UserState.onGetAddress(none(), true);

        try {
          final _result = await _iUserFacade.getAddress();
          yield UserState.onGetAddress(some(_result), false);
        } catch (e) {
          yield UserState.onGetAddress(
              some(left(GeneralFailure(e.toString()))), false);
        }
      },
      changeAddress: (_ChangeAddress value) async* {
        yield UserState.onAddressChanged(none(), true);

        try {
          final _result =
              await _iUserFacade.changeAddress(value.addressRequest);
          yield UserState.onAddressChanged(some(_result), false);
        } catch (e) {
          yield UserState.onAddressChanged(
              some(left(GeneralFailure(e.toString()))), false);
        }
      },
      forgotPassword: (_ForgotPassword value) async* {
        yield UserState.onForgotPassword(none(), true);

        try {
          final _result = await _iUserFacade.forgotPassword(value.email);
          yield UserState.onForgotPassword(some(_result), false);
        } catch (e) {
          yield UserState.onForgotPassword(
              some(left(GeneralFailure(e.toString()))), false);
        }
      },
    );
  }
}
