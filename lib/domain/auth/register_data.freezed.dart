// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'register_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RegisterData _$RegisterDataFromJson(Map<String, dynamic> json) {
  return RegisterRequestData.fromJson(json);
}

/// @nodoc
class _$RegisterDataTearOff {
  const _$RegisterDataTearOff();

// ignore: unused_element
  RegisterRequestData registerRequestData(
      {@JsonKey(name: "AccessKey") String accessKey,
      @JsonKey(name: "Name") String name,
      @JsonKey(name: "Email") String email,
      @JsonKey(name: "Password") String password,
      @JsonKey(name: "Role") String role,
      @JsonKey(name: "Availability") String availability,
      @JsonKey(name: "Styling") String styling,
      @JsonKey(name: "Cliping") String cliping,
      @JsonKey(name: "TrainingYears") String trainingYears}) {
    return RegisterRequestData(
      accessKey: accessKey,
      name: name,
      email: email,
      password: password,
      role: role,
      availability: availability,
      styling: styling,
      cliping: cliping,
      trainingYears: trainingYears,
    );
  }

// ignore: unused_element
  RegisterData fromJson(Map<String, Object> json) {
    return RegisterData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RegisterData = _$RegisterDataTearOff();

/// @nodoc
mixin _$RegisterData {
  @JsonKey(name: "AccessKey")
  String get accessKey;
  @JsonKey(name: "Name")
  String get name;
  @JsonKey(name: "Email")
  String get email;
  @JsonKey(name: "Password")
  String get password;
  @JsonKey(name: "Role")
  String get role;
  @JsonKey(name: "Availability")
  String get availability;
  @JsonKey(name: "Styling")
  String get styling;
  @JsonKey(name: "Cliping")
  String get cliping;
  @JsonKey(name: "TrainingYears")
  String get trainingYears;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult registerRequestData(
            @JsonKey(name: "AccessKey") String accessKey,
            @JsonKey(name: "Name") String name,
            @JsonKey(name: "Email") String email,
            @JsonKey(name: "Password") String password,
            @JsonKey(name: "Role") String role,
            @JsonKey(name: "Availability") String availability,
            @JsonKey(name: "Styling") String styling,
            @JsonKey(name: "Cliping") String cliping,
            @JsonKey(name: "TrainingYears") String trainingYears),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult registerRequestData(
        @JsonKey(name: "AccessKey") String accessKey,
        @JsonKey(name: "Name") String name,
        @JsonKey(name: "Email") String email,
        @JsonKey(name: "Password") String password,
        @JsonKey(name: "Role") String role,
        @JsonKey(name: "Availability") String availability,
        @JsonKey(name: "Styling") String styling,
        @JsonKey(name: "Cliping") String cliping,
        @JsonKey(name: "TrainingYears") String trainingYears),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult registerRequestData(RegisterRequestData value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult registerRequestData(RegisterRequestData value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RegisterDataCopyWith<RegisterData> get copyWith;
}

/// @nodoc
abstract class $RegisterDataCopyWith<$Res> {
  factory $RegisterDataCopyWith(
          RegisterData value, $Res Function(RegisterData) then) =
      _$RegisterDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "AccessKey") String accessKey,
      @JsonKey(name: "Name") String name,
      @JsonKey(name: "Email") String email,
      @JsonKey(name: "Password") String password,
      @JsonKey(name: "Role") String role,
      @JsonKey(name: "Availability") String availability,
      @JsonKey(name: "Styling") String styling,
      @JsonKey(name: "Cliping") String cliping,
      @JsonKey(name: "TrainingYears") String trainingYears});
}

/// @nodoc
class _$RegisterDataCopyWithImpl<$Res> implements $RegisterDataCopyWith<$Res> {
  _$RegisterDataCopyWithImpl(this._value, this._then);

  final RegisterData _value;
  // ignore: unused_field
  final $Res Function(RegisterData) _then;

