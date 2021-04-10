// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'membership_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MembershipDataModel _$MembershipDataModelFromJson(Map<String, dynamic> json) {
  return _MembershipDataModel.fromJson(json);
}

/// @nodoc
class _$MembershipDataModelTearOff {
  const _$MembershipDataModelTearOff();

// ignore: unused_element
  _MembershipDataModel call(
      {String id,
      String label,
      int duration,
      String description,
      String createdBy}) {
    return _MembershipDataModel(
      id: id,
      label: label,
      duration: duration,
      description: description,
      createdBy: createdBy,
    );
  }

// ignore: unused_element
  MembershipDataModel fromJson(Map<String, Object> json) {
    return MembershipDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MembershipDataModel = _$MembershipDataModelTearOff();

/// @nodoc
mixin _$MembershipDataModel {
  String get id;
  String get label;
  int get duration;
  String get description;
  String get createdBy;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MembershipDataModelCopyWith<MembershipDataModel> get copyWith;
}

/// @nodoc
abstract class $MembershipDataModelCopyWith<$Res> {
  factory $MembershipDataModelCopyWith(
          MembershipDataModel value, $Res Function(MembershipDataModel) then) =
      _$MembershipDataModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String label,
      int duration,
      String description,
      String createdBy});
}

/// @nodoc
class _$MembershipDataModelCopyWithImpl<$Res>
    implements $MembershipDataModelCopyWith<$Res> {
  _$MembershipDataModelCopyWithImpl(this._value, this._then);

  final MembershipDataModel _value;
  // ignore: unused_field
  final $Res Function(MembershipDataModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object label = freezed,
    Object duration = freezed,
    Object description = freezed,
    Object createdBy = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      label: label == freezed ? _value.label : label as String,
      duration: duration == freezed ? _value.duration : duration as int,
      description:
          description == freezed ? _value.description : description as String,
      createdBy: createdBy == freezed ? _value.createdBy : createdBy as String,
    ));
  }
}

/// @nodoc
abstract class _$MembershipDataModelCopyWith<$Res>
    implements $MembershipDataModelCopyWith<$Res> {
  factory _$MembershipDataModelCopyWith(_MembershipDataModel value,
          $Res Function(_MembershipDataModel) then) =
      __$MembershipDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String label,
      int duration,
      String description,
      String createdBy});
}

/// @nodoc
class __$MembershipDataModelCopyWithImpl<$Res>
    extends _$MembershipDataModelCopyWithImpl<$Res>
    implements _$MembershipDataModelCopyWith<$Res> {
  __$MembershipDataModelCopyWithImpl(
      _MembershipDataModel _value, $Res Function(_MembershipDataModel) _then)
      : super(_value, (v) => _then(v as _MembershipDataModel));

  @override
  _MembershipDataModel get _value => super._value as _MembershipDataModel;

  @override
  $Res call({
    Object id = freezed,
    Object label = freezed,
    Object duration = freezed,
    Object description = freezed,
    Object createdBy = freezed,
  }) {
    return _then(_MembershipDataModel(
      id: id == freezed ? _value.id : id as String,
      label: label == freezed ? _value.label : label as String,
      duration: duration == freezed ? _value.duration : duration as int,
      description:
          description == freezed ? _value.description : description as String,
      createdBy: createdBy == freezed ? _value.createdBy : createdBy as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MembershipDataModel implements _MembershipDataModel {
  _$_MembershipDataModel(
      {this.id, this.label, this.duration, this.description, this.createdBy});

  factory _$_MembershipDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MembershipDataModelFromJson(json);

  @override
  final String id;
  @override
  final String label;
  @override
  final int duration;
  @override
  final String description;
  @override
  final String createdBy;

  @override
  String toString() {
    return 'MembershipDataModel(id: $id, label: $label, duration: $duration, description: $description, createdBy: $createdBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MembershipDataModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(createdBy);

  @JsonKey(ignore: true)
  @override
  _$MembershipDataModelCopyWith<_MembershipDataModel> get copyWith =>
      __$MembershipDataModelCopyWithImpl<_MembershipDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MembershipDataModelToJson(this);
  }
}

abstract class _MembershipDataModel implements MembershipDataModel {
  factory _MembershipDataModel(
      {String id,
      String label,
      int duration,
      String description,
      String createdBy}) = _$_MembershipDataModel;

  factory _MembershipDataModel.fromJson(Map<String, dynamic> json) =
      _$_MembershipDataModel.fromJson;

  @override
  String get id;
  @override
  String get label;
  @override
  int get duration;
  @override
  String get description;
  @override
  String get createdBy;
  @override
  @JsonKey(ignore: true)
  _$MembershipDataModelCopyWith<_MembershipDataModel> get copyWith;
}
