// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pet_pref.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PetPref _$PetPrefFromJson(Map<String, dynamic> json) {
  return _PetPref.fromJson(json);
}

/// @nodoc
class _$PetPrefTearOff {
  const _$PetPrefTearOff();

// ignore: unused_element
  _PetPref call(
      {@required String name, @required String code, bool isActived}) {
    return _PetPref(
      name: name,
      code: code,
      isActived: isActived,
    );
  }

// ignore: unused_element
  PetPref fromJson(Map<String, Object> json) {
    return PetPref.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PetPref = _$PetPrefTearOff();

/// @nodoc
mixin _$PetPref {
  String get name;
  String get code;
  bool get isActived;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PetPrefCopyWith<PetPref> get copyWith;
}

/// @nodoc
abstract class $PetPrefCopyWith<$Res> {
  factory $PetPrefCopyWith(PetPref value, $Res Function(PetPref) then) =
      _$PetPrefCopyWithImpl<$Res>;
  $Res call({String name, String code, bool isActived});
}

/// @nodoc
class _$PetPrefCopyWithImpl<$Res> implements $PetPrefCopyWith<$Res> {
  _$PetPrefCopyWithImpl(this._value, this._then);

  final PetPref _value;
  // ignore: unused_field
  final $Res Function(PetPref) _then;

  @override
  $Res call({
    Object name = freezed,
    Object code = freezed,
    Object isActived = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      code: code == freezed ? _value.code : code as String,
      isActived: isActived == freezed ? _value.isActived : isActived as bool,
    ));
  }
}

/// @nodoc
abstract class _$PetPrefCopyWith<$Res> implements $PetPrefCopyWith<$Res> {
  factory _$PetPrefCopyWith(_PetPref value, $Res Function(_PetPref) then) =
      __$PetPrefCopyWithImpl<$Res>;
  @override
  $Res call({String name, String code, bool isActived});
}

/// @nodoc
class __$PetPrefCopyWithImpl<$Res> extends _$PetPrefCopyWithImpl<$Res>
    implements _$PetPrefCopyWith<$Res> {
  __$PetPrefCopyWithImpl(_PetPref _value, $Res Function(_PetPref) _then)
      : super(_value, (v) => _then(v as _PetPref));

  @override
  _PetPref get _value => super._value as _PetPref;

  @override
  $Res call({
    Object name = freezed,
    Object code = freezed,
    Object isActived = freezed,
  }) {
    return _then(_PetPref(
      name: name == freezed ? _value.name : name as String,
      code: code == freezed ? _value.code : code as String,
      isActived: isActived == freezed ? _value.isActived : isActived as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PetPref implements _PetPref {
  _$_PetPref({@required this.name, @required this.code, this.isActived})
      : assert(name != null),
        assert(code != null);

  factory _$_PetPref.fromJson(Map<String, dynamic> json) =>
      _$_$_PetPrefFromJson(json);

  @override
  final String name;
  @override
  final String code;
  @override
  final bool isActived;

  @override
  String toString() {
    return 'PetPref(name: $name, code: $code, isActived: $isActived)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PetPref &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.isActived, isActived) ||
                const DeepCollectionEquality()
                    .equals(other.isActived, isActived)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(isActived);

  @JsonKey(ignore: true)
  @override
  _$PetPrefCopyWith<_PetPref> get copyWith =>
      __$PetPrefCopyWithImpl<_PetPref>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PetPrefToJson(this);
  }
}

abstract class _PetPref implements PetPref {
  factory _PetPref(
      {@required String name,
      @required String code,
      bool isActived}) = _$_PetPref;

  factory _PetPref.fromJson(Map<String, dynamic> json) = _$_PetPref.fromJson;

  @override
  String get name;
  @override
  String get code;
  @override
  bool get isActived;
  @override
  @JsonKey(ignore: true)
  _$PetPrefCopyWith<_PetPref> get copyWith;
}