  @override
  $Res call({
    Object accessKey = freezed,
    Object name = freezed,
    Object email = freezed,
    Object password = freezed,
    Object role = freezed,
    Object availability = freezed,
    Object styling = freezed,
    Object cliping = freezed,
    Object trainingYears = freezed,
  }) {
    return _then(_value.copyWith(
      accessKey: accessKey == freezed ? _value.accessKey : accessKey as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      role: role == freezed ? _value.role : role as String,
      availability: availability == freezed
          ? _value.availability
          : availability as String,
      styling: styling == freezed ? _value.styling : styling as String,
      cliping: cliping == freezed ? _value.cliping : cliping as String,
      trainingYears: trainingYears == freezed
          ? _value.trainingYears
          : trainingYears as String,
    ));
  }
}

/// @nodoc
abstract class $RegisterRequestDataCopyWith<$Res>
    implements $RegisterDataCopyWith<$Res> {
  factory $RegisterRequestDataCopyWith(
          RegisterRequestData value, $Res Function(RegisterRequestData) then) =
      _$RegisterRequestDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "AccessKey") String accessKey,
      @JsonKey(name: "Name") String name,
      @JsonKey(name: "Email") String email,
      @JsonKey(name: "Password") String password,
      @JsonKey(name: "Role") String role,
      @JsonKey(name: "Availability") String availability,
      @JsonKey(name: "Styling") String styling,
      @JsonKey(name: "Cliping") String cliping,
      @JsonKey(name: "TrainingYears") String trainingYears});
}

