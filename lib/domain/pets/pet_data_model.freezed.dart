// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pet_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PetDataModel _$PetDataModelFromJson(Map<String, dynamic> json) {
  return _PetDataModel.fromJson(json);
}

/// @nodoc
class _$PetDataModelTearOff {
  const _$PetDataModelTearOff();

// ignore: unused_element
  _PetDataModel call(
      {String id,
      String name,
      @JsonKey(defaultValue: '') String profilePictureUrl,
      String birthDate,
      String race,
      Label gender,
      Label animal,
      String bio,
      double weight,
      String user,
      @JsonKey(nullable: true) bool isStumbum,
      @JsonKey(nullable: true) bool isPedigree,
      @JsonKey(nullable: true) bool isSterile}) {
    return _PetDataModel(
      id: id,
      name: name,
      profilePictureUrl: profilePictureUrl,
      birthDate: birthDate,
      race: race,
      gender: gender,
      animal: animal,
      bio: bio,
      weight: weight,
      user: user,
      isStumbum: isStumbum,
      isPedigree: isPedigree,
      isSterile: isSterile,
    );
  }

// ignore: unused_element
  PetDataModel fromJson(Map<String, Object> json) {
    return PetDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PetDataModel = _$PetDataModelTearOff();

/// @nodoc
mixin _$PetDataModel {
  String get id;
  String get name;
  @JsonKey(defaultValue: '')
  String get profilePictureUrl;
  String get birthDate;
  String get race;
  Label get gender;
  Label get animal;
  String get bio;
  double get weight;
  String get user;
  @JsonKey(nullable: true)
  bool get isStumbum;
  @JsonKey(nullable: true)
  bool get isPedigree;
  @JsonKey(nullable: true)
  bool get isSterile;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PetDataModelCopyWith<PetDataModel> get copyWith;
}

/// @nodoc
abstract class $PetDataModelCopyWith<$Res> {
  factory $PetDataModelCopyWith(
          PetDataModel value, $Res Function(PetDataModel) then) =
      _$PetDataModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @JsonKey(defaultValue: '') String profilePictureUrl,
      String birthDate,
      String race,
      Label gender,
      Label animal,
      String bio,
      double weight,
      String user,
      @JsonKey(nullable: true) bool isStumbum,
      @JsonKey(nullable: true) bool isPedigree,
      @JsonKey(nullable: true) bool isSterile});
}

/// @nodoc
class _$PetDataModelCopyWithImpl<$Res> implements $PetDataModelCopyWith<$Res> {
  _$PetDataModelCopyWithImpl(this._value, this._then);

  final PetDataModel _value;
  // ignore: unused_field
  final $Res Function(PetDataModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object profilePictureUrl = freezed,
    Object birthDate = freezed,
    Object race = freezed,
    Object gender = freezed,
    Object animal = freezed,
    Object bio = freezed,
    Object weight = freezed,
    Object user = freezed,
    Object isStumbum = freezed,
    Object isPedigree = freezed,
    Object isSterile = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      profilePictureUrl: profilePictureUrl == freezed
          ? _value.profilePictureUrl
          : profilePictureUrl as String,
      birthDate: birthDate == freezed ? _value.birthDate : birthDate as String,
      race: race == freezed ? _value.race : race as String,
      gender: gender == freezed ? _value.gender : gender as Label,
      animal: animal == freezed ? _value.animal : animal as Label,
      bio: bio == freezed ? _value.bio : bio as String,
      weight: weight == freezed ? _value.weight : weight as double,
      user: user == freezed ? _value.user : user as String,
      isStumbum: isStumbum == freezed ? _value.isStumbum : isStumbum as bool,
      isPedigree:
          isPedigree == freezed ? _value.isPedigree : isPedigree as bool,
      isSterile: isSterile == freezed ? _value.isSterile : isSterile as bool,
    ));
  }
}

/// @nodoc
abstract class _$PetDataModelCopyWith<$Res>
    implements $PetDataModelCopyWith<$Res> {
  factory _$PetDataModelCopyWith(
          _PetDataModel value, $Res Function(_PetDataModel) then) =
      __$PetDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      @JsonKey(defaultValue: '') String profilePictureUrl,
      String birthDate,
      String race,
      Label gender,
      Label animal,
      String bio,
      double weight,
      String user,
      @JsonKey(nullable: true) bool isStumbum,
      @JsonKey(nullable: true) bool isPedigree,
      @JsonKey(nullable: true) bool isSterile});
}

