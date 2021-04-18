// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pet_post_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PetPostDataModel _$PetPostDataModelFromJson(Map<String, dynamic> json) {
  return _PetPostDataModel.fromJson(json);
}

/// @nodoc
class _$PetPostDataModelTearOff {
  const _$PetPostDataModelTearOff();

// ignore: unused_element
  _PetPostDataModel call(
      {@JsonKey(nullable: true) String id,
      @JsonKey(nullable: true) String catpion,
      String pictureUrl,
      String pet}) {
    return _PetPostDataModel(
      id: id,
      catpion: catpion,
      pictureUrl: pictureUrl,
      pet: pet,
    );
  }

// ignore: unused_element
  PetPostDataModel fromJson(Map<String, Object> json) {
    return PetPostDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PetPostDataModel = _$PetPostDataModelTearOff();

/// @nodoc
mixin _$PetPostDataModel {
  @JsonKey(nullable: true)
  String get id;
  @JsonKey(nullable: true)
  String get catpion;
  String get pictureUrl;
  String get pet;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PetPostDataModelCopyWith<PetPostDataModel> get copyWith;
}

/// @nodoc
abstract class $PetPostDataModelCopyWith<$Res> {
  factory $PetPostDataModelCopyWith(
          PetPostDataModel value, $Res Function(PetPostDataModel) then) =
      _$PetPostDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(nullable: true) String id,
      @JsonKey(nullable: true) String catpion,
      String pictureUrl,
      String pet});
}

/// @nodoc
class _$PetPostDataModelCopyWithImpl<$Res>
    implements $PetPostDataModelCopyWith<$Res> {
  _$PetPostDataModelCopyWithImpl(this._value, this._then);

  final PetPostDataModel _value;
  // ignore: unused_field
  final $Res Function(PetPostDataModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object catpion = freezed,
    Object pictureUrl = freezed,
    Object pet = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      catpion: catpion == freezed ? _value.catpion : catpion as String,
      pictureUrl:
          pictureUrl == freezed ? _value.pictureUrl : pictureUrl as String,
      pet: pet == freezed ? _value.pet : pet as String,
    ));
  }
}

/// @nodoc
abstract class _$PetPostDataModelCopyWith<$Res>
    implements $PetPostDataModelCopyWith<$Res> {
  factory _$PetPostDataModelCopyWith(
          _PetPostDataModel value, $Res Function(_PetPostDataModel) then) =
      __$PetPostDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(nullable: true) String id,
      @JsonKey(nullable: true) String catpion,
      String pictureUrl,
      String pet});
}

/// @nodoc
class __$PetPostDataModelCopyWithImpl<$Res>
    extends _$PetPostDataModelCopyWithImpl<$Res>
    implements _$PetPostDataModelCopyWith<$Res> {
  __$PetPostDataModelCopyWithImpl(
      _PetPostDataModel _value, $Res Function(_PetPostDataModel) _then)
      : super(_value, (v) => _then(v as _PetPostDataModel));

  @override
  _PetPostDataModel get _value => super._value as _PetPostDataModel;

  @override
  $Res call({
    Object id = freezed,
    Object catpion = freezed,
    Object pictureUrl = freezed,
    Object pet = freezed,
  }) {
    return _then(_PetPostDataModel(
      id: id == freezed ? _value.id : id as String,
      catpion: catpion == freezed ? _value.catpion : catpion as String,
      pictureUrl:
          pictureUrl == freezed ? _value.pictureUrl : pictureUrl as String,
      pet: pet == freezed ? _value.pet : pet as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PetPostDataModel implements _PetPostDataModel {
  _$_PetPostDataModel(
      {@JsonKey(nullable: true) this.id,
      @JsonKey(nullable: true) this.catpion,
      this.pictureUrl,
      this.pet});

  factory _$_PetPostDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PetPostDataModelFromJson(json);

  @override
  @JsonKey(nullable: true)
  final String id;
  @override
  @JsonKey(nullable: true)
  final String catpion;
  @override
  final String pictureUrl;
  @override
  final String pet;

  @override
  String toString() {
    return 'PetPostDataModel(id: $id, catpion: $catpion, pictureUrl: $pictureUrl, pet: $pet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PetPostDataModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.catpion, catpion) ||
                const DeepCollectionEquality()
                    .equals(other.catpion, catpion)) &&
            (identical(other.pictureUrl, pictureUrl) ||
                const DeepCollectionEquality()
                    .equals(other.pictureUrl, pictureUrl)) &&
            (identical(other.pet, pet) ||
                const DeepCollectionEquality().equals(other.pet, pet)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(catpion) ^
      const DeepCollectionEquality().hash(pictureUrl) ^
      const DeepCollectionEquality().hash(pet);

  @JsonKey(ignore: true)
  @override
  _$PetPostDataModelCopyWith<_PetPostDataModel> get copyWith =>
      __$PetPostDataModelCopyWithImpl<_PetPostDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PetPostDataModelToJson(this);
  }
}

abstract class _PetPostDataModel implements PetPostDataModel {
  factory _PetPostDataModel(
      {@JsonKey(nullable: true) String id,
      @JsonKey(nullable: true) String catpion,
      String pictureUrl,
      String pet}) = _$_PetPostDataModel;

  factory _PetPostDataModel.fromJson(Map<String, dynamic> json) =
      _$_PetPostDataModel.fromJson;

  @override
  @JsonKey(nullable: true)
  String get id;
  @override
  @JsonKey(nullable: true)
  String get catpion;
  @override
  String get pictureUrl;
  @override
  String get pet;
  @override
  @JsonKey(ignore: true)
  _$PetPostDataModelCopyWith<_PetPostDataModel> get copyWith;
}
