// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'partnership_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PartnershipDataModel _$PartnershipDataModelFromJson(Map<String, dynamic> json) {
  return _PartnershipDataModel.fromJson(json);
}

/// @nodoc
class _$PartnershipDataModelTearOff {
  const _$PartnershipDataModelTearOff();

// ignore: unused_element
  _PartnershipDataModel call(
      {String id,
      String fullName,
      String email,
      @JsonKey(nullable: true)
          String phoneNumber,
      @JsonKey(nullable: true, defaultValue: 'no image')
          String imageUrl,
      @JsonKey(nullable: true, defaultValue: "1")
          String lang,
      @JsonKey(nullable: true, defaultValue: '1')
          String lat,
      @JsonKey(nullable: true, defaultValue: 'no description')
          String description}) {
    return _PartnershipDataModel(
      id: id,
      fullName: fullName,
      email: email,
      phoneNumber: phoneNumber,
      imageUrl: imageUrl,
      lang: lang,
      lat: lat,
      description: description,
    );
  }

// ignore: unused_element
  PartnershipDataModel fromJson(Map<String, Object> json) {
    return PartnershipDataModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PartnershipDataModel = _$PartnershipDataModelTearOff();

/// @nodoc
mixin _$PartnershipDataModel {
  String get id;
  String get fullName;
  String get email;
  @JsonKey(nullable: true)
  String get phoneNumber;
  @JsonKey(nullable: true, defaultValue: 'no image')
  String get imageUrl;
  @JsonKey(nullable: true, defaultValue: "1")
  String get lang;
  @JsonKey(nullable: true, defaultValue: '1')
  String get lat;
  @JsonKey(nullable: true, defaultValue: 'no description')
  String get description;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PartnershipDataModelCopyWith<PartnershipDataModel> get copyWith;
}

/// @nodoc
abstract class $PartnershipDataModelCopyWith<$Res> {
  factory $PartnershipDataModelCopyWith(PartnershipDataModel value,
          $Res Function(PartnershipDataModel) then) =
      _$PartnershipDataModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String fullName,
      String email,
      @JsonKey(nullable: true)
          String phoneNumber,
      @JsonKey(nullable: true, defaultValue: 'no image')
          String imageUrl,
      @JsonKey(nullable: true, defaultValue: "1")
          String lang,
      @JsonKey(nullable: true, defaultValue: '1')
          String lat,
      @JsonKey(nullable: true, defaultValue: 'no description')
          String description});
}

/// @nodoc
class _$PartnershipDataModelCopyWithImpl<$Res>
    implements $PartnershipDataModelCopyWith<$Res> {
  _$PartnershipDataModelCopyWithImpl(this._value, this._then);

  final PartnershipDataModel _value;
  // ignore: unused_field
  final $Res Function(PartnershipDataModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object fullName = freezed,
    Object email = freezed,
    Object phoneNumber = freezed,
    Object imageUrl = freezed,
    Object lang = freezed,
    Object lat = freezed,
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      email: email == freezed ? _value.email : email as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      lang: lang == freezed ? _value.lang : lang as String,
      lat: lat == freezed ? _value.lat : lat as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
abstract class _$PartnershipDataModelCopyWith<$Res>
    implements $PartnershipDataModelCopyWith<$Res> {
  factory _$PartnershipDataModelCopyWith(_PartnershipDataModel value,
          $Res Function(_PartnershipDataModel) then) =
      __$PartnershipDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String fullName,
      String email,
      @JsonKey(nullable: true)
          String phoneNumber,
      @JsonKey(nullable: true, defaultValue: 'no image')
          String imageUrl,
      @JsonKey(nullable: true, defaultValue: "1")
          String lang,
      @JsonKey(nullable: true, defaultValue: '1')
          String lat,
      @JsonKey(nullable: true, defaultValue: 'no description')
          String description});
}