/// @nodoc
class __$PetDataModelCopyWithImpl<$Res> extends _$PetDataModelCopyWithImpl<$Res>
    implements _$PetDataModelCopyWith<$Res> {
  __$PetDataModelCopyWithImpl(
      _PetDataModel _value, $Res Function(_PetDataModel) _then)
      : super(_value, (v) => _then(v as _PetDataModel));

  @override
  _PetDataModel get _value => super._value as _PetDataModel;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object profilePictureUrl = freezed,
    Object birthDate = freezed,
    Object race = freezed,
    Object gender = freezed,
    Object animal = freezed,
    Object bio = freezed,
    Object weight = freezed,
    Object user = freezed,
    Object isStumbum = freezed,
    Object isPedigree = freezed,
    Object isSterile = freezed,
  }) {
    return _then(_PetDataModel(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      profilePictureUrl: profilePictureUrl == freezed
          ? _value.profilePictureUrl
          : profilePictureUrl as String,
      birthDate: birthDate == freezed ? _value.birthDate : birthDate as String,
      race: race == freezed ? _value.race : race as String,
      gender: gender == freezed ? _value.gender : gender as Label,
      animal: animal == freezed ? _value.animal : animal as Label,
      bio: bio == freezed ? _value.bio : bio as String,
      weight: weight == freezed ? _value.weight : weight as double,
      user: user == freezed ? _value.user : user as String,
      isStumbum: isStumbum == freezed ? _value.isStumbum : isStumbum as bool,
      isPedigree:
          isPedigree == freezed ? _value.isPedigree : isPedigree as bool,
      isSterile: isSterile == freezed ? _value.isSterile : isSterile as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PetDataModel implements _PetDataModel {
  _$_PetDataModel(
      {this.id,
      this.name,
      @JsonKey(defaultValue: '') this.profilePictureUrl,
      this.birthDate,
      this.race,
      this.gender,
      this.animal,
      this.bio,
      this.weight,
      this.user,
      @JsonKey(nullable: true) this.isStumbum,
      @JsonKey(nullable: true) this.isPedigree,
      @JsonKey(nullable: true) this.isSterile});

  factory _$_PetDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PetDataModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(defaultValue: '')
  final String profilePictureUrl;
  @override
  final String birthDate;
  @override
  final String race;
  @override
  final Label gender;
  @override
  final Label animal;
  @override
  final String bio;
  @override
  final double weight;
  @override
  final String user;
  @override
  @JsonKey(nullable: true)
  final bool isStumbum;
  @override
  @JsonKey(nullable: true)
  final bool isPedigree;
  @override
  @JsonKey(nullable: true)
  final bool isSterile;

  @override
  String toString() {
    return 'PetDataModel(id: $id, name: $name, profilePictureUrl: $profilePictureUrl, birthDate: $birthDate, race: $race, gender: $gender, animal: $animal, bio: $bio, weight: $weight, user: $user, isStumbum: $isStumbum, isPedigree: $isPedigree, isSterile: $isSterile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PetDataModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                const DeepCollectionEquality()
                    .equals(other.profilePictureUrl, profilePictureUrl)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.race, race) ||
                const DeepCollectionEquality().equals(other.race, race)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.animal, animal) ||
                const DeepCollectionEquality().equals(other.animal, animal)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.isStumbum, isStumbum) ||
                const DeepCollectionEquality()
                    .equals(other.isStumbum, isStumbum)) &&
            (identical(other.isPedigree, isPedigree) ||
                const DeepCollectionEquality()
                    .equals(other.isPedigree, isPedigree)) &&
            (identical(other.isSterile, isSterile) ||
                const DeepCollectionEquality()
                    .equals(other.isSterile, isSterile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(profilePictureUrl) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(race) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(animal) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(isStumbum) ^
      const DeepCollectionEquality().hash(isPedigree) ^
      const DeepCollectionEquality().hash(isSterile);

  @JsonKey(ignore: true)
  @override
  _$PetDataModelCopyWith<_PetDataModel> get copyWith =>
      __$PetDataModelCopyWithImpl<_PetDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PetDataModelToJson(this);
  }
}

abstract class _PetDataModel implements PetDataModel {
  factory _PetDataModel(
      {String id,
      String name,
      @JsonKey(defaultValue: '') String profilePictureUrl,
      String birthDate,
      String race,
      Label gender,
      Label animal,
      String bio,
      double weight,
      String user,
      @JsonKey(nullable: true) bool isStumbum,
      @JsonKey(nullable: true) bool isPedigree,
      @JsonKey(nullable: true) bool isSterile}) = _$_PetDataModel;

  factory _PetDataModel.fromJson(Map<String, dynamic> json) =
      _$_PetDataModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(defaultValue: '')
  String get profilePictureUrl;
  @override
  String get birthDate;
  @override
  String get race;
  @override
  Label get gender;
  @override
  Label get animal;
  @override
  String get bio;
  @override
  double get weight;
  @override
  String get user;
  @override
  @JsonKey(nullable: true)
  bool get isStumbum;
  @override
  @JsonKey(nullable: true)
  bool get isPedigree;
  @override
  @JsonKey(nullable: true)
  bool get isSterile;
  @override
  @JsonKey(ignore: true)
  _$PetDataModelCopyWith<_PetDataModel> get copyWith;
}
