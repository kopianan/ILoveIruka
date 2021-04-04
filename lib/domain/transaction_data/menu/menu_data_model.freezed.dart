// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'menu_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MenuDataModel _$MenuDataModelFromJson(Map<String, dynamic> json) {
  return _MenuDataModel.fromJson(json);
}

/// @nodoc
class _$MenuDataModelTearOff {
  const _$MenuDataModelTearOff();

// ignore: unused_element
  _MenuDataModel call({String name, String id}) {
    return _MenuDataModel(
      name: name,
      id: id,
    );
  }

// ignore: unused_element
  MenuDataModel fromJson(Map<String, Object> json) {
    return MenuDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MenuDataModel = _$MenuDataModelTearOff();

/// @nodoc
mixin _$MenuDataModel {
  String get name;
  String get id;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MenuDataModelCopyWith<MenuDataModel> get copyWith;
}

/// @nodoc
abstract class $MenuDataModelCopyWith<$Res> {
  factory $MenuDataModelCopyWith(
          MenuDataModel value, $Res Function(MenuDataModel) then) =
      _$MenuDataModelCopyWithImpl<$Res>;
  $Res call({String name, String id});
}

/// @nodoc
class _$MenuDataModelCopyWithImpl<$Res>
    implements $MenuDataModelCopyWith<$Res> {
  _$MenuDataModelCopyWithImpl(this._value, this._then);

  final MenuDataModel _value;
  // ignore: unused_field
  final $Res Function(MenuDataModel) _then;

  @override
  $Res call({
    Object name = freezed,
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
abstract class _$MenuDataModelCopyWith<$Res>
    implements $MenuDataModelCopyWith<$Res> {
  factory _$MenuDataModelCopyWith(
          _MenuDataModel value, $Res Function(_MenuDataModel) then) =
      __$MenuDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, String id});
}

/// @nodoc
class __$MenuDataModelCopyWithImpl<$Res>
    extends _$MenuDataModelCopyWithImpl<$Res>
    implements _$MenuDataModelCopyWith<$Res> {
  __$MenuDataModelCopyWithImpl(
      _MenuDataModel _value, $Res Function(_MenuDataModel) _then)
      : super(_value, (v) => _then(v as _MenuDataModel));

  @override
  _MenuDataModel get _value => super._value as _MenuDataModel;

  @override
  $Res call({
    Object name = freezed,
    Object id = freezed,
  }) {
    return _then(_MenuDataModel(
      name: name == freezed ? _value.name : name as String,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MenuDataModel implements _MenuDataModel {
  _$_MenuDataModel({this.name, this.id});

  factory _$_MenuDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MenuDataModelFromJson(json);

  @override
  final String name;
  @override
  final String id;

  @override
  String toString() {
    return 'MenuDataModel(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MenuDataModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$MenuDataModelCopyWith<_MenuDataModel> get copyWith =>
      __$MenuDataModelCopyWithImpl<_MenuDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MenuDataModelToJson(this);
  }
}

abstract class _MenuDataModel implements MenuDataModel {
  factory _MenuDataModel({String name, String id}) = _$_MenuDataModel;

  factory _MenuDataModel.fromJson(Map<String, dynamic> json) =
      _$_MenuDataModel.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$MenuDataModelCopyWith<_MenuDataModel> get copyWith;
}
