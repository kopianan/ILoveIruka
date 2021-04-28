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
      {@JsonKey(name: "id")
          String id,
      @JsonKey(name: "label")
          String label,
      @JsonKey(name: "duration")
          double duration,
      @JsonKey(name: "description")
          String description,
      @JsonKey(name: "price")
          double price,
      @JsonKey(name: "formattedPrice")
          String formattedPrice,
      @JsonKey(name: "specialDiscount")
          double specialDiscount,
      @JsonKey(name: "formattedSpecialDiscount")
          String formattedSpecialDiscount,
      @JsonKey(name: "colors", defaultValue: const [
        "FF3CB4FF",
        "FF3CB4FF",
        "FF3CB4FF",
        "FF3CB4FF"
      ])
          List<String> colors,
      @JsonKey(name: "createdBy")
          String createdBy,
      @JsonKey(name: "lastUpdatedBy")
          String lastUpdatedBy}) {
    return _MembershipDataModel(
      id: id,
      label: label,
      duration: duration,
      description: description,
      price: price,
      formattedPrice: formattedPrice,
      specialDiscount: specialDiscount,
      formattedSpecialDiscount: formattedSpecialDiscount,
      colors: colors,
      createdBy: createdBy,
      lastUpdatedBy: lastUpdatedBy,
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
  @JsonKey(name: "id")
  String get id;
  @JsonKey(name: "label")
  String get label;
  @JsonKey(name: "duration")
  double get duration;
  @JsonKey(name: "description")
  String get description;
  @JsonKey(name: "price")
  double get price;
  @JsonKey(name: "formattedPrice")
  String get formattedPrice;
  @JsonKey(name: "specialDiscount")
  double get specialDiscount;
  @JsonKey(name: "formattedSpecialDiscount")
  String get formattedSpecialDiscount;
  @JsonKey(
      name: "colors",
      defaultValue: const ["FF3CB4FF", "FF3CB4FF", "FF3CB4FF", "FF3CB4FF"])
  List<String> get colors;
  @JsonKey(name: "createdBy")
  String get createdBy;
  @JsonKey(name: "lastUpdatedBy")
  String get lastUpdatedBy;

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
      {@JsonKey(name: "id")
          String id,
      @JsonKey(name: "label")
          String label,
      @JsonKey(name: "duration")
          double duration,
      @JsonKey(name: "description")
          String description,
      @JsonKey(name: "price")
          double price,
      @JsonKey(name: "formattedPrice")
          String formattedPrice,
      @JsonKey(name: "specialDiscount")
          double specialDiscount,
      @JsonKey(name: "formattedSpecialDiscount")
          String formattedSpecialDiscount,
      @JsonKey(name: "colors", defaultValue: const [
        "FF3CB4FF",
        "FF3CB4FF",
        "FF3CB4FF",
        "FF3CB4FF"
      ])
          List<String> colors,
      @JsonKey(name: "createdBy")
          String createdBy,
      @JsonKey(name: "lastUpdatedBy")
          String lastUpdatedBy});
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
    Object price = freezed,
    Object formattedPrice = freezed,
    Object specialDiscount = freezed,
    Object formattedSpecialDiscount = freezed,
    Object colors = freezed,
    Object createdBy = freezed,
    Object lastUpdatedBy = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      label: label == freezed ? _value.label : label as String,
      duration: duration == freezed ? _value.duration : duration as double,
      description:
          description == freezed ? _value.description : description as String,
      price: price == freezed ? _value.price : price as double,
      formattedPrice: formattedPrice == freezed
          ? _value.formattedPrice
          : formattedPrice as String,
      specialDiscount: specialDiscount == freezed
          ? _value.specialDiscount
          : specialDiscount as double,
      formattedSpecialDiscount: formattedSpecialDiscount == freezed
          ? _value.formattedSpecialDiscount
          : formattedSpecialDiscount as String,
      colors: colors == freezed ? _value.colors : colors as List<String>,
      createdBy: createdBy == freezed ? _value.createdBy : createdBy as String,
      lastUpdatedBy: lastUpdatedBy == freezed
          ? _value.lastUpdatedBy
          : lastUpdatedBy as String,
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
      {@JsonKey(name: "id")
          String id,
      @JsonKey(name: "label")
          String label,
      @JsonKey(name: "duration")
          double duration,
      @JsonKey(name: "description")
          String description,
      @JsonKey(name: "price")
          double price,
      @JsonKey(name: "formattedPrice")
          String formattedPrice,
      @JsonKey(name: "specialDiscount")
          double specialDiscount,
      @JsonKey(name: "formattedSpecialDiscount")
          String formattedSpecialDiscount,
      @JsonKey(name: "colors", defaultValue: const [
        "FF3CB4FF",
        "FF3CB4FF",
        "FF3CB4FF",
        "FF3CB4FF"
      ])
          List<String> colors,
      @JsonKey(name: "createdBy")
          String createdBy,
      @JsonKey(name: "lastUpdatedBy")
          String lastUpdatedBy});
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
    Object price = freezed,
    Object formattedPrice = freezed,
    Object specialDiscount = freezed,
    Object formattedSpecialDiscount = freezed,
    Object colors = freezed,
    Object createdBy = freezed,
    Object lastUpdatedBy = freezed,
  }) {
    return _then(_MembershipDataModel(
      id: id == freezed ? _value.id : id as String,
      label: label == freezed ? _value.label : label as String,
      duration: duration == freezed ? _value.duration : duration as double,
      description:
          description == freezed ? _value.description : description as String,
      price: price == freezed ? _value.price : price as double,
      formattedPrice: formattedPrice == freezed
          ? _value.formattedPrice
          : formattedPrice as String,
      specialDiscount: specialDiscount == freezed
          ? _value.specialDiscount
          : specialDiscount as double,
      formattedSpecialDiscount: formattedSpecialDiscount == freezed
          ? _value.formattedSpecialDiscount
          : formattedSpecialDiscount as String,
      colors: colors == freezed ? _value.colors : colors as List<String>,
      createdBy: createdBy == freezed ? _value.createdBy : createdBy as String,
      lastUpdatedBy: lastUpdatedBy == freezed
          ? _value.lastUpdatedBy
          : lastUpdatedBy as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MembershipDataModel implements _MembershipDataModel {
  _$_MembershipDataModel(
      {@JsonKey(name: "id")
          this.id,
      @JsonKey(name: "label")
          this.label,
      @JsonKey(name: "duration")
          this.duration,
      @JsonKey(name: "description")
          this.description,
      @JsonKey(name: "price")
          this.price,
      @JsonKey(name: "formattedPrice")
          this.formattedPrice,
      @JsonKey(name: "specialDiscount")
          this.specialDiscount,
      @JsonKey(name: "formattedSpecialDiscount")
          this.formattedSpecialDiscount,
      @JsonKey(name: "colors", defaultValue: const [
        "FF3CB4FF",
        "FF3CB4FF",
        "FF3CB4FF",
        "FF3CB4FF"
      ])
          this.colors,
      @JsonKey(name: "createdBy")
          this.createdBy,
      @JsonKey(name: "lastUpdatedBy")
          this.lastUpdatedBy});

  factory _$_MembershipDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MembershipDataModelFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "label")
  final String label;
  @override
  @JsonKey(name: "duration")
  final double duration;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "price")
  final double price;
  @override
  @JsonKey(name: "formattedPrice")
  final String formattedPrice;
  @override
  @JsonKey(name: "specialDiscount")
  final double specialDiscount;
  @override
  @JsonKey(name: "formattedSpecialDiscount")
  final String formattedSpecialDiscount;
  @override
  @JsonKey(
      name: "colors",
      defaultValue: const ["FF3CB4FF", "FF3CB4FF", "FF3CB4FF", "FF3CB4FF"])
  final List<String> colors;
  @override
  @JsonKey(name: "createdBy")
  final String createdBy;
  @override
  @JsonKey(name: "lastUpdatedBy")
  final String lastUpdatedBy;

  @override
  String toString() {
    return 'MembershipDataModel(id: $id, label: $label, duration: $duration, description: $description, price: $price, formattedPrice: $formattedPrice, specialDiscount: $specialDiscount, formattedSpecialDiscount: $formattedSpecialDiscount, colors: $colors, createdBy: $createdBy, lastUpdatedBy: $lastUpdatedBy)';
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
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.formattedPrice, formattedPrice) ||
                const DeepCollectionEquality()
                    .equals(other.formattedPrice, formattedPrice)) &&
            (identical(other.specialDiscount, specialDiscount) ||
                const DeepCollectionEquality()
                    .equals(other.specialDiscount, specialDiscount)) &&
            (identical(
                    other.formattedSpecialDiscount, formattedSpecialDiscount) ||
                const DeepCollectionEquality().equals(
                    other.formattedSpecialDiscount,
                    formattedSpecialDiscount)) &&
            (identical(other.colors, colors) ||
                const DeepCollectionEquality().equals(other.colors, colors)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.lastUpdatedBy, lastUpdatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.lastUpdatedBy, lastUpdatedBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(formattedPrice) ^
      const DeepCollectionEquality().hash(specialDiscount) ^
      const DeepCollectionEquality().hash(formattedSpecialDiscount) ^
      const DeepCollectionEquality().hash(colors) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(lastUpdatedBy);

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
      {@JsonKey(name: "id")
          String id,
      @JsonKey(name: "label")
          String label,
      @JsonKey(name: "duration")
          double duration,
      @JsonKey(name: "description")
          String description,
      @JsonKey(name: "price")
          double price,
      @JsonKey(name: "formattedPrice")
          String formattedPrice,
      @JsonKey(name: "specialDiscount")
          double specialDiscount,
      @JsonKey(name: "formattedSpecialDiscount")
          String formattedSpecialDiscount,
      @JsonKey(name: "colors", defaultValue: const [
        "FF3CB4FF",
        "FF3CB4FF",
        "FF3CB4FF",
        "FF3CB4FF"
      ])
          List<String> colors,
      @JsonKey(name: "createdBy")
          String createdBy,
      @JsonKey(name: "lastUpdatedBy")
          String lastUpdatedBy}) = _$_MembershipDataModel;

  factory _MembershipDataModel.fromJson(Map<String, dynamic> json) =
      _$_MembershipDataModel.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "label")
  String get label;
  @override
  @JsonKey(name: "duration")
  double get duration;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "price")
  double get price;
  @override
  @JsonKey(name: "formattedPrice")
  String get formattedPrice;
  @override
  @JsonKey(name: "specialDiscount")
  double get specialDiscount;
  @override
  @JsonKey(name: "formattedSpecialDiscount")
  String get formattedSpecialDiscount;
  @override
  @JsonKey(
      name: "colors",
      defaultValue: const ["FF3CB4FF", "FF3CB4FF", "FF3CB4FF", "FF3CB4FF"])
  List<String> get colors;
  @override
  @JsonKey(name: "createdBy")
  String get createdBy;
  @override
  @JsonKey(name: "lastUpdatedBy")
  String get lastUpdatedBy;
  @override
  @JsonKey(ignore: true)
  _$MembershipDataModelCopyWith<_MembershipDataModel> get copyWith;
}
