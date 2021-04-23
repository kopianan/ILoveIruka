// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pet_req_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PetReqRes _$PetReqResFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'savePetRequestData':
      return SavePetRequestData.fromJson(json);
    case 'getPetRequestData':
      return GetPetRequestData.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$PetReqResTearOff {
  const _$PetReqResTearOff();

// ignore: unused_element
  SavePetRequestData savePetRequestData(
      {String id,
      String name,
      String profilePictureUrl,
      String race,
      String gender,
      String animal,
      String bio,
      String weight,
      String birthDate,
      bool isStumbum,
      bool isSterile,
      bool isPedigree}) {
    return SavePetRequestData(
      id: id,
      name: name,
      profilePictureUrl: profilePictureUrl,
      race: race,
      gender: gender,
      animal: animal,
      bio: bio,
      weight: weight,
      birthDate: birthDate,
      isStumbum: isStumbum,
      isSterile: isSterile,
      isPedigree: isPedigree,
    );
  }

// ignore: unused_element
  GetPetRequestData getPetRequestData(
      {@JsonKey(defaultValue: "") String name,
      @JsonKey(defaultValue: "") String race,
      @JsonKey(defaultValue: const []) List<String> gender,
      @JsonKey(defaultValue: const []) List<String> animal,
      @JsonKey(defaultValue: const []) List<int> weight}) {
    return GetPetRequestData(
      name: name,
      race: race,
      gender: gender,
      animal: animal,
      weight: weight,
    );
  }

// ignore: unused_element
  PetReqRes fromJson(Map<String, Object> json) {
    return PetReqRes.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PetReqRes = _$PetReqResTearOff();

/// @nodoc
mixin _$PetReqRes {
  String get name;
  String get race;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult savePetRequestData(
            String id,
            String name,
            String profilePictureUrl,
            String race,
            String gender,
            String animal,
            String bio,
            String weight,
            String birthDate,
            bool isStumbum,
            bool isSterile,
            bool isPedigree),
    @required
        TResult getPetRequestData(
            @JsonKey(defaultValue: "") String name,
            @JsonKey(defaultValue: "") String race,
            @JsonKey(defaultValue: const []) List<String> gender,
            @JsonKey(defaultValue: const []) List<String> animal,
            @JsonKey(defaultValue: const []) List<int> weight),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult savePetRequestData(
        String id,
        String name,
        String profilePictureUrl,
        String race,
        String gender,
        String animal,
        String bio,
        String weight,
        String birthDate,
        bool isStumbum,
        bool isSterile,
        bool isPedigree),
    TResult getPetRequestData(
        @JsonKey(defaultValue: "") String name,
        @JsonKey(defaultValue: "") String race,
        @JsonKey(defaultValue: const []) List<String> gender,
        @JsonKey(defaultValue: const []) List<String> animal,
        @JsonKey(defaultValue: const []) List<int> weight),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult savePetRequestData(SavePetRequestData value),
    @required TResult getPetRequestData(GetPetRequestData value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult savePetRequestData(SavePetRequestData value),
    TResult getPetRequestData(GetPetRequestData value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PetReqResCopyWith<PetReqRes> get copyWith;
}

/// @nodoc
abstract class $PetReqResCopyWith<$Res> {
  factory $PetReqResCopyWith(PetReqRes value, $Res Function(PetReqRes) then) =
      _$PetReqResCopyWithImpl<$Res>;
  $Res call({String name, String race});
}

/// @nodoc
class _$PetReqResCopyWithImpl<$Res> implements $PetReqResCopyWith<$Res> {
  _$PetReqResCopyWithImpl(this._value, this._then);

  final PetReqRes _value;
  // ignore: unused_field
  final $Res Function(PetReqRes) _then;

  @override
  $Res call({
    Object name = freezed,
    Object race = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      race: race == freezed ? _value.race : race as String,
    ));
  }
}

/// @nodoc
abstract class $SavePetRequestDataCopyWith<$Res>
    implements $PetReqResCopyWith<$Res> {
  factory $SavePetRequestDataCopyWith(
          SavePetRequestData value, $Res Function(SavePetRequestData) then) =
      _$SavePetRequestDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String profilePictureUrl,
      String race,
      String gender,
      String animal,
      String bio,
      String weight,
      String birthDate,
      bool isStumbum,
      bool isSterile,
      bool isPedigree});
}

/// @nodoc
class _$SavePetRequestDataCopyWithImpl<$Res>
    extends _$PetReqResCopyWithImpl<$Res>
    implements $SavePetRequestDataCopyWith<$Res> {
  _$SavePetRequestDataCopyWithImpl(
      SavePetRequestData _value, $Res Function(SavePetRequestData) _then)
      : super(_value, (v) => _then(v as SavePetRequestData));

  @override
  SavePetRequestData get _value => super._value as SavePetRequestData;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object profilePictureUrl = freezed,
    Object race = freezed,
    Object gender = freezed,
    Object animal = freezed,
    Object bio = freezed,
    Object weight = freezed,
    Object birthDate = freezed,
    Object isStumbum = freezed,
    Object isSterile = freezed,
    Object isPedigree = freezed,
  }) {
    return _then(SavePetRequestData(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      profilePictureUrl: profilePictureUrl == freezed
          ? _value.profilePictureUrl
          : profilePictureUrl as String,
      race: race == freezed ? _value.race : race as String,
      gender: gender == freezed ? _value.gender : gender as String,
      animal: animal == freezed ? _value.animal : animal as String,
      bio: bio == freezed ? _value.bio : bio as String,
      weight: weight == freezed ? _value.weight : weight as String,
      birthDate: birthDate == freezed ? _value.birthDate : birthDate as String,
      isStumbum: isStumbum == freezed ? _value.isStumbum : isStumbum as bool,
      isSterile: isSterile == freezed ? _value.isSterile : isSterile as bool,
      isPedigree:
          isPedigree == freezed ? _value.isPedigree : isPedigree as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$SavePetRequestData implements SavePetRequestData {
  _$SavePetRequestData(
      {this.id,
      this.name,
      this.profilePictureUrl,
      this.race,
      this.gender,
      this.animal,
      this.bio,
      this.weight,
      this.birthDate,
      this.isStumbum,
      this.isSterile,
      this.isPedigree});

  factory _$SavePetRequestData.fromJson(Map<String, dynamic> json) =>
      _$_$SavePetRequestDataFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String profilePictureUrl;
  @override
  final String race;
  @override
  final String gender;
  @override
  final String animal;
  @override
  final String bio;
  @override
  final String weight;
  @override
  final String birthDate;
  @override
  final bool isStumbum;
  @override
  final bool isSterile;
  @override
  final bool isPedigree;

  @override
  String toString() {
    return 'PetReqRes.savePetRequestData(id: $id, name: $name, profilePictureUrl: $profilePictureUrl, race: $race, gender: $gender, animal: $animal, bio: $bio, weight: $weight, birthDate: $birthDate, isStumbum: $isStumbum, isSterile: $isSterile, isPedigree: $isPedigree)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SavePetRequestData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                const DeepCollectionEquality()
                    .equals(other.profilePictureUrl, profilePictureUrl)) &&
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
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.isStumbum, isStumbum) ||
                const DeepCollectionEquality()
                    .equals(other.isStumbum, isStumbum)) &&
            (identical(other.isSterile, isSterile) ||
                const DeepCollectionEquality()
                    .equals(other.isSterile, isSterile)) &&
            (identical(other.isPedigree, isPedigree) ||
                const DeepCollectionEquality()
                    .equals(other.isPedigree, isPedigree)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(profilePictureUrl) ^
      const DeepCollectionEquality().hash(race) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(animal) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(isStumbum) ^
      const DeepCollectionEquality().hash(isSterile) ^
      const DeepCollectionEquality().hash(isPedigree);

  @JsonKey(ignore: true)
  @override
  $SavePetRequestDataCopyWith<SavePetRequestData> get copyWith =>
      _$SavePetRequestDataCopyWithImpl<SavePetRequestData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult savePetRequestData(
            String id,
            String name,
            String profilePictureUrl,
            String race,
            String gender,
            String animal,
            String bio,
            String weight,
            String birthDate,
            bool isStumbum,
            bool isSterile,
            bool isPedigree),
    @required
        TResult getPetRequestData(
            @JsonKey(defaultValue: "") String name,
            @JsonKey(defaultValue: "") String race,
            @JsonKey(defaultValue: const []) List<String> gender,
            @JsonKey(defaultValue: const []) List<String> animal,
            @JsonKey(defaultValue: const []) List<int> weight),
  }) {
    assert(savePetRequestData != null);
    assert(getPetRequestData != null);
    return savePetRequestData(id, name, profilePictureUrl, race, gender, animal,
        bio, weight, birthDate, isStumbum, isSterile, isPedigree);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult savePetRequestData(
        String id,
        String name,
        String profilePictureUrl,
        String race,
        String gender,
        String animal,
        String bio,
        String weight,
        String birthDate,
        bool isStumbum,
        bool isSterile,
        bool isPedigree),
    TResult getPetRequestData(
        @JsonKey(defaultValue: "") String name,
        @JsonKey(defaultValue: "") String race,
        @JsonKey(defaultValue: const []) List<String> gender,
        @JsonKey(defaultValue: const []) List<String> animal,
        @JsonKey(defaultValue: const []) List<int> weight),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (savePetRequestData != null) {
      return savePetRequestData(id, name, profilePictureUrl, race, gender,
          animal, bio, weight, birthDate, isStumbum, isSterile, isPedigree);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult savePetRequestData(SavePetRequestData value),
    @required TResult getPetRequestData(GetPetRequestData value),
  }) {
    assert(savePetRequestData != null);
    assert(getPetRequestData != null);
    return savePetRequestData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult savePetRequestData(SavePetRequestData value),
    TResult getPetRequestData(GetPetRequestData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (savePetRequestData != null) {
      return savePetRequestData(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$SavePetRequestDataToJson(this)
      ..['runtimeType'] = 'savePetRequestData';
  }
}

abstract class SavePetRequestData implements PetReqRes {
  factory SavePetRequestData(
      {String id,
      String name,
      String profilePictureUrl,
      String race,
      String gender,
      String animal,
      String bio,
      String weight,
      String birthDate,
      bool isStumbum,
      bool isSterile,
      bool isPedigree}) = _$SavePetRequestData;

  factory SavePetRequestData.fromJson(Map<String, dynamic> json) =
      _$SavePetRequestData.fromJson;

  String get id;
  @override
  String get name;
  String get profilePictureUrl;
  @override
  String get race;
  String get gender;
  String get animal;
  String get bio;
  String get weight;
  String get birthDate;
  bool get isStumbum;
  bool get isSterile;
  bool get isPedigree;
  @override
  @JsonKey(ignore: true)
  $SavePetRequestDataCopyWith<SavePetRequestData> get copyWith;
}

/// @nodoc
abstract class $GetPetRequestDataCopyWith<$Res>
    implements $PetReqResCopyWith<$Res> {
  factory $GetPetRequestDataCopyWith(
          GetPetRequestData value, $Res Function(GetPetRequestData) then) =
      _$GetPetRequestDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(defaultValue: "") String name,
      @JsonKey(defaultValue: "") String race,
      @JsonKey(defaultValue: const []) List<String> gender,
      @JsonKey(defaultValue: const []) List<String> animal,
      @JsonKey(defaultValue: const []) List<int> weight});
}

/// @nodoc
class _$GetPetRequestDataCopyWithImpl<$Res>
    extends _$PetReqResCopyWithImpl<$Res>
    implements $GetPetRequestDataCopyWith<$Res> {
  _$GetPetRequestDataCopyWithImpl(
      GetPetRequestData _value, $Res Function(GetPetRequestData) _then)
      : super(_value, (v) => _then(v as GetPetRequestData));

  @override
  GetPetRequestData get _value => super._value as GetPetRequestData;

  @override
  $Res call({
    Object name = freezed,
    Object race = freezed,
    Object gender = freezed,
    Object animal = freezed,
    Object weight = freezed,
  }) {
    return _then(GetPetRequestData(
      name: name == freezed ? _value.name : name as String,
      race: race == freezed ? _value.race : race as String,
      gender: gender == freezed ? _value.gender : gender as List<String>,
      animal: animal == freezed ? _value.animal : animal as List<String>,
      weight: weight == freezed ? _value.weight : weight as List<int>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$GetPetRequestData implements GetPetRequestData {
  _$GetPetRequestData(
      {@JsonKey(defaultValue: "") this.name,
      @JsonKey(defaultValue: "") this.race,
      @JsonKey(defaultValue: const []) this.gender,
      @JsonKey(defaultValue: const []) this.animal,
      @JsonKey(defaultValue: const []) this.weight});

  factory _$GetPetRequestData.fromJson(Map<String, dynamic> json) =>
      _$_$GetPetRequestDataFromJson(json);

  @override
  @JsonKey(defaultValue: "")
  final String name;
  @override
  @JsonKey(defaultValue: "")
  final String race;
  @override
  @JsonKey(defaultValue: const [])
  final List<String> gender;
  @override
  @JsonKey(defaultValue: const [])
  final List<String> animal;
  @override
  @JsonKey(defaultValue: const [])
  final List<int> weight;

  @override
  String toString() {
    return 'PetReqRes.getPetRequestData(name: $name, race: $race, gender: $gender, animal: $animal, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPetRequestData &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.race, race) ||
                const DeepCollectionEquality().equals(other.race, race)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.animal, animal) ||
                const DeepCollectionEquality().equals(other.animal, animal)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(race) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(animal) ^
      const DeepCollectionEquality().hash(weight);

  @JsonKey(ignore: true)
  @override
  $GetPetRequestDataCopyWith<GetPetRequestData> get copyWith =>
      _$GetPetRequestDataCopyWithImpl<GetPetRequestData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult savePetRequestData(
            String id,
            String name,
            String profilePictureUrl,
            String race,
            String gender,
            String animal,
            String bio,
            String weight,
            String birthDate,
            bool isStumbum,
            bool isSterile,
            bool isPedigree),
    @required
        TResult getPetRequestData(
            @JsonKey(defaultValue: "") String name,
            @JsonKey(defaultValue: "") String race,
            @JsonKey(defaultValue: const []) List<String> gender,
            @JsonKey(defaultValue: const []) List<String> animal,
            @JsonKey(defaultValue: const []) List<int> weight),
  }) {
    assert(savePetRequestData != null);
    assert(getPetRequestData != null);
    return getPetRequestData(name, race, gender, animal, weight);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult savePetRequestData(
        String id,
        String name,
        String profilePictureUrl,
        String race,
        String gender,
        String animal,
        String bio,
        String weight,
        String birthDate,
        bool isStumbum,
        bool isSterile,
        bool isPedigree),
    TResult getPetRequestData(
        @JsonKey(defaultValue: "") String name,
        @JsonKey(defaultValue: "") String race,
        @JsonKey(defaultValue: const []) List<String> gender,
        @JsonKey(defaultValue: const []) List<String> animal,
        @JsonKey(defaultValue: const []) List<int> weight),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPetRequestData != null) {
      return getPetRequestData(name, race, gender, animal, weight);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult savePetRequestData(SavePetRequestData value),
    @required TResult getPetRequestData(GetPetRequestData value),
  }) {
    assert(savePetRequestData != null);
    assert(getPetRequestData != null);
    return getPetRequestData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult savePetRequestData(SavePetRequestData value),
    TResult getPetRequestData(GetPetRequestData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPetRequestData != null) {
      return getPetRequestData(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$GetPetRequestDataToJson(this)
      ..['runtimeType'] = 'getPetRequestData';
  }
}

abstract class GetPetRequestData implements PetReqRes {
  factory GetPetRequestData(
      {@JsonKey(defaultValue: "") String name,
      @JsonKey(defaultValue: "") String race,
      @JsonKey(defaultValue: const []) List<String> gender,
      @JsonKey(defaultValue: const []) List<String> animal,
      @JsonKey(defaultValue: const []) List<int> weight}) = _$GetPetRequestData;

  factory GetPetRequestData.fromJson(Map<String, dynamic> json) =
      _$GetPetRequestData.fromJson;

  @override
  @JsonKey(defaultValue: "")
  String get name;
  @override
  @JsonKey(defaultValue: "")
  String get race;
  @JsonKey(defaultValue: const [])
  List<String> get gender;
  @JsonKey(defaultValue: const [])
  List<String> get animal;
  @JsonKey(defaultValue: const [])
  List<int> get weight;
  @override
  @JsonKey(ignore: true)
  $GetPetRequestDataCopyWith<GetPetRequestData> get copyWith;
}
