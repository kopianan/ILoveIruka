// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PetEventTearOff {
  const _$PetEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  _GetPetList getPetList(GetPetRequestData requestData) {
    return _GetPetList(
      requestData,
    );
  }

// ignore: unused_element
  _UploadPhoto uploadPhoto(File photo, String petId) {
    return _UploadPhoto(
      photo,
      petId,
    );
  }

// ignore: unused_element
  _SaveNewPet saveNewPet(SavePetRequestData petRequestData) {
    return _SaveNewPet(
      petRequestData,
    );
  }

// ignore: unused_element
  _GetMyPet getMyPet() {
    return const _GetMyPet();
  }

// ignore: unused_element
  _GetPetPostById getPetPostById(String id) {
    return _GetPetPostById(
      id,
    );
  }

// ignore: unused_element
  _AddNewPetPost addNewPetPost(PetAddNewPostRequest request, String petId) {
    return _AddNewPetPost(
      request,
      petId,
    );
  }

// ignore: unused_element
  _DeletePetPost deletePetPost(String petId) {
    return _DeletePetPost(
      petId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PetEvent = _$PetEventTearOff();

/// @nodoc
mixin _$PetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult getPetList(GetPetRequestData requestData),
    @required TResult uploadPhoto(File photo, String petId),
    @required TResult saveNewPet(SavePetRequestData petRequestData),
    @required TResult getMyPet(),
    @required TResult getPetPostById(String id),
    @required TResult addNewPetPost(PetAddNewPostRequest request, String petId),
    @required TResult deletePetPost(String petId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult getPetList(GetPetRequestData requestData),
    TResult uploadPhoto(File photo, String petId),
    TResult saveNewPet(SavePetRequestData petRequestData),
    TResult getMyPet(),
    TResult getPetPostById(String id),
    TResult addNewPetPost(PetAddNewPostRequest request, String petId),
    TResult deletePetPost(String petId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult getPetList(_GetPetList value),
    @required TResult uploadPhoto(_UploadPhoto value),
    @required TResult saveNewPet(_SaveNewPet value),
    @required TResult getMyPet(_GetMyPet value),
    @required TResult getPetPostById(_GetPetPostById value),
    @required TResult addNewPetPost(_AddNewPetPost value),
    @required TResult deletePetPost(_DeletePetPost value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult getPetList(_GetPetList value),
    TResult uploadPhoto(_UploadPhoto value),
    TResult saveNewPet(_SaveNewPet value),
    TResult getMyPet(_GetMyPet value),
    TResult getPetPostById(_GetPetPostById value),
    TResult addNewPetPost(_AddNewPetPost value),
    TResult deletePetPost(_DeletePetPost value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PetEventCopyWith<$Res> {
  factory $PetEventCopyWith(PetEvent value, $Res Function(PetEvent) then) =
      _$PetEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PetEventCopyWithImpl<$Res> implements $PetEventCopyWith<$Res> {
  _$PetEventCopyWithImpl(this._value, this._then);

  final PetEvent _value;
  // ignore: unused_field
  final $Res Function(PetEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$PetEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'PetEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult getPetList(GetPetRequestData requestData),
    @required TResult uploadPhoto(File photo, String petId),
    @required TResult saveNewPet(SavePetRequestData petRequestData),
    @required TResult getMyPet(),
    @required TResult getPetPostById(String id),
    @required TResult addNewPetPost(PetAddNewPostRequest request, String petId),
    @required TResult deletePetPost(String petId),
  }) {
    assert(started != null);
    assert(getPetList != null);
    assert(uploadPhoto != null);
    assert(saveNewPet != null);
    assert(getMyPet != null);
    assert(getPetPostById != null);
    assert(addNewPetPost != null);
    assert(deletePetPost != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult getPetList(GetPetRequestData requestData),
    TResult uploadPhoto(File photo, String petId),
    TResult saveNewPet(SavePetRequestData petRequestData),
    TResult getMyPet(),
    TResult getPetPostById(String id),
    TResult addNewPetPost(PetAddNewPostRequest request, String petId),
    TResult deletePetPost(String petId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult getPetList(_GetPetList value),
    @required TResult uploadPhoto(_UploadPhoto value),
    @required TResult saveNewPet(_SaveNewPet value),
    @required TResult getMyPet(_GetMyPet value),
    @required TResult getPetPostById(_GetPetPostById value),
    @required TResult addNewPetPost(_AddNewPetPost value),
    @required TResult deletePetPost(_DeletePetPost value),
  }) {
    assert(started != null);
    assert(getPetList != null);
    assert(uploadPhoto != null);
    assert(saveNewPet != null);
    assert(getMyPet != null);
    assert(getPetPostById != null);
    assert(addNewPetPost != null);
    assert(deletePetPost != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult getPetList(_GetPetList value),
    TResult uploadPhoto(_UploadPhoto value),
    TResult saveNewPet(_SaveNewPet value),
    TResult getMyPet(_GetMyPet value),
    TResult getPetPostById(_GetPetPostById value),
    TResult addNewPetPost(_AddNewPetPost value),
    TResult deletePetPost(_DeletePetPost value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PetEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$GetPetListCopyWith<$Res> {
  factory _$GetPetListCopyWith(
          _GetPetList value, $Res Function(_GetPetList) then) =
      __$GetPetListCopyWithImpl<$Res>;
  $Res call({GetPetRequestData requestData});
}

/// @nodoc
class __$GetPetListCopyWithImpl<$Res> extends _$PetEventCopyWithImpl<$Res>
    implements _$GetPetListCopyWith<$Res> {
  __$GetPetListCopyWithImpl(
      _GetPetList _value, $Res Function(_GetPetList) _then)
      : super(_value, (v) => _then(v as _GetPetList));

  @override
  _GetPetList get _value => super._value as _GetPetList;

  @override
  $Res call({
    Object requestData = freezed,
  }) {
    return _then(_GetPetList(
      requestData == freezed
          ? _value.requestData
          : requestData as GetPetRequestData,
    ));
  }
}

/// @nodoc
class _$_GetPetList implements _GetPetList {
  const _$_GetPetList(this.requestData) : assert(requestData != null);

  @override
  final GetPetRequestData requestData;

  @override
  String toString() {
    return 'PetEvent.getPetList(requestData: $requestData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPetList &&
            (identical(other.requestData, requestData) ||
                const DeepCollectionEquality()
                    .equals(other.requestData, requestData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(requestData);

  @JsonKey(ignore: true)
  @override
  _$GetPetListCopyWith<_GetPetList> get copyWith =>
      __$GetPetListCopyWithImpl<_GetPetList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult getPetList(GetPetRequestData requestData),
    @required TResult uploadPhoto(File photo, String petId),
    @required TResult saveNewPet(SavePetRequestData petRequestData),
    @required TResult getMyPet(),
    @required TResult getPetPostById(String id),
    @required TResult addNewPetPost(PetAddNewPostRequest request, String petId),
    @required TResult deletePetPost(String petId),
  }) {
    assert(started != null);
    assert(getPetList != null);
    assert(uploadPhoto != null);
    assert(saveNewPet != null);
    assert(getMyPet != null);
    assert(getPetPostById != null);
    assert(addNewPetPost != null);
    assert(deletePetPost != null);
    return getPetList(requestData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult getPetList(GetPetRequestData requestData),
    TResult uploadPhoto(File photo, String petId),
    TResult saveNewPet(SavePetRequestData petRequestData),
    TResult getMyPet(),
    TResult getPetPostById(String id),
    TResult addNewPetPost(PetAddNewPostRequest request, String petId),
    TResult deletePetPost(String petId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPetList != null) {
      return getPetList(requestData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult getPetList(_GetPetList value),
    @required TResult uploadPhoto(_UploadPhoto value),
    @required TResult saveNewPet(_SaveNewPet value),
    @required TResult getMyPet(_GetMyPet value),
    @required TResult getPetPostById(_GetPetPostById value),
    @required TResult addNewPetPost(_AddNewPetPost value),
    @required TResult deletePetPost(_DeletePetPost value),
  }) {
    assert(started != null);
    assert(getPetList != null);
    assert(uploadPhoto != null);
    assert(saveNewPet != null);
    assert(getMyPet != null);
    assert(getPetPostById != null);
    assert(addNewPetPost != null);
    assert(deletePetPost != null);
    return getPetList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult getPetList(_GetPetList value),
    TResult uploadPhoto(_UploadPhoto value),
    TResult saveNewPet(_SaveNewPet value),
    TResult getMyPet(_GetMyPet value),
    TResult getPetPostById(_GetPetPostById value),
    TResult addNewPetPost(_AddNewPetPost value),
    TResult deletePetPost(_DeletePetPost value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPetList != null) {
      return getPetList(this);
    }
    return orElse();
  }
}

abstract class _GetPetList implements PetEvent {
  const factory _GetPetList(GetPetRequestData requestData) = _$_GetPetList;

  GetPetRequestData get requestData;
  @JsonKey(ignore: true)
  _$GetPetListCopyWith<_GetPetList> get copyWith;
}

/// @nodoc
abstract class _$UploadPhotoCopyWith<$Res> {
  factory _$UploadPhotoCopyWith(
          _UploadPhoto value, $Res Function(_UploadPhoto) then) =
      __$UploadPhotoCopyWithImpl<$Res>;
  $Res call({File photo, String petId});
}

/// @nodoc
class __$UploadPhotoCopyWithImpl<$Res> extends _$PetEventCopyWithImpl<$Res>
    implements _$UploadPhotoCopyWith<$Res> {
  __$UploadPhotoCopyWithImpl(
      _UploadPhoto _value, $Res Function(_UploadPhoto) _then)
      : super(_value, (v) => _then(v as _UploadPhoto));

  @override
  _UploadPhoto get _value => super._value as _UploadPhoto;

  @override
  $Res call({
    Object photo = freezed,
    Object petId = freezed,
  }) {
    return _then(_UploadPhoto(
      photo == freezed ? _value.photo : photo as File,
      petId == freezed ? _value.petId : petId as String,
    ));
  }
}

/// @nodoc
class _$_UploadPhoto implements _UploadPhoto {
  const _$_UploadPhoto(this.photo, this.petId)
      : assert(photo != null),
        assert(petId != null);

  @override
  final File photo;
  @override
  final String petId;

  @override
  String toString() {
    return 'PetEvent.uploadPhoto(photo: $photo, petId: $petId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadPhoto &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.petId, petId) ||
                const DeepCollectionEquality().equals(other.petId, petId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(petId);

  @JsonKey(ignore: true)
  @override
  _$UploadPhotoCopyWith<_UploadPhoto> get copyWith =>
      __$UploadPhotoCopyWithImpl<_UploadPhoto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult getPetList(GetPetRequestData requestData),
    @required TResult uploadPhoto(File photo, String petId),
    @required TResult saveNewPet(SavePetRequestData petRequestData),
    @required TResult getMyPet(),
    @required TResult getPetPostById(String id),
    @required TResult addNewPetPost(PetAddNewPostRequest request, String petId),
    @required TResult deletePetPost(String petId),
  }) {
    assert(started != null);
    assert(getPetList != null);
    assert(uploadPhoto != null);
    assert(saveNewPet != null);
    assert(getMyPet != null);
    assert(getPetPostById != null);
    assert(addNewPetPost != null);
    assert(deletePetPost != null);
    return uploadPhoto(photo, petId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult getPetList(GetPetRequestData requestData),
    TResult uploadPhoto(File photo, String petId),
    TResult saveNewPet(SavePetRequestData petRequestData),
    TResult getMyPet(),
    TResult getPetPostById(String id),
    TResult addNewPetPost(PetAddNewPostRequest request, String petId),
    TResult deletePetPost(String petId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadPhoto != null) {
      return uploadPhoto(photo, petId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult getPetList(_GetPetList value),
    @required TResult uploadPhoto(_UploadPhoto value),
    @required TResult saveNewPet(_SaveNewPet value),
    @required TResult getMyPet(_GetMyPet value),
    @required TResult getPetPostById(_GetPetPostById value),
    @required TResult addNewPetPost(_AddNewPetPost value),
    @required TResult deletePetPost(_DeletePetPost value),
  }) {
    assert(started != null);
    assert(getPetList != null);
    assert(uploadPhoto != null);
    assert(saveNewPet != null);
    assert(getMyPet != null);
    assert(getPetPostById != null);
    assert(addNewPetPost != null);
    assert(deletePetPost != null);
    return uploadPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult getPetList(_GetPetList value),
    TResult uploadPhoto(_UploadPhoto value),
    TResult saveNewPet(_SaveNewPet value),
    TResult getMyPet(_GetMyPet value),
    TResult getPetPostById(_GetPetPostById value),
    TResult addNewPetPost(_AddNewPetPost value),
    TResult deletePetPost(_DeletePetPost value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadPhoto != null) {
      return uploadPhoto(this);
    }
    return orElse();
  }
}

abstract class _UploadPhoto implements PetEvent {
  const factory _UploadPhoto(File photo, String petId) = _$_UploadPhoto;

  File get photo;
  String get petId;
  @JsonKey(ignore: true)
  _$UploadPhotoCopyWith<_UploadPhoto> get copyWith;
}

/// @nodoc
abstract class _$SaveNewPetCopyWith<$Res> {
  factory _$SaveNewPetCopyWith(
          _SaveNewPet value, $Res Function(_SaveNewPet) then) =
      __$SaveNewPetCopyWithImpl<$Res>;
  $Res call({SavePetRequestData petRequestData});
}

/// @nodoc
class __$SaveNewPetCopyWithImpl<$Res> extends _$PetEventCopyWithImpl<$Res>
    implements _$SaveNewPetCopyWith<$Res> {
  __$SaveNewPetCopyWithImpl(
      _SaveNewPet _value, $Res Function(_SaveNewPet) _then)
      : super(_value, (v) => _then(v as _SaveNewPet));

  @override
  _SaveNewPet get _value => super._value as _SaveNewPet;

  @override
  $Res call({
    Object petRequestData = freezed,
  }) {
    return _then(_SaveNewPet(
      petRequestData == freezed
          ? _value.petRequestData
          : petRequestData as SavePetRequestData,
    ));
  }
}

/// @nodoc
class _$_SaveNewPet implements _SaveNewPet {
  const _$_SaveNewPet(this.petRequestData) : assert(petRequestData != null);

  @override
  final SavePetRequestData petRequestData;

  @override
  String toString() {
    return 'PetEvent.saveNewPet(petRequestData: $petRequestData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SaveNewPet &&
            (identical(other.petRequestData, petRequestData) ||
                const DeepCollectionEquality()
                    .equals(other.petRequestData, petRequestData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(petRequestData);

  @JsonKey(ignore: true)
  @override
  _$SaveNewPetCopyWith<_SaveNewPet> get copyWith =>
      __$SaveNewPetCopyWithImpl<_SaveNewPet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult getPetList(GetPetRequestData requestData),
    @required TResult uploadPhoto(File photo, String petId),
    @required TResult saveNewPet(SavePetRequestData petRequestData),
    @required TResult getMyPet(),
    @required TResult getPetPostById(String id),
    @required TResult addNewPetPost(PetAddNewPostRequest request, String petId),
    @required TResult deletePetPost(String petId),
  }) {
    assert(started != null);
    assert(getPetList != null);
    assert(uploadPhoto != null);
    assert(saveNewPet != null);
    assert(getMyPet != null);
    assert(getPetPostById != null);
    assert(addNewPetPost != null);
    assert(deletePetPost != null);
    return saveNewPet(petRequestData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult getPetList(GetPetRequestData requestData),
    TResult uploadPhoto(File photo, String petId),
    TResult saveNewPet(SavePetRequestData petRequestData),
    TResult getMyPet(),
    TResult getPetPostById(String id),
    TResult addNewPetPost(PetAddNewPostRequest request, String petId),
    TResult deletePetPost(String petId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saveNewPet != null) {
      return saveNewPet(petRequestData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult getPetList(_GetPetList value),
    @required TResult uploadPhoto(_UploadPhoto value),
    @required TResult saveNewPet(_SaveNewPet value),
    @required TResult getMyPet(_GetMyPet value),
    @required TResult getPetPostById(_GetPetPostById value),
    @required TResult addNewPetPost(_AddNewPetPost value),
    @required TResult deletePetPost(_DeletePetPost value),
  }) {
    assert(started != null);
    assert(getPetList != null);
    assert(uploadPhoto != null);
    assert(saveNewPet != null);
    assert(getMyPet != null);
    assert(getPetPostById != null);
    assert(addNewPetPost != null);
    assert(deletePetPost != null);
    return saveNewPet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult getPetList(_GetPetList value),
    TResult uploadPhoto(_UploadPhoto value),
    TResult saveNewPet(_SaveNewPet value),
    TResult getMyPet(_GetMyPet value),
    TResult getPetPostById(_GetPetPostById value),
    TResult addNewPetPost(_AddNewPetPost value),
    TResult deletePetPost(_DeletePetPost value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saveNewPet != null) {
      return saveNewPet(this);
    }
    return orElse();
  }
}

abstract class _SaveNewPet implements PetEvent {
  const factory _SaveNewPet(SavePetRequestData petRequestData) = _$_SaveNewPet;

  SavePetRequestData get petRequestData;
  @JsonKey(ignore: true)
  _$SaveNewPetCopyWith<_SaveNewPet> get copyWith;
}

/// @nodoc
abstract class _$GetMyPetCopyWith<$Res> {
  factory _$GetMyPetCopyWith(_GetMyPet value, $Res Function(_GetMyPet) then) =
      __$GetMyPetCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetMyPetCopyWithImpl<$Res> extends _$PetEventCopyWithImpl<$Res>
    implements _$GetMyPetCopyWith<$Res> {
  __$GetMyPetCopyWithImpl(_GetMyPet _value, $Res Function(_GetMyPet) _then)
      : super(_value, (v) => _then(v as _GetMyPet));

  @override
  _GetMyPet get _value => super._value as _GetMyPet;
}

/// @nodoc
class _$_GetMyPet implements _GetMyPet {
  const _$_GetMyPet();

  @override
  String toString() {
    return 'PetEvent.getMyPet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetMyPet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult getPetList(GetPetRequestData requestData),
    @required TResult uploadPhoto(File photo, String petId),
    @required TResult saveNewPet(SavePetRequestData petRequestData),
    @required TResult getMyPet(),
    @required TResult getPetPostById(String id),
    @required TResult addNewPetPost(PetAddNewPostRequest request, String petId),
    @required TResult deletePetPost(String petId),
  }) {
    assert(started != null);
    assert(getPetList != null);
    assert(uploadPhoto != null);
    assert(saveNewPet != null);
    assert(getMyPet != null);
    assert(getPetPostById != null);
    assert(addNewPetPost != null);
    assert(deletePetPost != null);
    return getMyPet();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult getPetList(GetPetRequestData requestData),
    TResult uploadPhoto(File photo, String petId),
    TResult saveNewPet(SavePetRequestData petRequestData),
    TResult getMyPet(),
    TResult getPetPostById(String id),
    TResult addNewPetPost(PetAddNewPostRequest request, String petId),
    TResult deletePetPost(String petId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getMyPet != null) {
      return getMyPet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult getPetList(_GetPetList value),
    @required TResult uploadPhoto(_UploadPhoto value),
    @required TResult saveNewPet(_SaveNewPet value),
    @required TResult getMyPet(_GetMyPet value),
    @required TResult getPetPostById(_GetPetPostById value),
    @required TResult addNewPetPost(_AddNewPetPost value),
    @required TResult deletePetPost(_DeletePetPost value),
  }) {
    assert(started != null);
    assert(getPetList != null);
    assert(uploadPhoto != null);
    assert(saveNewPet != null);
    assert(getMyPet != null);
    assert(getPetPostById != null);
    assert(addNewPetPost != null);
    assert(deletePetPost != null);
    return getMyPet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult getPetList(_GetPetList value),
    TResult uploadPhoto(_UploadPhoto value),
    TResult saveNewPet(_SaveNewPet value),
    TResult getMyPet(_GetMyPet value),
    TResult getPetPostById(_GetPetPostById value),
    TResult addNewPetPost(_AddNewPetPost value),
    TResult deletePetPost(_DeletePetPost value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getMyPet != null) {
      return getMyPet(this);
    }
    return orElse();
  }
}

abstract class _GetMyPet implements PetEvent {
  const factory _GetMyPet() = _$_GetMyPet;
}

/// @nodoc
abstract class _$GetPetPostByIdCopyWith<$Res> {
  factory _$GetPetPostByIdCopyWith(
          _GetPetPostById value, $Res Function(_GetPetPostById) then) =
      __$GetPetPostByIdCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$GetPetPostByIdCopyWithImpl<$Res> extends _$PetEventCopyWithImpl<$Res>
    implements _$GetPetPostByIdCopyWith<$Res> {
  __$GetPetPostByIdCopyWithImpl(
      _GetPetPostById _value, $Res Function(_GetPetPostById) _then)
      : super(_value, (v) => _then(v as _GetPetPostById));

  @override
  _GetPetPostById get _value => super._value as _GetPetPostById;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_GetPetPostById(
      id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$_GetPetPostById implements _GetPetPostById {
  const _$_GetPetPostById(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'PetEvent.getPetPostById(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPetPostById &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$GetPetPostByIdCopyWith<_GetPetPostById> get copyWith =>
      __$GetPetPostByIdCopyWithImpl<_GetPetPostById>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult getPetList(GetPetRequestData requestData),
    @required TResult uploadPhoto(File photo, String petId),
    @required TResult saveNewPet(SavePetRequestData petRequestData),
    @required TResult getMyPet(),
    @required TResult getPetPostById(String id),
    @required TResult addNewPetPost(PetAddNewPostRequest request, String petId),
    @required TResult deletePetPost(String petId),
  }) {
    assert(started != null);
    assert(getPetList != null);
    assert(uploadPhoto != null);
    assert(saveNewPet != null);
    assert(getMyPet != null);
    assert(getPetPostById != null);
    assert(addNewPetPost != null);
    assert(deletePetPost != null);
    return getPetPostById(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult getPetList(GetPetRequestData requestData),
    TResult uploadPhoto(File photo, String petId),
    TResult saveNewPet(SavePetRequestData petRequestData),
    TResult getMyPet(),
    TResult getPetPostById(String id),
    TResult addNewPetPost(PetAddNewPostRequest request, String petId),
    TResult deletePetPost(String petId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPetPostById != null) {
      return getPetPostById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult getPetList(_GetPetList value),
    @required TResult uploadPhoto(_UploadPhoto value),
    @required TResult saveNewPet(_SaveNewPet value),
    @required TResult getMyPet(_GetMyPet value),
    @required TResult getPetPostById(_GetPetPostById value),
    @required TResult addNewPetPost(_AddNewPetPost value),
    @required TResult deletePetPost(_DeletePetPost value),
  }) {
    assert(started != null);
    assert(getPetList != null);
    assert(uploadPhoto != null);
    assert(saveNewPet != null);
    assert(getMyPet != null);
    assert(getPetPostById != null);
    assert(addNewPetPost != null);
    assert(deletePetPost != null);
    return getPetPostById(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult getPetList(_GetPetList value),
    TResult uploadPhoto(_UploadPhoto value),
    TResult saveNewPet(_SaveNewPet value),
    TResult getMyPet(_GetMyPet value),
    TResult getPetPostById(_GetPetPostById value),
    TResult addNewPetPost(_AddNewPetPost value),
    TResult deletePetPost(_DeletePetPost value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPetPostById != null) {
      return getPetPostById(this);
    }
    return orElse();
  }
}

abstract class _GetPetPostById implements PetEvent {
  const factory _GetPetPostById(String id) = _$_GetPetPostById;

  String get id;
  @JsonKey(ignore: true)
  _$GetPetPostByIdCopyWith<_GetPetPostById> get copyWith;
}

/// @nodoc
abstract class _$AddNewPetPostCopyWith<$Res> {
  factory _$AddNewPetPostCopyWith(
          _AddNewPetPost value, $Res Function(_AddNewPetPost) then) =
      __$AddNewPetPostCopyWithImpl<$Res>;
  $Res call({PetAddNewPostRequest request, String petId});

  $PetAddNewPostRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$AddNewPetPostCopyWithImpl<$Res> extends _$PetEventCopyWithImpl<$Res>
    implements _$AddNewPetPostCopyWith<$Res> {
  __$AddNewPetPostCopyWithImpl(
      _AddNewPetPost _value, $Res Function(_AddNewPetPost) _then)
      : super(_value, (v) => _then(v as _AddNewPetPost));

  @override
  _AddNewPetPost get _value => super._value as _AddNewPetPost;

  @override
  $Res call({
    Object request = freezed,
    Object petId = freezed,
  }) {
    return _then(_AddNewPetPost(
      request == freezed ? _value.request : request as PetAddNewPostRequest,
      petId == freezed ? _value.petId : petId as String,
    ));
  }

  @override
  $PetAddNewPostRequestCopyWith<$Res> get request {
    if (_value.request == null) {
      return null;
    }
    return $PetAddNewPostRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc
class _$_AddNewPetPost implements _AddNewPetPost {
  const _$_AddNewPetPost(this.request, this.petId)
      : assert(request != null),
        assert(petId != null);

  @override
  final PetAddNewPostRequest request;
  @override
  final String petId;

  @override
  String toString() {
    return 'PetEvent.addNewPetPost(request: $request, petId: $petId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddNewPetPost &&
            (identical(other.request, request) ||
                const DeepCollectionEquality()
                    .equals(other.request, request)) &&
            (identical(other.petId, petId) ||
                const DeepCollectionEquality().equals(other.petId, petId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(request) ^
      const DeepCollectionEquality().hash(petId);

  @JsonKey(ignore: true)
  @override
  _$AddNewPetPostCopyWith<_AddNewPetPost> get copyWith =>
      __$AddNewPetPostCopyWithImpl<_AddNewPetPost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult getPetList(GetPetRequestData requestData),
    @required TResult uploadPhoto(File photo, String petId),
    @required TResult saveNewPet(SavePetRequestData petRequestData),
    @required TResult getMyPet(),
    @required TResult getPetPostById(String id),
    @required TResult addNewPetPost(PetAddNewPostRequest request, String petId),
    @required TResult deletePetPost(String petId),
  }) {
    assert(started != null);
    assert(getPetList != null);
    assert(uploadPhoto != null);
    assert(saveNewPet != null);
    assert(getMyPet != null);
    assert(getPetPostById != null);
    assert(addNewPetPost != null);
    assert(deletePetPost != null);
    return addNewPetPost(request, petId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult getPetList(GetPetRequestData requestData),
    TResult uploadPhoto(File photo, String petId),
    TResult saveNewPet(SavePetRequestData petRequestData),
    TResult getMyPet(),
    TResult getPetPostById(String id),
    TResult addNewPetPost(PetAddNewPostRequest request, String petId),
    TResult deletePetPost(String petId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addNewPetPost != null) {
      return addNewPetPost(request, petId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult getPetList(_GetPetList value),
    @required TResult uploadPhoto(_UploadPhoto value),
    @required TResult saveNewPet(_SaveNewPet value),
    @required TResult getMyPet(_GetMyPet value),
    @required TResult getPetPostById(_GetPetPostById value),
    @required TResult addNewPetPost(_AddNewPetPost value),
    @required TResult deletePetPost(_DeletePetPost value),
  }) {
    assert(started != null);
    assert(getPetList != null);
    assert(uploadPhoto != null);
    assert(saveNewPet != null);
    assert(getMyPet != null);
    assert(getPetPostById != null);
    assert(addNewPetPost != null);
    assert(deletePetPost != null);
    return addNewPetPost(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult getPetList(_GetPetList value),
    TResult uploadPhoto(_UploadPhoto value),
    TResult saveNewPet(_SaveNewPet value),
    TResult getMyPet(_GetMyPet value),
    TResult getPetPostById(_GetPetPostById value),
    TResult addNewPetPost(_AddNewPetPost value),
    TResult deletePetPost(_DeletePetPost value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addNewPetPost != null) {
      return addNewPetPost(this);
    }
    return orElse();
  }
}

abstract class _AddNewPetPost implements PetEvent {
  const factory _AddNewPetPost(PetAddNewPostRequest request, String petId) =
      _$_AddNewPetPost;

  PetAddNewPostRequest get request;
  String get petId;
  @JsonKey(ignore: true)
  _$AddNewPetPostCopyWith<_AddNewPetPost> get copyWith;
}

/// @nodoc
abstract class _$DeletePetPostCopyWith<$Res> {
  factory _$DeletePetPostCopyWith(
          _DeletePetPost value, $Res Function(_DeletePetPost) then) =
      __$DeletePetPostCopyWithImpl<$Res>;
  $Res call({String petId});
}

/// @nodoc
class __$DeletePetPostCopyWithImpl<$Res> extends _$PetEventCopyWithImpl<$Res>
    implements _$DeletePetPostCopyWith<$Res> {
  __$DeletePetPostCopyWithImpl(
      _DeletePetPost _value, $Res Function(_DeletePetPost) _then)
      : super(_value, (v) => _then(v as _DeletePetPost));

  @override
  _DeletePetPost get _value => super._value as _DeletePetPost;

  @override
  $Res call({
    Object petId = freezed,
  }) {
    return _then(_DeletePetPost(
      petId == freezed ? _value.petId : petId as String,
    ));
  }
}

/// @nodoc
class _$_DeletePetPost implements _DeletePetPost {
  const _$_DeletePetPost(this.petId) : assert(petId != null);

  @override
  final String petId;

  @override
  String toString() {
    return 'PetEvent.deletePetPost(petId: $petId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeletePetPost &&
            (identical(other.petId, petId) ||
                const DeepCollectionEquality().equals(other.petId, petId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(petId);

  @JsonKey(ignore: true)
  @override
  _$DeletePetPostCopyWith<_DeletePetPost> get copyWith =>
      __$DeletePetPostCopyWithImpl<_DeletePetPost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult getPetList(GetPetRequestData requestData),
    @required TResult uploadPhoto(File photo, String petId),
    @required TResult saveNewPet(SavePetRequestData petRequestData),
    @required TResult getMyPet(),
    @required TResult getPetPostById(String id),
    @required TResult addNewPetPost(PetAddNewPostRequest request, String petId),
    @required TResult deletePetPost(String petId),
  }) {
    assert(started != null);
    assert(getPetList != null);
    assert(uploadPhoto != null);
    assert(saveNewPet != null);
    assert(getMyPet != null);
    assert(getPetPostById != null);
    assert(addNewPetPost != null);
    assert(deletePetPost != null);
    return deletePetPost(petId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult getPetList(GetPetRequestData requestData),
    TResult uploadPhoto(File photo, String petId),
    TResult saveNewPet(SavePetRequestData petRequestData),
    TResult getMyPet(),
    TResult getPetPostById(String id),
    TResult addNewPetPost(PetAddNewPostRequest request, String petId),
    TResult deletePetPost(String petId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deletePetPost != null) {
      return deletePetPost(petId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult getPetList(_GetPetList value),
    @required TResult uploadPhoto(_UploadPhoto value),
    @required TResult saveNewPet(_SaveNewPet value),
    @required TResult getMyPet(_GetMyPet value),
    @required TResult getPetPostById(_GetPetPostById value),
    @required TResult addNewPetPost(_AddNewPetPost value),
    @required TResult deletePetPost(_DeletePetPost value),
  }) {
    assert(started != null);
    assert(getPetList != null);
    assert(uploadPhoto != null);
    assert(saveNewPet != null);
    assert(getMyPet != null);
    assert(getPetPostById != null);
    assert(addNewPetPost != null);
    assert(deletePetPost != null);
    return deletePetPost(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult getPetList(_GetPetList value),
    TResult uploadPhoto(_UploadPhoto value),
    TResult saveNewPet(_SaveNewPet value),
    TResult getMyPet(_GetMyPet value),
    TResult getPetPostById(_GetPetPostById value),
    TResult addNewPetPost(_AddNewPetPost value),
    TResult deletePetPost(_DeletePetPost value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deletePetPost != null) {
      return deletePetPost(this);
    }
    return orElse();
  }
}

abstract class _DeletePetPost implements PetEvent {
  const factory _DeletePetPost(String petId) = _$_DeletePetPost;

  String get petId;
  @JsonKey(ignore: true)
  _$DeletePetPostCopyWith<_DeletePetPost> get copyWith;
}

/// @nodoc
class _$PetStateTearOff {
  const _$PetStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Error error(GeneralFailure failure) {
    return _Error(
      failure,
    );
  }

// ignore: unused_element
  _OnGetPetListData onGetPetListData(List<PetDataModel> petList) {
    return _OnGetPetListData(
      petList,
    );
  }

// ignore: unused_element
  _OnUploadPhoto onUploadPhoto(String photo) {
    return _OnUploadPhoto(
      photo,
    );
  }

// ignore: unused_element
  _OnSaveNewPet onSaveNewPet(PetDataModel data) {
    return _OnSaveNewPet(
      data,
    );
  }

// ignore: unused_element
  _OnGetMyPet onGetMyPet(List<PetDataModel> list) {
    return _OnGetMyPet(
      list,
    );
  }

// ignore: unused_element
  _OnGetPetPostById onGetPetPostById(List<PetPostDataModel> list) {
    return _OnGetPetPostById(
      list,
    );
  }

// ignore: unused_element
  _OnAddNewPost onAddNewPost(String status) {
    return _OnAddNewPost(
      status,
    );
  }

// ignore: unused_element
  _OnPetPostDeleted onPetPostDeleted(String status) {
    return _OnPetPostDeleted(
      status,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PetState = _$PetStateTearOff();

/// @nodoc
mixin _$PetState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onGetPetListData(List<PetDataModel> petList),
    @required TResult onUploadPhoto(String photo),
    @required TResult onSaveNewPet(PetDataModel data),
    @required TResult onGetMyPet(List<PetDataModel> list),
    @required TResult onGetPetPostById(List<PetPostDataModel> list),
    @required TResult onAddNewPost(String status),
    @required TResult onPetPostDeleted(String status),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onGetPetListData(List<PetDataModel> petList),
    TResult onUploadPhoto(String photo),
    TResult onSaveNewPet(PetDataModel data),
    TResult onGetMyPet(List<PetDataModel> list),
    TResult onGetPetPostById(List<PetPostDataModel> list),
    TResult onAddNewPost(String status),
    TResult onPetPostDeleted(String status),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetPetListData(_OnGetPetListData value),
    @required TResult onUploadPhoto(_OnUploadPhoto value),
    @required TResult onSaveNewPet(_OnSaveNewPet value),
    @required TResult onGetMyPet(_OnGetMyPet value),
    @required TResult onGetPetPostById(_OnGetPetPostById value),
    @required TResult onAddNewPost(_OnAddNewPost value),
    @required TResult onPetPostDeleted(_OnPetPostDeleted value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetPetListData(_OnGetPetListData value),
    TResult onUploadPhoto(_OnUploadPhoto value),
    TResult onSaveNewPet(_OnSaveNewPet value),
    TResult onGetMyPet(_OnGetMyPet value),
    TResult onGetPetPostById(_OnGetPetPostById value),
    TResult onAddNewPost(_OnAddNewPost value),
    TResult onPetPostDeleted(_OnPetPostDeleted value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PetStateCopyWith<$Res> {
  factory $PetStateCopyWith(PetState value, $Res Function(PetState) then) =
      _$PetStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PetStateCopyWithImpl<$Res> implements $PetStateCopyWith<$Res> {
  _$PetStateCopyWithImpl(this._value, this._then);

  final PetState _value;
  // ignore: unused_field
  final $Res Function(PetState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PetStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PetState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onGetPetListData(List<PetDataModel> petList),
    @required TResult onUploadPhoto(String photo),
    @required TResult onSaveNewPet(PetDataModel data),
    @required TResult onGetMyPet(List<PetDataModel> list),
    @required TResult onGetPetPostById(List<PetPostDataModel> list),
    @required TResult onAddNewPost(String status),
    @required TResult onPetPostDeleted(String status),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPetListData != null);
    assert(onUploadPhoto != null);
    assert(onSaveNewPet != null);
    assert(onGetMyPet != null);
    assert(onGetPetPostById != null);
    assert(onAddNewPost != null);
    assert(onPetPostDeleted != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onGetPetListData(List<PetDataModel> petList),
    TResult onUploadPhoto(String photo),
    TResult onSaveNewPet(PetDataModel data),
    TResult onGetMyPet(List<PetDataModel> list),
    TResult onGetPetPostById(List<PetPostDataModel> list),
    TResult onAddNewPost(String status),
    TResult onPetPostDeleted(String status),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetPetListData(_OnGetPetListData value),
    @required TResult onUploadPhoto(_OnUploadPhoto value),
    @required TResult onSaveNewPet(_OnSaveNewPet value),
    @required TResult onGetMyPet(_OnGetMyPet value),
    @required TResult onGetPetPostById(_OnGetPetPostById value),
    @required TResult onAddNewPost(_OnAddNewPost value),
    @required TResult onPetPostDeleted(_OnPetPostDeleted value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPetListData != null);
    assert(onUploadPhoto != null);
    assert(onSaveNewPet != null);
    assert(onGetMyPet != null);
    assert(onGetPetPostById != null);
    assert(onAddNewPost != null);
    assert(onPetPostDeleted != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetPetListData(_OnGetPetListData value),
    TResult onUploadPhoto(_OnUploadPhoto value),
    TResult onSaveNewPet(_OnSaveNewPet value),
    TResult onGetMyPet(_OnGetMyPet value),
    TResult onGetPetPostById(_OnGetPetPostById value),
    TResult onAddNewPost(_OnAddNewPost value),
    TResult onPetPostDeleted(_OnPetPostDeleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PetState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$PetStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'PetState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onGetPetListData(List<PetDataModel> petList),
    @required TResult onUploadPhoto(String photo),
    @required TResult onSaveNewPet(PetDataModel data),
    @required TResult onGetMyPet(List<PetDataModel> list),
    @required TResult onGetPetPostById(List<PetPostDataModel> list),
    @required TResult onAddNewPost(String status),
    @required TResult onPetPostDeleted(String status),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPetListData != null);
    assert(onUploadPhoto != null);
    assert(onSaveNewPet != null);
    assert(onGetMyPet != null);
    assert(onGetPetPostById != null);
    assert(onAddNewPost != null);
    assert(onPetPostDeleted != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onGetPetListData(List<PetDataModel> petList),
    TResult onUploadPhoto(String photo),
    TResult onSaveNewPet(PetDataModel data),
    TResult onGetMyPet(List<PetDataModel> list),
    TResult onGetPetPostById(List<PetPostDataModel> list),
    TResult onAddNewPost(String status),
    TResult onPetPostDeleted(String status),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetPetListData(_OnGetPetListData value),
    @required TResult onUploadPhoto(_OnUploadPhoto value),
    @required TResult onSaveNewPet(_OnSaveNewPet value),
    @required TResult onGetMyPet(_OnGetMyPet value),
    @required TResult onGetPetPostById(_OnGetPetPostById value),
    @required TResult onAddNewPost(_OnAddNewPost value),
    @required TResult onPetPostDeleted(_OnPetPostDeleted value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPetListData != null);
    assert(onUploadPhoto != null);
    assert(onSaveNewPet != null);
    assert(onGetMyPet != null);
    assert(onGetPetPostById != null);
    assert(onAddNewPost != null);
    assert(onPetPostDeleted != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetPetListData(_OnGetPetListData value),
    TResult onUploadPhoto(_OnUploadPhoto value),
    TResult onSaveNewPet(_OnSaveNewPet value),
    TResult onGetMyPet(_OnGetMyPet value),
    TResult onGetPetPostById(_OnGetPetPostById value),
    TResult onAddNewPost(_OnAddNewPost value),
    TResult onPetPostDeleted(_OnPetPostDeleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PetState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({GeneralFailure failure});

  $GeneralFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$PetStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_Error(
      failure == freezed ? _value.failure : failure as GeneralFailure,
    ));
  }

  @override
  $GeneralFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $GeneralFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_Error implements _Error {
  const _$_Error(this.failure) : assert(failure != null);

  @override
  final GeneralFailure failure;

  @override
  String toString() {
    return 'PetState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onGetPetListData(List<PetDataModel> petList),
    @required TResult onUploadPhoto(String photo),
    @required TResult onSaveNewPet(PetDataModel data),
    @required TResult onGetMyPet(List<PetDataModel> list),
    @required TResult onGetPetPostById(List<PetPostDataModel> list),
    @required TResult onAddNewPost(String status),
    @required TResult onPetPostDeleted(String status),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPetListData != null);
    assert(onUploadPhoto != null);
    assert(onSaveNewPet != null);
    assert(onGetMyPet != null);
    assert(onGetPetPostById != null);
    assert(onAddNewPost != null);
    assert(onPetPostDeleted != null);
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onGetPetListData(List<PetDataModel> petList),
    TResult onUploadPhoto(String photo),
    TResult onSaveNewPet(PetDataModel data),
    TResult onGetMyPet(List<PetDataModel> list),
    TResult onGetPetPostById(List<PetPostDataModel> list),
    TResult onAddNewPost(String status),
    TResult onPetPostDeleted(String status),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetPetListData(_OnGetPetListData value),
    @required TResult onUploadPhoto(_OnUploadPhoto value),
    @required TResult onSaveNewPet(_OnSaveNewPet value),
    @required TResult onGetMyPet(_OnGetMyPet value),
    @required TResult onGetPetPostById(_OnGetPetPostById value),
    @required TResult onAddNewPost(_OnAddNewPost value),
    @required TResult onPetPostDeleted(_OnPetPostDeleted value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPetListData != null);
    assert(onUploadPhoto != null);
    assert(onSaveNewPet != null);
    assert(onGetMyPet != null);
    assert(onGetPetPostById != null);
    assert(onAddNewPost != null);
    assert(onPetPostDeleted != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetPetListData(_OnGetPetListData value),
    TResult onUploadPhoto(_OnUploadPhoto value),
    TResult onSaveNewPet(_OnSaveNewPet value),
    TResult onGetMyPet(_OnGetMyPet value),
    TResult onGetPetPostById(_OnGetPetPostById value),
    TResult onAddNewPost(_OnAddNewPost value),
    TResult onPetPostDeleted(_OnPetPostDeleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PetState {
  const factory _Error(GeneralFailure failure) = _$_Error;

  GeneralFailure get failure;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith;
}

/// @nodoc
abstract class _$OnGetPetListDataCopyWith<$Res> {
  factory _$OnGetPetListDataCopyWith(
          _OnGetPetListData value, $Res Function(_OnGetPetListData) then) =
      __$OnGetPetListDataCopyWithImpl<$Res>;
  $Res call({List<PetDataModel> petList});
}

/// @nodoc
class __$OnGetPetListDataCopyWithImpl<$Res> extends _$PetStateCopyWithImpl<$Res>
    implements _$OnGetPetListDataCopyWith<$Res> {
  __$OnGetPetListDataCopyWithImpl(
      _OnGetPetListData _value, $Res Function(_OnGetPetListData) _then)
      : super(_value, (v) => _then(v as _OnGetPetListData));

  @override
  _OnGetPetListData get _value => super._value as _OnGetPetListData;

  @override
  $Res call({
    Object petList = freezed,
  }) {
    return _then(_OnGetPetListData(
      petList == freezed ? _value.petList : petList as List<PetDataModel>,
    ));
  }
}

/// @nodoc
class _$_OnGetPetListData implements _OnGetPetListData {
  const _$_OnGetPetListData(this.petList) : assert(petList != null);

  @override
  final List<PetDataModel> petList;

  @override
  String toString() {
    return 'PetState.onGetPetListData(petList: $petList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetPetListData &&
            (identical(other.petList, petList) ||
                const DeepCollectionEquality().equals(other.petList, petList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(petList);

  @JsonKey(ignore: true)
  @override
  _$OnGetPetListDataCopyWith<_OnGetPetListData> get copyWith =>
      __$OnGetPetListDataCopyWithImpl<_OnGetPetListData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onGetPetListData(List<PetDataModel> petList),
    @required TResult onUploadPhoto(String photo),
    @required TResult onSaveNewPet(PetDataModel data),
    @required TResult onGetMyPet(List<PetDataModel> list),
    @required TResult onGetPetPostById(List<PetPostDataModel> list),
    @required TResult onAddNewPost(String status),
    @required TResult onPetPostDeleted(String status),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPetListData != null);
    assert(onUploadPhoto != null);
    assert(onSaveNewPet != null);
    assert(onGetMyPet != null);
    assert(onGetPetPostById != null);
    assert(onAddNewPost != null);
    assert(onPetPostDeleted != null);
    return onGetPetListData(petList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onGetPetListData(List<PetDataModel> petList),
    TResult onUploadPhoto(String photo),
    TResult onSaveNewPet(PetDataModel data),
    TResult onGetMyPet(List<PetDataModel> list),
    TResult onGetPetPostById(List<PetPostDataModel> list),
    TResult onAddNewPost(String status),
    TResult onPetPostDeleted(String status),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetPetListData != null) {
      return onGetPetListData(petList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetPetListData(_OnGetPetListData value),
    @required TResult onUploadPhoto(_OnUploadPhoto value),
    @required TResult onSaveNewPet(_OnSaveNewPet value),
    @required TResult onGetMyPet(_OnGetMyPet value),
    @required TResult onGetPetPostById(_OnGetPetPostById value),
    @required TResult onAddNewPost(_OnAddNewPost value),
    @required TResult onPetPostDeleted(_OnPetPostDeleted value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPetListData != null);
    assert(onUploadPhoto != null);
    assert(onSaveNewPet != null);
    assert(onGetMyPet != null);
    assert(onGetPetPostById != null);
    assert(onAddNewPost != null);
    assert(onPetPostDeleted != null);
    return onGetPetListData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetPetListData(_OnGetPetListData value),
    TResult onUploadPhoto(_OnUploadPhoto value),
    TResult onSaveNewPet(_OnSaveNewPet value),
    TResult onGetMyPet(_OnGetMyPet value),
    TResult onGetPetPostById(_OnGetPetPostById value),
    TResult onAddNewPost(_OnAddNewPost value),
    TResult onPetPostDeleted(_OnPetPostDeleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetPetListData != null) {
      return onGetPetListData(this);
    }
    return orElse();
  }
}

abstract class _OnGetPetListData implements PetState {
  const factory _OnGetPetListData(List<PetDataModel> petList) =
      _$_OnGetPetListData;

  List<PetDataModel> get petList;
  @JsonKey(ignore: true)
  _$OnGetPetListDataCopyWith<_OnGetPetListData> get copyWith;
}

/// @nodoc
abstract class _$OnUploadPhotoCopyWith<$Res> {
  factory _$OnUploadPhotoCopyWith(
          _OnUploadPhoto value, $Res Function(_OnUploadPhoto) then) =
      __$OnUploadPhotoCopyWithImpl<$Res>;
  $Res call({String photo});
}

/// @nodoc
class __$OnUploadPhotoCopyWithImpl<$Res> extends _$PetStateCopyWithImpl<$Res>
    implements _$OnUploadPhotoCopyWith<$Res> {
  __$OnUploadPhotoCopyWithImpl(
      _OnUploadPhoto _value, $Res Function(_OnUploadPhoto) _then)
      : super(_value, (v) => _then(v as _OnUploadPhoto));

  @override
  _OnUploadPhoto get _value => super._value as _OnUploadPhoto;

  @override
  $Res call({
    Object photo = freezed,
  }) {
    return _then(_OnUploadPhoto(
      photo == freezed ? _value.photo : photo as String,
    ));
  }
}

/// @nodoc
class _$_OnUploadPhoto implements _OnUploadPhoto {
  const _$_OnUploadPhoto(this.photo) : assert(photo != null);

  @override
  final String photo;

  @override
  String toString() {
    return 'PetState.onUploadPhoto(photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnUploadPhoto &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photo);

  @JsonKey(ignore: true)
  @override
  _$OnUploadPhotoCopyWith<_OnUploadPhoto> get copyWith =>
      __$OnUploadPhotoCopyWithImpl<_OnUploadPhoto>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onGetPetListData(List<PetDataModel> petList),
    @required TResult onUploadPhoto(String photo),
    @required TResult onSaveNewPet(PetDataModel data),
    @required TResult onGetMyPet(List<PetDataModel> list),
    @required TResult onGetPetPostById(List<PetPostDataModel> list),
    @required TResult onAddNewPost(String status),
    @required TResult onPetPostDeleted(String status),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPetListData != null);
    assert(onUploadPhoto != null);
    assert(onSaveNewPet != null);
    assert(onGetMyPet != null);
    assert(onGetPetPostById != null);
    assert(onAddNewPost != null);
    assert(onPetPostDeleted != null);
    return onUploadPhoto(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onGetPetListData(List<PetDataModel> petList),
    TResult onUploadPhoto(String photo),
    TResult onSaveNewPet(PetDataModel data),
    TResult onGetMyPet(List<PetDataModel> list),
    TResult onGetPetPostById(List<PetPostDataModel> list),
    TResult onAddNewPost(String status),
    TResult onPetPostDeleted(String status),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onUploadPhoto != null) {
      return onUploadPhoto(photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetPetListData(_OnGetPetListData value),
    @required TResult onUploadPhoto(_OnUploadPhoto value),
    @required TResult onSaveNewPet(_OnSaveNewPet value),
    @required TResult onGetMyPet(_OnGetMyPet value),
    @required TResult onGetPetPostById(_OnGetPetPostById value),
    @required TResult onAddNewPost(_OnAddNewPost value),
    @required TResult onPetPostDeleted(_OnPetPostDeleted value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPetListData != null);
    assert(onUploadPhoto != null);
    assert(onSaveNewPet != null);
    assert(onGetMyPet != null);
    assert(onGetPetPostById != null);
    assert(onAddNewPost != null);
    assert(onPetPostDeleted != null);
    return onUploadPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetPetListData(_OnGetPetListData value),
    TResult onUploadPhoto(_OnUploadPhoto value),
    TResult onSaveNewPet(_OnSaveNewPet value),
    TResult onGetMyPet(_OnGetMyPet value),
    TResult onGetPetPostById(_OnGetPetPostById value),
    TResult onAddNewPost(_OnAddNewPost value),
    TResult onPetPostDeleted(_OnPetPostDeleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onUploadPhoto != null) {
      return onUploadPhoto(this);
    }
    return orElse();
  }
}

abstract class _OnUploadPhoto implements PetState {
  const factory _OnUploadPhoto(String photo) = _$_OnUploadPhoto;

  String get photo;
  @JsonKey(ignore: true)
  _$OnUploadPhotoCopyWith<_OnUploadPhoto> get copyWith;
}

/// @nodoc
abstract class _$OnSaveNewPetCopyWith<$Res> {
  factory _$OnSaveNewPetCopyWith(
          _OnSaveNewPet value, $Res Function(_OnSaveNewPet) then) =
      __$OnSaveNewPetCopyWithImpl<$Res>;
  $Res call({PetDataModel data});

  $PetDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$OnSaveNewPetCopyWithImpl<$Res> extends _$PetStateCopyWithImpl<$Res>
    implements _$OnSaveNewPetCopyWith<$Res> {
  __$OnSaveNewPetCopyWithImpl(
      _OnSaveNewPet _value, $Res Function(_OnSaveNewPet) _then)
      : super(_value, (v) => _then(v as _OnSaveNewPet));

  @override
  _OnSaveNewPet get _value => super._value as _OnSaveNewPet;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_OnSaveNewPet(
      data == freezed ? _value.data : data as PetDataModel,
    ));
  }

  @override
  $PetDataModelCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $PetDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
class _$_OnSaveNewPet implements _OnSaveNewPet {
  const _$_OnSaveNewPet(this.data) : assert(data != null);

  @override
  final PetDataModel data;

  @override
  String toString() {
    return 'PetState.onSaveNewPet(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnSaveNewPet &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$OnSaveNewPetCopyWith<_OnSaveNewPet> get copyWith =>
      __$OnSaveNewPetCopyWithImpl<_OnSaveNewPet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onGetPetListData(List<PetDataModel> petList),
    @required TResult onUploadPhoto(String photo),
    @required TResult onSaveNewPet(PetDataModel data),
    @required TResult onGetMyPet(List<PetDataModel> list),
    @required TResult onGetPetPostById(List<PetPostDataModel> list),
    @required TResult onAddNewPost(String status),
    @required TResult onPetPostDeleted(String status),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPetListData != null);
    assert(onUploadPhoto != null);
    assert(onSaveNewPet != null);
    assert(onGetMyPet != null);
    assert(onGetPetPostById != null);
    assert(onAddNewPost != null);
    assert(onPetPostDeleted != null);
    return onSaveNewPet(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onGetPetListData(List<PetDataModel> petList),
    TResult onUploadPhoto(String photo),
    TResult onSaveNewPet(PetDataModel data),
    TResult onGetMyPet(List<PetDataModel> list),
    TResult onGetPetPostById(List<PetPostDataModel> list),
    TResult onAddNewPost(String status),
    TResult onPetPostDeleted(String status),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSaveNewPet != null) {
      return onSaveNewPet(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetPetListData(_OnGetPetListData value),
    @required TResult onUploadPhoto(_OnUploadPhoto value),
    @required TResult onSaveNewPet(_OnSaveNewPet value),
    @required TResult onGetMyPet(_OnGetMyPet value),
    @required TResult onGetPetPostById(_OnGetPetPostById value),
    @required TResult onAddNewPost(_OnAddNewPost value),
    @required TResult onPetPostDeleted(_OnPetPostDeleted value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPetListData != null);
    assert(onUploadPhoto != null);
    assert(onSaveNewPet != null);
    assert(onGetMyPet != null);
    assert(onGetPetPostById != null);
    assert(onAddNewPost != null);
    assert(onPetPostDeleted != null);
    return onSaveNewPet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetPetListData(_OnGetPetListData value),
    TResult onUploadPhoto(_OnUploadPhoto value),
    TResult onSaveNewPet(_OnSaveNewPet value),
    TResult onGetMyPet(_OnGetMyPet value),
    TResult onGetPetPostById(_OnGetPetPostById value),
    TResult onAddNewPost(_OnAddNewPost value),
    TResult onPetPostDeleted(_OnPetPostDeleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onSaveNewPet != null) {
      return onSaveNewPet(this);
    }
    return orElse();
  }
}

abstract class _OnSaveNewPet implements PetState {
  const factory _OnSaveNewPet(PetDataModel data) = _$_OnSaveNewPet;

  PetDataModel get data;
  @JsonKey(ignore: true)
  _$OnSaveNewPetCopyWith<_OnSaveNewPet> get copyWith;
}

/// @nodoc
abstract class _$OnGetMyPetCopyWith<$Res> {
  factory _$OnGetMyPetCopyWith(
          _OnGetMyPet value, $Res Function(_OnGetMyPet) then) =
      __$OnGetMyPetCopyWithImpl<$Res>;
  $Res call({List<PetDataModel> list});
}

/// @nodoc
class __$OnGetMyPetCopyWithImpl<$Res> extends _$PetStateCopyWithImpl<$Res>
    implements _$OnGetMyPetCopyWith<$Res> {
  __$OnGetMyPetCopyWithImpl(
      _OnGetMyPet _value, $Res Function(_OnGetMyPet) _then)
      : super(_value, (v) => _then(v as _OnGetMyPet));

  @override
  _OnGetMyPet get _value => super._value as _OnGetMyPet;

  @override
  $Res call({
    Object list = freezed,
  }) {
    return _then(_OnGetMyPet(
      list == freezed ? _value.list : list as List<PetDataModel>,
    ));
  }
}

/// @nodoc
class _$_OnGetMyPet implements _OnGetMyPet {
  const _$_OnGetMyPet(this.list) : assert(list != null);

  @override
  final List<PetDataModel> list;

  @override
  String toString() {
    return 'PetState.onGetMyPet(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetMyPet &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  _$OnGetMyPetCopyWith<_OnGetMyPet> get copyWith =>
      __$OnGetMyPetCopyWithImpl<_OnGetMyPet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onGetPetListData(List<PetDataModel> petList),
    @required TResult onUploadPhoto(String photo),
    @required TResult onSaveNewPet(PetDataModel data),
    @required TResult onGetMyPet(List<PetDataModel> list),
    @required TResult onGetPetPostById(List<PetPostDataModel> list),
    @required TResult onAddNewPost(String status),
    @required TResult onPetPostDeleted(String status),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPetListData != null);
    assert(onUploadPhoto != null);
    assert(onSaveNewPet != null);
    assert(onGetMyPet != null);
    assert(onGetPetPostById != null);
    assert(onAddNewPost != null);
    assert(onPetPostDeleted != null);
    return onGetMyPet(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onGetPetListData(List<PetDataModel> petList),
    TResult onUploadPhoto(String photo),
    TResult onSaveNewPet(PetDataModel data),
    TResult onGetMyPet(List<PetDataModel> list),
    TResult onGetPetPostById(List<PetPostDataModel> list),
    TResult onAddNewPost(String status),
    TResult onPetPostDeleted(String status),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetMyPet != null) {
      return onGetMyPet(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetPetListData(_OnGetPetListData value),
    @required TResult onUploadPhoto(_OnUploadPhoto value),
    @required TResult onSaveNewPet(_OnSaveNewPet value),
    @required TResult onGetMyPet(_OnGetMyPet value),
    @required TResult onGetPetPostById(_OnGetPetPostById value),
    @required TResult onAddNewPost(_OnAddNewPost value),
    @required TResult onPetPostDeleted(_OnPetPostDeleted value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPetListData != null);
    assert(onUploadPhoto != null);
    assert(onSaveNewPet != null);
    assert(onGetMyPet != null);
    assert(onGetPetPostById != null);
    assert(onAddNewPost != null);
    assert(onPetPostDeleted != null);
    return onGetMyPet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetPetListData(_OnGetPetListData value),
    TResult onUploadPhoto(_OnUploadPhoto value),
    TResult onSaveNewPet(_OnSaveNewPet value),
    TResult onGetMyPet(_OnGetMyPet value),
    TResult onGetPetPostById(_OnGetPetPostById value),
    TResult onAddNewPost(_OnAddNewPost value),
    TResult onPetPostDeleted(_OnPetPostDeleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetMyPet != null) {
      return onGetMyPet(this);
    }
    return orElse();
  }
}

abstract class _OnGetMyPet implements PetState {
  const factory _OnGetMyPet(List<PetDataModel> list) = _$_OnGetMyPet;

  List<PetDataModel> get list;
  @JsonKey(ignore: true)
  _$OnGetMyPetCopyWith<_OnGetMyPet> get copyWith;
}

/// @nodoc
abstract class _$OnGetPetPostByIdCopyWith<$Res> {
  factory _$OnGetPetPostByIdCopyWith(
          _OnGetPetPostById value, $Res Function(_OnGetPetPostById) then) =
      __$OnGetPetPostByIdCopyWithImpl<$Res>;
  $Res call({List<PetPostDataModel> list});
}

/// @nodoc
class __$OnGetPetPostByIdCopyWithImpl<$Res> extends _$PetStateCopyWithImpl<$Res>
    implements _$OnGetPetPostByIdCopyWith<$Res> {
  __$OnGetPetPostByIdCopyWithImpl(
      _OnGetPetPostById _value, $Res Function(_OnGetPetPostById) _then)
      : super(_value, (v) => _then(v as _OnGetPetPostById));

  @override
  _OnGetPetPostById get _value => super._value as _OnGetPetPostById;

  @override
  $Res call({
    Object list = freezed,
  }) {
    return _then(_OnGetPetPostById(
      list == freezed ? _value.list : list as List<PetPostDataModel>,
    ));
  }
}

/// @nodoc
class _$_OnGetPetPostById implements _OnGetPetPostById {
  const _$_OnGetPetPostById(this.list) : assert(list != null);

  @override
  final List<PetPostDataModel> list;

  @override
  String toString() {
    return 'PetState.onGetPetPostById(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetPetPostById &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  _$OnGetPetPostByIdCopyWith<_OnGetPetPostById> get copyWith =>
      __$OnGetPetPostByIdCopyWithImpl<_OnGetPetPostById>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onGetPetListData(List<PetDataModel> petList),
    @required TResult onUploadPhoto(String photo),
    @required TResult onSaveNewPet(PetDataModel data),
    @required TResult onGetMyPet(List<PetDataModel> list),
    @required TResult onGetPetPostById(List<PetPostDataModel> list),
    @required TResult onAddNewPost(String status),
    @required TResult onPetPostDeleted(String status),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPetListData != null);
    assert(onUploadPhoto != null);
    assert(onSaveNewPet != null);
    assert(onGetMyPet != null);
    assert(onGetPetPostById != null);
    assert(onAddNewPost != null);
    assert(onPetPostDeleted != null);
    return onGetPetPostById(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onGetPetListData(List<PetDataModel> petList),
    TResult onUploadPhoto(String photo),
    TResult onSaveNewPet(PetDataModel data),
    TResult onGetMyPet(List<PetDataModel> list),
    TResult onGetPetPostById(List<PetPostDataModel> list),
    TResult onAddNewPost(String status),
    TResult onPetPostDeleted(String status),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetPetPostById != null) {
      return onGetPetPostById(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetPetListData(_OnGetPetListData value),
    @required TResult onUploadPhoto(_OnUploadPhoto value),
    @required TResult onSaveNewPet(_OnSaveNewPet value),
    @required TResult onGetMyPet(_OnGetMyPet value),
    @required TResult onGetPetPostById(_OnGetPetPostById value),
    @required TResult onAddNewPost(_OnAddNewPost value),
    @required TResult onPetPostDeleted(_OnPetPostDeleted value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPetListData != null);
    assert(onUploadPhoto != null);
    assert(onSaveNewPet != null);
    assert(onGetMyPet != null);
    assert(onGetPetPostById != null);
    assert(onAddNewPost != null);
    assert(onPetPostDeleted != null);
    return onGetPetPostById(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetPetListData(_OnGetPetListData value),
    TResult onUploadPhoto(_OnUploadPhoto value),
    TResult onSaveNewPet(_OnSaveNewPet value),
    TResult onGetMyPet(_OnGetMyPet value),
    TResult onGetPetPostById(_OnGetPetPostById value),
    TResult onAddNewPost(_OnAddNewPost value),
    TResult onPetPostDeleted(_OnPetPostDeleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onGetPetPostById != null) {
      return onGetPetPostById(this);
    }
    return orElse();
  }
}

abstract class _OnGetPetPostById implements PetState {
  const factory _OnGetPetPostById(List<PetPostDataModel> list) =
      _$_OnGetPetPostById;

  List<PetPostDataModel> get list;
  @JsonKey(ignore: true)
  _$OnGetPetPostByIdCopyWith<_OnGetPetPostById> get copyWith;
}

/// @nodoc
abstract class _$OnAddNewPostCopyWith<$Res> {
  factory _$OnAddNewPostCopyWith(
          _OnAddNewPost value, $Res Function(_OnAddNewPost) then) =
      __$OnAddNewPostCopyWithImpl<$Res>;
  $Res call({String status});
}

/// @nodoc
class __$OnAddNewPostCopyWithImpl<$Res> extends _$PetStateCopyWithImpl<$Res>
    implements _$OnAddNewPostCopyWith<$Res> {
  __$OnAddNewPostCopyWithImpl(
      _OnAddNewPost _value, $Res Function(_OnAddNewPost) _then)
      : super(_value, (v) => _then(v as _OnAddNewPost));

  @override
  _OnAddNewPost get _value => super._value as _OnAddNewPost;

  @override
  $Res call({
    Object status = freezed,
  }) {
    return _then(_OnAddNewPost(
      status == freezed ? _value.status : status as String,
    ));
  }
}

/// @nodoc
class _$_OnAddNewPost implements _OnAddNewPost {
  const _$_OnAddNewPost(this.status) : assert(status != null);

  @override
  final String status;

  @override
  String toString() {
    return 'PetState.onAddNewPost(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnAddNewPost &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$OnAddNewPostCopyWith<_OnAddNewPost> get copyWith =>
      __$OnAddNewPostCopyWithImpl<_OnAddNewPost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onGetPetListData(List<PetDataModel> petList),
    @required TResult onUploadPhoto(String photo),
    @required TResult onSaveNewPet(PetDataModel data),
    @required TResult onGetMyPet(List<PetDataModel> list),
    @required TResult onGetPetPostById(List<PetPostDataModel> list),
    @required TResult onAddNewPost(String status),
    @required TResult onPetPostDeleted(String status),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPetListData != null);
    assert(onUploadPhoto != null);
    assert(onSaveNewPet != null);
    assert(onGetMyPet != null);
    assert(onGetPetPostById != null);
    assert(onAddNewPost != null);
    assert(onPetPostDeleted != null);
    return onAddNewPost(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onGetPetListData(List<PetDataModel> petList),
    TResult onUploadPhoto(String photo),
    TResult onSaveNewPet(PetDataModel data),
    TResult onGetMyPet(List<PetDataModel> list),
    TResult onGetPetPostById(List<PetPostDataModel> list),
    TResult onAddNewPost(String status),
    TResult onPetPostDeleted(String status),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onAddNewPost != null) {
      return onAddNewPost(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetPetListData(_OnGetPetListData value),
    @required TResult onUploadPhoto(_OnUploadPhoto value),
    @required TResult onSaveNewPet(_OnSaveNewPet value),
    @required TResult onGetMyPet(_OnGetMyPet value),
    @required TResult onGetPetPostById(_OnGetPetPostById value),
    @required TResult onAddNewPost(_OnAddNewPost value),
    @required TResult onPetPostDeleted(_OnPetPostDeleted value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPetListData != null);
    assert(onUploadPhoto != null);
    assert(onSaveNewPet != null);
    assert(onGetMyPet != null);
    assert(onGetPetPostById != null);
    assert(onAddNewPost != null);
    assert(onPetPostDeleted != null);
    return onAddNewPost(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetPetListData(_OnGetPetListData value),
    TResult onUploadPhoto(_OnUploadPhoto value),
    TResult onSaveNewPet(_OnSaveNewPet value),
    TResult onGetMyPet(_OnGetMyPet value),
    TResult onGetPetPostById(_OnGetPetPostById value),
    TResult onAddNewPost(_OnAddNewPost value),
    TResult onPetPostDeleted(_OnPetPostDeleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onAddNewPost != null) {
      return onAddNewPost(this);
    }
    return orElse();
  }
}

abstract class _OnAddNewPost implements PetState {
  const factory _OnAddNewPost(String status) = _$_OnAddNewPost;

  String get status;
  @JsonKey(ignore: true)
  _$OnAddNewPostCopyWith<_OnAddNewPost> get copyWith;
}

/// @nodoc
abstract class _$OnPetPostDeletedCopyWith<$Res> {
  factory _$OnPetPostDeletedCopyWith(
          _OnPetPostDeleted value, $Res Function(_OnPetPostDeleted) then) =
      __$OnPetPostDeletedCopyWithImpl<$Res>;
  $Res call({String status});
}

/// @nodoc
class __$OnPetPostDeletedCopyWithImpl<$Res> extends _$PetStateCopyWithImpl<$Res>
    implements _$OnPetPostDeletedCopyWith<$Res> {
  __$OnPetPostDeletedCopyWithImpl(
      _OnPetPostDeleted _value, $Res Function(_OnPetPostDeleted) _then)
      : super(_value, (v) => _then(v as _OnPetPostDeleted));

  @override
  _OnPetPostDeleted get _value => super._value as _OnPetPostDeleted;

  @override
  $Res call({
    Object status = freezed,
  }) {
    return _then(_OnPetPostDeleted(
      status == freezed ? _value.status : status as String,
    ));
  }
}

/// @nodoc
class _$_OnPetPostDeleted implements _OnPetPostDeleted {
  const _$_OnPetPostDeleted(this.status) : assert(status != null);

  @override
  final String status;

  @override
  String toString() {
    return 'PetState.onPetPostDeleted(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnPetPostDeleted &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$OnPetPostDeletedCopyWith<_OnPetPostDeleted> get copyWith =>
      __$OnPetPostDeletedCopyWithImpl<_OnPetPostDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(GeneralFailure failure),
    @required TResult onGetPetListData(List<PetDataModel> petList),
    @required TResult onUploadPhoto(String photo),
    @required TResult onSaveNewPet(PetDataModel data),
    @required TResult onGetMyPet(List<PetDataModel> list),
    @required TResult onGetPetPostById(List<PetPostDataModel> list),
    @required TResult onAddNewPost(String status),
    @required TResult onPetPostDeleted(String status),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPetListData != null);
    assert(onUploadPhoto != null);
    assert(onSaveNewPet != null);
    assert(onGetMyPet != null);
    assert(onGetPetPostById != null);
    assert(onAddNewPost != null);
    assert(onPetPostDeleted != null);
    return onPetPostDeleted(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(GeneralFailure failure),
    TResult onGetPetListData(List<PetDataModel> petList),
    TResult onUploadPhoto(String photo),
    TResult onSaveNewPet(PetDataModel data),
    TResult onGetMyPet(List<PetDataModel> list),
    TResult onGetPetPostById(List<PetPostDataModel> list),
    TResult onAddNewPost(String status),
    TResult onPetPostDeleted(String status),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onPetPostDeleted != null) {
      return onPetPostDeleted(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult error(_Error value),
    @required TResult onGetPetListData(_OnGetPetListData value),
    @required TResult onUploadPhoto(_OnUploadPhoto value),
    @required TResult onSaveNewPet(_OnSaveNewPet value),
    @required TResult onGetMyPet(_OnGetMyPet value),
    @required TResult onGetPetPostById(_OnGetPetPostById value),
    @required TResult onAddNewPost(_OnAddNewPost value),
    @required TResult onPetPostDeleted(_OnPetPostDeleted value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(onGetPetListData != null);
    assert(onUploadPhoto != null);
    assert(onSaveNewPet != null);
    assert(onGetMyPet != null);
    assert(onGetPetPostById != null);
    assert(onAddNewPost != null);
    assert(onPetPostDeleted != null);
    return onPetPostDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult error(_Error value),
    TResult onGetPetListData(_OnGetPetListData value),
    TResult onUploadPhoto(_OnUploadPhoto value),
    TResult onSaveNewPet(_OnSaveNewPet value),
    TResult onGetMyPet(_OnGetMyPet value),
    TResult onGetPetPostById(_OnGetPetPostById value),
    TResult onAddNewPost(_OnAddNewPost value),
    TResult onPetPostDeleted(_OnPetPostDeleted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (onPetPostDeleted != null) {
      return onPetPostDeleted(this);
    }
    return orElse();
  }
}

abstract class _OnPetPostDeleted implements PetState {
  const factory _OnPetPostDeleted(String status) = _$_OnPetPostDeleted;

  String get status;
  @JsonKey(ignore: true)
  _$OnPetPostDeletedCopyWith<_OnPetPostDeleted> get copyWith;
}
