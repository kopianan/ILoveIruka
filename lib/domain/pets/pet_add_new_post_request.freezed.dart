// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pet_add_new_post_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PetAddNewPostRequest _$PetAddNewPostRequestFromJson(Map<String, dynamic> json) {
  return _PetAddNewPostRequest.fromJson(json);
}

/// @nodoc
class _$PetAddNewPostRequestTearOff {
  const _$PetAddNewPostRequestTearOff();

// ignore: unused_element
  _PetAddNewPostRequest call({String pictureUrl, String caption}) {
    return _PetAddNewPostRequest(
      pictureUrl: pictureUrl,
      caption: caption,
    );
  }

// ignore: unused_element
  PetAddNewPostRequest fromJson(Map<String, Object> json) {
    return PetAddNewPostRequest.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PetAddNewPostRequest = _$PetAddNewPostRequestTearOff();

/// @nodoc
mixin _$PetAddNewPostRequest {
  String get pictureUrl;
  String get caption;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PetAddNewPostRequestCopyWith<PetAddNewPostRequest> get copyWith;
}

/// @nodoc
abstract class $PetAddNewPostRequestCopyWith<$Res> {
  factory $PetAddNewPostRequestCopyWith(PetAddNewPostRequest value,
          $Res Function(PetAddNewPostRequest) then) =
      _$PetAddNewPostRequestCopyWithImpl<$Res>;
  $Res call({String pictureUrl, String caption});
}

/// @nodoc
class _$PetAddNewPostRequestCopyWithImpl<$Res>
    implements $PetAddNewPostRequestCopyWith<$Res> {
  _$PetAddNewPostRequestCopyWithImpl(this._value, this._then);

  final PetAddNewPostRequest _value;
  // ignore: unused_field
  final $Res Function(PetAddNewPostRequest) _then;

  @override
  $Res call({
    Object pictureUrl = freezed,
    Object caption = freezed,
  }) {
    return _then(_value.copyWith(
      pictureUrl:
          pictureUrl == freezed ? _value.pictureUrl : pictureUrl as String,
      caption: caption == freezed ? _value.caption : caption as String,
    ));
  }
}

/// @nodoc
abstract class _$PetAddNewPostRequestCopyWith<$Res>
    implements $PetAddNewPostRequestCopyWith<$Res> {
  factory _$PetAddNewPostRequestCopyWith(_PetAddNewPostRequest value,
          $Res Function(_PetAddNewPostRequest) then) =
      __$PetAddNewPostRequestCopyWithImpl<$Res>;
  @override
  $Res call({String pictureUrl, String caption});
}

/// @nodoc
class __$PetAddNewPostRequestCopyWithImpl<$Res>
    extends _$PetAddNewPostRequestCopyWithImpl<$Res>
    implements _$PetAddNewPostRequestCopyWith<$Res> {
  __$PetAddNewPostRequestCopyWithImpl(
      _PetAddNewPostRequest _value, $Res Function(_PetAddNewPostRequest) _then)
      : super(_value, (v) => _then(v as _PetAddNewPostRequest));

  @override
  _PetAddNewPostRequest get _value => super._value as _PetAddNewPostRequest;

  @override
  $Res call({
    Object pictureUrl = freezed,
    Object caption = freezed,
  }) {
    return _then(_PetAddNewPostRequest(
      pictureUrl:
          pictureUrl == freezed ? _value.pictureUrl : pictureUrl as String,
      caption: caption == freezed ? _value.caption : caption as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PetAddNewPostRequest implements _PetAddNewPostRequest {
  _$_PetAddNewPostRequest({this.pictureUrl, this.caption});

  factory _$_PetAddNewPostRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_PetAddNewPostRequestFromJson(json);

  @override
  final String pictureUrl;
  @override
  final String caption;

  @override
  String toString() {
    return 'PetAddNewPostRequest(pictureUrl: $pictureUrl, caption: $caption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PetAddNewPostRequest &&
            (identical(other.pictureUrl, pictureUrl) ||
                const DeepCollectionEquality()
                    .equals(other.pictureUrl, pictureUrl)) &&
            (identical(other.caption, caption) ||
                const DeepCollectionEquality().equals(other.caption, caption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pictureUrl) ^
      const DeepCollectionEquality().hash(caption);

  @JsonKey(ignore: true)
  @override
  _$PetAddNewPostRequestCopyWith<_PetAddNewPostRequest> get copyWith =>
      __$PetAddNewPostRequestCopyWithImpl<_PetAddNewPostRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PetAddNewPostRequestToJson(this);
  }
}

abstract class _PetAddNewPostRequest implements PetAddNewPostRequest {
  factory _PetAddNewPostRequest({String pictureUrl, String caption}) =
      _$_PetAddNewPostRequest;

  factory _PetAddNewPostRequest.fromJson(Map<String, dynamic> json) =
      _$_PetAddNewPostRequest.fromJson;

  @override
  String get pictureUrl;
  @override
  String get caption;
  @override
  @JsonKey(ignore: true)
  _$PetAddNewPostRequestCopyWith<_PetAddNewPostRequest> get copyWith;
}
