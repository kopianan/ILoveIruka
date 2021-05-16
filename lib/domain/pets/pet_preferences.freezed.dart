// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pet_preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PetPreferences _$PetPreferencesFromJson(Map<String, dynamic> json) {
  return _PetPreferences.fromJson(json);
}

/// @nodoc
class _$PetPreferencesTearOff {
  const _$PetPreferencesTearOff();

// ignore: unused_element
  _PetPreferences call({String label, bool status}) {
    return _PetPreferences(
      label: label,
      status: status,
    );
  }

// ignore: unused_element
  PetPreferences fromJson(Map<String, Object> json) {
    return PetPreferences.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PetPreferences = _$PetPreferencesTearOff();

/// @nodoc
mixin _$PetPreferences {
  String get label;
  bool get status;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PetPreferencesCopyWith<PetPreferences> get copyWith;
}

/// @nodoc
abstract class $PetPreferencesCopyWith<$Res> {
  factory $PetPreferencesCopyWith(
          PetPreferences value, $Res Function(PetPreferences) then) =
      _$PetPreferencesCopyWithImpl<$Res>;
  $Res call({String label, bool status});
}

/// @nodoc
class _$PetPreferencesCopyWithImpl<$Res>
    implements $PetPreferencesCopyWith<$Res> {
  _$PetPreferencesCopyWithImpl(this._value, this._then);

  final PetPreferences _value;
  // ignore: unused_field
  final $Res Function(PetPreferences) _then;

  @override
  $Res call({
    Object label = freezed,
    Object status = freezed,
  }) {
    return _then(_value.copyWith(
      label: label == freezed ? _value.label : label as String,
      status: status == freezed ? _value.status : status as bool,
    ));
  }
}

/// @nodoc
abstract class _$PetPreferencesCopyWith<$Res>
    implements $PetPreferencesCopyWith<$Res> {
  factory _$PetPreferencesCopyWith(
          _PetPreferences value, $Res Function(_PetPreferences) then) =
      __$PetPreferencesCopyWithImpl<$Res>;
  @override
  $Res call({String label, bool status});
}

/// @nodoc
class __$PetPreferencesCopyWithImpl<$Res>
    extends _$PetPreferencesCopyWithImpl<$Res>
    implements _$PetPreferencesCopyWith<$Res> {
  __$PetPreferencesCopyWithImpl(
      _PetPreferences _value, $Res Function(_PetPreferences) _then)
      : super(_value, (v) => _then(v as _PetPreferences));

  @override
  _PetPreferences get _value => super._value as _PetPreferences;

  @override
  $Res call({
    Object label = freezed,
    Object status = freezed,
  }) {
    return _then(_PetPreferences(
      label: label == freezed ? _value.label : label as String,
      status: status == freezed ? _value.status : status as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PetPreferences implements _PetPreferences {
  _$_PetPreferences({this.label, this.status});

  factory _$_PetPreferences.fromJson(Map<String, dynamic> json) =>
      _$_$_PetPreferencesFromJson(json);

  @override
  final String label;
  @override
  final bool status;

  @override
  String toString() {
    return 'PetPreferences(label: $label, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PetPreferences &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$PetPreferencesCopyWith<_PetPreferences> get copyWith =>
      __$PetPreferencesCopyWithImpl<_PetPreferences>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PetPreferencesToJson(this);
  }
}

abstract class _PetPreferences implements PetPreferences {
  factory _PetPreferences({String label, bool status}) = _$_PetPreferences;

  factory _PetPreferences.fromJson(Map<String, dynamic> json) =
      _$_PetPreferences.fromJson;

  @override
  String get label;
  @override
  bool get status;
  @override
  @JsonKey(ignore: true)
  _$PetPreferencesCopyWith<_PetPreferences> get copyWith;
}