/// @nodoc
class _$RegisterRequestDataCopyWithImpl<$Res>
    extends _$RegisterDataCopyWithImpl<$Res>
    implements $RegisterRequestDataCopyWith<$Res> {
  _$RegisterRequestDataCopyWithImpl(
      RegisterRequestData _value, $Res Function(RegisterRequestData) _then)
      : super(_value, (v) => _then(v as RegisterRequestData));

  @override
  RegisterRequestData get _value => super._value as RegisterRequestData;

  @override
  $Res call({
    Object accessKey = freezed,
    Object name = freezed,
    Object email = freezed,
    Object password = freezed,
    Object role = freezed,
    Object availability = freezed,
    Object styling = freezed,
    Object cliping = freezed,
    Object trainingYears = freezed,
  }) {
    return _then(RegisterRequestData(
      accessKey: accessKey == freezed ? _value.accessKey : accessKey as String,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      role: role == freezed ? _value.role : role as String,
      availability: availability == freezed
          ? _value.availability
          : availability as String,
      styling: styling == freezed ? _value.styling : styling as String,
      cliping: cliping == freezed ? _value.cliping : cliping as String,
      trainingYears: trainingYears == freezed
          ? _value.trainingYears
          : trainingYears as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$RegisterRequestData implements RegisterRequestData {
  _$RegisterRequestData(
      {@JsonKey(name: "AccessKey") this.accessKey,
      @JsonKey(name: "Name") this.name,
      @JsonKey(name: "Email") this.email,
      @JsonKey(name: "Password") this.password,
      @JsonKey(name: "Role") this.role,
      @JsonKey(name: "Availability") this.availability,
      @JsonKey(name: "Styling") this.styling,
      @JsonKey(name: "Cliping") this.cliping,
      @JsonKey(name: "TrainingYears") this.trainingYears});

  factory _$RegisterRequestData.fromJson(Map<String, dynamic> json) =>
      _$_$RegisterRequestDataFromJson(json);

  @override
  @JsonKey(name: "AccessKey")
  final String accessKey;
  @override
  @JsonKey(name: "Name")
  final String name;
  @override
  @JsonKey(name: "Email")
  final String email;
  @override
  @JsonKey(name: "Password")
  final String password;
  @override
  @JsonKey(name: "Role")
  final String role;
  @override
  @JsonKey(name: "Availability")
  final String availability;
  @override
  @JsonKey(name: "Styling")
  final String styling;
  @override
  @JsonKey(name: "Cliping")
  final String cliping;
  @override
  @JsonKey(name: "TrainingYears")
  final String trainingYears;

  @override
  String toString() {
    return 'RegisterData.registerRequestData(accessKey: $accessKey, name: $name, email: $email, password: $password, role: $role, availability: $availability, styling: $styling, cliping: $cliping, trainingYears: $trainingYears)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterRequestData &&
            (identical(other.accessKey, accessKey) ||
                const DeepCollectionEquality()
                    .equals(other.accessKey, accessKey)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.availability, availability) ||
                const DeepCollectionEquality()
                    .equals(other.availability, availability)) &&
            (identical(other.styling, styling) ||
                const DeepCollectionEquality()
                    .equals(other.styling, styling)) &&
            (identical(other.cliping, cliping) ||
                const DeepCollectionEquality()
                    .equals(other.cliping, cliping)) &&
            (identical(other.trainingYears, trainingYears) ||
                const DeepCollectionEquality()
                    .equals(other.trainingYears, trainingYears)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessKey) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(availability) ^
      const DeepCollectionEquality().hash(styling) ^
      const DeepCollectionEquality().hash(cliping) ^
      const DeepCollectionEquality().hash(trainingYears);

  @JsonKey(ignore: true)
  @override
  $RegisterRequestDataCopyWith<RegisterRequestData> get copyWith =>
      _$RegisterRequestDataCopyWithImpl<RegisterRequestData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult registerRequestData(
            @JsonKey(name: "AccessKey") String accessKey,
            @JsonKey(name: "Name") String name,
            @JsonKey(name: "Email") String email,
            @JsonKey(name: "Password") String password,
            @JsonKey(name: "Role") String role,
            @JsonKey(name: "Availability") String availability,
            @JsonKey(name: "Styling") String styling,
            @JsonKey(name: "Cliping") String cliping,
            @JsonKey(name: "TrainingYears") String trainingYears),
  }) {
    assert(registerRequestData != null);
    return registerRequestData(accessKey, name, email, password, role,
        availability, styling, cliping, trainingYears);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult registerRequestData(
        @JsonKey(name: "AccessKey") String accessKey,
        @JsonKey(name: "Name") String name,
        @JsonKey(name: "Email") String email,
        @JsonKey(name: "Password") String password,
        @JsonKey(name: "Role") String role,
        @JsonKey(name: "Availability") String availability,
        @JsonKey(name: "Styling") String styling,
        @JsonKey(name: "Cliping") String cliping,
        @JsonKey(name: "TrainingYears") String trainingYears),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerRequestData != null) {
      return registerRequestData(accessKey, name, email, password, role,
          availability, styling, cliping, trainingYears);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult registerRequestData(RegisterRequestData value),
  }) {
    assert(registerRequestData != null);
    return registerRequestData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult registerRequestData(RegisterRequestData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerRequestData != null) {
      return registerRequestData(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$RegisterRequestDataToJson(this);
  }
}

abstract class RegisterRequestData implements RegisterData {
  factory RegisterRequestData(
          {@JsonKey(name: "AccessKey") String accessKey,
          @JsonKey(name: "Name") String name,
          @JsonKey(name: "Email") String email,
          @JsonKey(name: "Password") String password,
          @JsonKey(name: "Role") String role,
          @JsonKey(name: "Availability") String availability,
          @JsonKey(name: "Styling") String styling,
          @JsonKey(name: "Cliping") String cliping,
          @JsonKey(name: "TrainingYears") String trainingYears}) =
      _$RegisterRequestData;

  factory RegisterRequestData.fromJson(Map<String, dynamic> json) =
      _$RegisterRequestData.fromJson;

  @override
  @JsonKey(name: "AccessKey")
  String get accessKey;
  @override
  @JsonKey(name: "Name")
  String get name;
  @override
  @JsonKey(name: "Email")
  String get email;
  @override
  @JsonKey(name: "Password")
  String get password;
  @override
  @JsonKey(name: "Role")
  String get role;
  @override
  @JsonKey(name: "Availability")
  String get availability;
  @override
  @JsonKey(name: "Styling")
  String get styling;
  @override
  @JsonKey(name: "Cliping")
  String get cliping;
  @override
  @JsonKey(name: "TrainingYears")
  String get trainingYears;
  @override
  @JsonKey(ignore: true)
  $RegisterRequestDataCopyWith<RegisterRequestData> get copyWith;
}