/// @nodoc
class __$PartnershipDataModelCopyWithImpl<$Res>
    extends _$PartnershipDataModelCopyWithImpl<$Res>
    implements _$PartnershipDataModelCopyWith<$Res> {
  __$PartnershipDataModelCopyWithImpl(
      _PartnershipDataModel _value, $Res Function(_PartnershipDataModel) _then)
      : super(_value, (v) => _then(v as _PartnershipDataModel));

  @override
  _PartnershipDataModel get _value => super._value as _PartnershipDataModel;

  @override
  $Res call({
    Object id = freezed,
    Object fullName = freezed,
    Object email = freezed,
    Object phoneNumber = freezed,
    Object imageUrl = freezed,
    Object lang = freezed,
    Object lat = freezed,
    Object description = freezed,
  }) {
    return _then(_PartnershipDataModel(
      id: id == freezed ? _value.id : id as String,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      email: email == freezed ? _value.email : email as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      lang: lang == freezed ? _value.lang : lang as String,
      lat: lat == freezed ? _value.lat : lat as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PartnershipDataModel implements _PartnershipDataModel {
  _$_PartnershipDataModel(
      {this.id,
      this.fullName,
      this.email,
      @JsonKey(nullable: true)
          this.phoneNumber,
      @JsonKey(nullable: true, defaultValue: 'no image')
          this.imageUrl,
      @JsonKey(nullable: true, defaultValue: "1")
          this.lang,
      @JsonKey(nullable: true, defaultValue: '1')
          this.lat,
      @JsonKey(nullable: true, defaultValue: 'no description')
          this.description});

  factory _$_PartnershipDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PartnershipDataModelFromJson(json);

  @override
  final String id;
  @override
  final String fullName;
  @override
  final String email;
  @override
  @JsonKey(nullable: true)
  final String phoneNumber;
  @override
  @JsonKey(nullable: true, defaultValue: 'no image')
  final String imageUrl;
  @override
  @JsonKey(nullable: true, defaultValue: "1")
  final String lang;
  @override
  @JsonKey(nullable: true, defaultValue: '1')
  final String lat;
  @override
  @JsonKey(nullable: true, defaultValue: 'no description')
  final String description;

  @override
  String toString() {
    return 'PartnershipDataModel(id: $id, fullName: $fullName, email: $email, phoneNumber: $phoneNumber, imageUrl: $imageUrl, lang: $lang, lat: $lat, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PartnershipDataModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.lang, lang) ||
                const DeepCollectionEquality().equals(other.lang, lang)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(lang) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$PartnershipDataModelCopyWith<_PartnershipDataModel> get copyWith =>
      __$PartnershipDataModelCopyWithImpl<_PartnershipDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PartnershipDataModelToJson(this);
  }
}

abstract class _PartnershipDataModel implements PartnershipDataModel {
  factory _PartnershipDataModel(
      {String id,
      String fullName,
      String email,
      @JsonKey(nullable: true)
          String phoneNumber,
      @JsonKey(nullable: true, defaultValue: 'no image')
          String imageUrl,
      @JsonKey(nullable: true, defaultValue: "1")
          String lang,
      @JsonKey(nullable: true, defaultValue: '1')
          String lat,
      @JsonKey(nullable: true, defaultValue: 'no description')
          String description}) = _$_PartnershipDataModel;

  factory _PartnershipDataModel.fromJson(Map<String, dynamic> json) =
      _$_PartnershipDataModel.fromJson;

  @override
  String get id;
  @override
  String get fullName;
  @override
  String get email;
  @override
  @JsonKey(nullable: true)
  String get phoneNumber;
  @override
  @JsonKey(nullable: true, defaultValue: 'no image')
  String get imageUrl;
  @override
  @JsonKey(nullable: true, defaultValue: "1")
  String get lang;
  @override
  @JsonKey(nullable: true, defaultValue: '1')
  String get lat;
  @override
  @JsonKey(nullable: true, defaultValue: 'no description')
  String get description;
  @override
  @JsonKey(ignore: true)
  _$PartnershipDataModelCopyWith<_PartnershipDataModel> get copyWith;
}
