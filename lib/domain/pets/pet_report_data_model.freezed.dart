// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pet_report_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PetReportDataModel _$PetReportDataModelFromJson(Map<String, dynamic> json) {
  return _PetReportDataModel.fromJson(json);
}

/// @nodoc
class _$PetReportDataModelTearOff {
  const _$PetReportDataModelTearOff();

// ignore: unused_element
  _PetReportDataModel call({String description, String post}) {
    return _PetReportDataModel(
      description: description,
      post: post,
    );
  }

// ignore: unused_element
  PetReportDataModel fromJson(Map<String, Object> json) {
    return PetReportDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PetReportDataModel = _$PetReportDataModelTearOff();

/// @nodoc
mixin _$PetReportDataModel {
  String get description;
  String get post;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PetReportDataModelCopyWith<PetReportDataModel> get copyWith;
}

/// @nodoc
abstract class $PetReportDataModelCopyWith<$Res> {
  factory $PetReportDataModelCopyWith(
          PetReportDataModel value, $Res Function(PetReportDataModel) then) =
      _$PetReportDataModelCopyWithImpl<$Res>;
  $Res call({String description, String post});
}

/// @nodoc
class _$PetReportDataModelCopyWithImpl<$Res>
    implements $PetReportDataModelCopyWith<$Res> {
  _$PetReportDataModelCopyWithImpl(this._value, this._then);

  final PetReportDataModel _value;
  // ignore: unused_field
  final $Res Function(PetReportDataModel) _then;

  @override
  $Res call({
    Object description = freezed,
    Object post = freezed,
  }) {
    return _then(_value.copyWith(
      description:
          description == freezed ? _value.description : description as String,
      post: post == freezed ? _value.post : post as String,
    ));
  }
}

/// @nodoc
abstract class _$PetReportDataModelCopyWith<$Res>
    implements $PetReportDataModelCopyWith<$Res> {
  factory _$PetReportDataModelCopyWith(
          _PetReportDataModel value, $Res Function(_PetReportDataModel) then) =
      __$PetReportDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String description, String post});
}

/// @nodoc
class __$PetReportDataModelCopyWithImpl<$Res>
    extends _$PetReportDataModelCopyWithImpl<$Res>
    implements _$PetReportDataModelCopyWith<$Res> {
  __$PetReportDataModelCopyWithImpl(
      _PetReportDataModel _value, $Res Function(_PetReportDataModel) _then)
      : super(_value, (v) => _then(v as _PetReportDataModel));

  @override
  _PetReportDataModel get _value => super._value as _PetReportDataModel;

  @override
  $Res call({
    Object description = freezed,
    Object post = freezed,
  }) {
    return _then(_PetReportDataModel(
      description:
          description == freezed ? _value.description : description as String,
      post: post == freezed ? _value.post : post as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PetReportDataModel implements _PetReportDataModel {
  _$_PetReportDataModel({this.description, this.post});

  factory _$_PetReportDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PetReportDataModelFromJson(json);

  @override
  final String description;
  @override
  final String post;

  @override
  String toString() {
    return 'PetReportDataModel(description: $description, post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PetReportDataModel &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(post);

  @JsonKey(ignore: true)
  @override
  _$PetReportDataModelCopyWith<_PetReportDataModel> get copyWith =>
      __$PetReportDataModelCopyWithImpl<_PetReportDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PetReportDataModelToJson(this);
  }
}

abstract class _PetReportDataModel implements PetReportDataModel {
  factory _PetReportDataModel({String description, String post}) =
      _$_PetReportDataModel;

  factory _PetReportDataModel.fromJson(Map<String, dynamic> json) =
      _$_PetReportDataModel.fromJson;

  @override
  String get description;
  @override
  String get post;
  @override
  @JsonKey(ignore: true)
  _$PetReportDataModelCopyWith<_PetReportDataModel> get copyWith;
}
