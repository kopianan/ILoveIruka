// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pet_preference_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PetPreferenceDataModel _$PetPreferenceDataModelFromJson(
    Map<String, dynamic> json) {
  return _PetPreferenceDataModel.fromJson(json);
}

/// @nodoc
class _$PetPreferenceDataModelTearOff {
  const _$PetPreferenceDataModelTearOff();

// ignore: unused_element
  _PetPreferenceDataModel call(
      {String label, String image, String code, bool selected}) {
    return _PetPreferenceDataModel(
      label: label,
      image: image,
      code: code,
      selected: selected,
    );
  }

// ignore: unused_element
  PetPreferenceDataModel fromJson(Map<String, Object> json) {
    return PetPreferenceDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PetPreferenceDataModel = _$PetPreferenceDataModelTearOff();

/// @nodoc
mixin _$PetPreferenceDataModel {
  String get label;
  String get image;
  String get code;
  bool get selected;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PetPreferenceDataModelCopyWith<PetPreferenceDataModel> get copyWith;
}

/// @nodoc
abstract class $PetPreferenceDataModelCopyWith<$Res> {
  factory $PetPreferenceDataModelCopyWith(PetPreferenceDataModel value,
          $Res Function(PetPreferenceDataModel) then) =
      _$PetPreferenceDataModelCopyWithImpl<$Res>;
  $Res call({String label, String image, String code, bool selected});
}

/// @nodoc
class _$PetPreferenceDataModelCopyWithImpl<$Res>
    implements $PetPreferenceDataModelCopyWith<$Res> {
  _$PetPreferenceDataModelCopyWithImpl(this._value, this._then);

  final PetPreferenceDataModel _value;
  // ignore: unused_field
  final $Res Function(PetPreferenceDataModel) _then;

  @override
  $Res call({
    Object label = freezed,
    Object image = freezed,
    Object code = freezed,
    Object selected = freezed,
  }) {
    return _then(_value.copyWith(
      label: label == freezed ? _value.label : label as String,
      image: image == freezed ? _value.image : image as String,
      code: code == freezed ? _value.code : code as String,
      selected: selected == freezed ? _value.selected : selected as bool,
    ));
  }
}

/// @nodoc
abstract class _$PetPreferenceDataModelCopyWith<$Res>
    implements $PetPreferenceDataModelCopyWith<$Res> {
  factory _$PetPreferenceDataModelCopyWith(_PetPreferenceDataModel value,
          $Res Function(_PetPreferenceDataModel) then) =
      __$PetPreferenceDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String label, String image, String code, bool selected});
}

/// @nodoc
class __$PetPreferenceDataModelCopyWithImpl<$Res>
    extends _$PetPreferenceDataModelCopyWithImpl<$Res>
    implements _$PetPreferenceDataModelCopyWith<$Res> {
  __$PetPreferenceDataModelCopyWithImpl(_PetPreferenceDataModel _value,
      $Res Function(_PetPreferenceDataModel) _then)
      : super(_value, (v) => _then(v as _PetPreferenceDataModel));

  @override
  _PetPreferenceDataModel get _value => super._value as _PetPreferenceDataModel;

  @override
  $Res call({
    Object label = freezed,
    Object image = freezed,
    Object code = freezed,
    Object selected = freezed,
  }) {
    return _then(_PetPreferenceDataModel(
      label: label == freezed ? _value.label : label as String,
      image: image == freezed ? _value.image : image as String,
      code: code == freezed ? _value.code : code as String,
      selected: selected == freezed ? _value.selected : selected as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PetPreferenceDataModel implements _PetPreferenceDataModel {
  _$_PetPreferenceDataModel({this.label, this.image, this.code, this.selected});

  factory _$_PetPreferenceDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PetPreferenceDataModelFromJson(json);

  @override
  final String label;
  @override
  final String image;
  @override
  final String code;
  @override
  final bool selected;

  @override
  String toString() {
    return 'PetPreferenceDataModel(label: $label, image: $image, code: $code, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PetPreferenceDataModel &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.selected, selected) ||
                const DeepCollectionEquality()
                    .equals(other.selected, selected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(selected);

  @JsonKey(ignore: true)
  @override
  _$PetPreferenceDataModelCopyWith<_PetPreferenceDataModel> get copyWith =>
      __$PetPreferenceDataModelCopyWithImpl<_PetPreferenceDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PetPreferenceDataModelToJson(this);
  }
}

abstract class _PetPreferenceDataModel implements PetPreferenceDataModel {
  factory _PetPreferenceDataModel(
      {String label,
      String image,
      String code,
      bool selected}) = _$_PetPreferenceDataModel;

  factory _PetPreferenceDataModel.fromJson(Map<String, dynamic> json) =
      _$_PetPreferenceDataModel.fromJson;

  @override
  String get label;
  @override
  String get image;
  @override
  String get code;
  @override
  bool get selected;
  @override
  @JsonKey(ignore: true)
  _$PetPreferenceDataModelCopyWith<_PetPreferenceDataModel> get copyWith;
}
