// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'role_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RoleDataModel _$RoleDataModelFromJson(Map<String, dynamic> json) {
  return _RoleDataModel.fromJson(json);
}

/// @nodoc
class _$RoleDataModelTearOff {
  const _$RoleDataModelTearOff();

// ignore: unused_element
  _RoleDataModel call({String id, String label, String group, String name}) {
    return _RoleDataModel(
      id: id,
      label: label,
      group: group,
      name: name,
    );
  }

// ignore: unused_element
  RoleDataModel fromJson(Map<String, Object> json) {
    return RoleDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RoleDataModel = _$RoleDataModelTearOff();

/// @nodoc
mixin _$RoleDataModel {
  String get id;
  String get label;
  String get group;
  String get name;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RoleDataModelCopyWith<RoleDataModel> get copyWith;
}

/// @nodoc
abstract class $RoleDataModelCopyWith<$Res> {
  factory $RoleDataModelCopyWith(
          RoleDataModel value, $Res Function(RoleDataModel) then) =
      _$RoleDataModelCopyWithImpl<$Res>;
  $Res call({String id, String label, String group, String name});
}

/// @nodoc
class _$RoleDataModelCopyWithImpl<$Res>
    implements $RoleDataModelCopyWith<$Res> {
  _$RoleDataModelCopyWithImpl(this._value, this._then);

  final RoleDataModel _value;
  // ignore: unused_field
  final $Res Function(RoleDataModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object label = freezed,
    Object group = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      label: label == freezed ? _value.label : label as String,
      group: group == freezed ? _value.group : group as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$RoleDataModelCopyWith<$Res>
    implements $RoleDataModelCopyWith<$Res> {
  factory _$RoleDataModelCopyWith(
          _RoleDataModel value, $Res Function(_RoleDataModel) then) =
      __$RoleDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String label, String group, String name});
}

/// @nodoc
class __$RoleDataModelCopyWithImpl<$Res>
    extends _$RoleDataModelCopyWithImpl<$Res>
    implements _$RoleDataModelCopyWith<$Res> {
  __$RoleDataModelCopyWithImpl(
      _RoleDataModel _value, $Res Function(_RoleDataModel) _then)
      : super(_value, (v) => _then(v as _RoleDataModel));

  @override
  _RoleDataModel get _value => super._value as _RoleDataModel;

  @override
  $Res call({
    Object id = freezed,
    Object label = freezed,
    Object group = freezed,
    Object name = freezed,
  }) {
    return _then(_RoleDataModel(
      id: id == freezed ? _value.id : id as String,
      label: label == freezed ? _value.label : label as String,
      group: group == freezed ? _value.group : group as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RoleDataModel implements _RoleDataModel {
  const _$_RoleDataModel({this.id, this.label, this.group, this.name});

  factory _$_RoleDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RoleDataModelFromJson(json);

  @override
  final String id;
  @override
  final String label;
  @override
  final String group;
  @override
  final String name;

  @override
  String toString() {
    return 'RoleDataModel(id: $id, label: $label, group: $group, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoleDataModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.group, group) ||
                const DeepCollectionEquality().equals(other.group, group)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(group) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$RoleDataModelCopyWith<_RoleDataModel> get copyWith =>
      __$RoleDataModelCopyWithImpl<_RoleDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RoleDataModelToJson(this);
  }
}

abstract class _RoleDataModel implements RoleDataModel {
  const factory _RoleDataModel(
      {String id, String label, String group, String name}) = _$_RoleDataModel;

  factory _RoleDataModel.fromJson(Map<String, dynamic> json) =
      _$_RoleDataModel.fromJson;

  @override
  String get id;
  @override
  String get label;
  @override
  String get group;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$RoleDataModelCopyWith<_RoleDataModel> get copyWith;
}
