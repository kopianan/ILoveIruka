import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_love_iruka/domain/core/general_failure.dart';
import 'package:i_love_iruka/domain/user/i_user_facade.dart';
import 'package:i_love_iruka/domain/user/password_data_model.dart';
import 'package:i_love_iruka/domain/user/user_req_res_data_model.dart';
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
          yield UserState.error(onError);
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
    );
  }
}
