// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'menu_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MenuDataModel _$MenuDataModelFromJson(Map<String, dynamic> json) {
  return TopMenuDataModelData.fromJson(json);
}

/// @nodoc
class _$MenuDataModelTearOff {
  const _$MenuDataModelTearOff();

// ignore: unused_element
  TopMenuDataModelData topMenuDataModelData(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'label') String label,
      @JsonKey(name: 'action') String action,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'imageUrl') String imageUrl,
      @JsonKey(name: 'order') int order}) {
    return TopMenuDataModelData(
      id: id,
      label: label,
      action: action,
      type: type,
      imageUrl: imageUrl,
      order: order,
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
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'label')
  String get label;
  @JsonKey(name: 'action')
  String get action;
  @JsonKey(name: 'type')
  String get type;
  @JsonKey(name: 'imageUrl')
  String get imageUrl;
  @JsonKey(name: 'order')
  int get order;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult topMenuDataModelData(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'label') String label,
            @JsonKey(name: 'action') String action,
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'imageUrl') String imageUrl,
            @JsonKey(name: 'order') int order),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult topMenuDataModelData(
        @JsonKey(name: 'id') String id,
        @JsonKey(name: 'label') String label,
        @JsonKey(name: 'action') String action,
        @JsonKey(name: 'type') String type,
        @JsonKey(name: 'imageUrl') String imageUrl,
        @JsonKey(name: 'order') int order),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult topMenuDataModelData(TopMenuDataModelData value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult topMenuDataModelData(TopMenuDataModelData value),
    @required TResult orElse(),
  });
  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MenuDataModelCopyWith<MenuDataModel> get copyWith;
}

/// @nodoc
abstract class $MenuDataModelCopyWith<$Res> {
  factory $MenuDataModelCopyWith(
          MenuDataModel value, $Res Function(MenuDataModel) then) =
      _$MenuDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'label') String label,
      @JsonKey(name: 'action') String action,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'imageUrl') String imageUrl,
      @JsonKey(name: 'order') int order});
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
    Object id = freezed,
    Object label = freezed,
    Object action = freezed,
    Object type = freezed,
    Object imageUrl = freezed,
    Object order = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      label: label == freezed ? _value.label : label as String,
      action: action == freezed ? _value.action : action as String,
      type: type == freezed ? _value.type : type as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      order: order == freezed ? _value.order : order as int,
    ));
  }
}

/// @nodoc
abstract class $TopMenuDataModelDataCopyWith<$Res>
    implements $MenuDataModelCopyWith<$Res> {
  factory $TopMenuDataModelDataCopyWith(TopMenuDataModelData value,
          $Res Function(TopMenuDataModelData) then) =
      _$TopMenuDataModelDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'label') String label,
      @JsonKey(name: 'action') String action,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'imageUrl') String imageUrl,
      @JsonKey(name: 'order') int order});
}

/// @nodoc
class _$TopMenuDataModelDataCopyWithImpl<$Res>
    extends _$MenuDataModelCopyWithImpl<$Res>
    implements $TopMenuDataModelDataCopyWith<$Res> {
  _$TopMenuDataModelDataCopyWithImpl(
      TopMenuDataModelData _value, $Res Function(TopMenuDataModelData) _then)
      : super(_value, (v) => _then(v as TopMenuDataModelData));

  @override
  TopMenuDataModelData get _value => super._value as TopMenuDataModelData;

  @override
  $Res call({
    Object id = freezed,
    Object label = freezed,
    Object action = freezed,
    Object type = freezed,
    Object imageUrl = freezed,
    Object order = freezed,
  }) {
    return _then(TopMenuDataModelData(
      id: id == freezed ? _value.id : id as String,
      label: label == freezed ? _value.label : label as String,
      action: action == freezed ? _value.action : action as String,
      type: type == freezed ? _value.type : type as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      order: order == freezed ? _value.order : order as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$TopMenuDataModelData implements TopMenuDataModelData {
  _$TopMenuDataModelData(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'label') this.label,
      @JsonKey(name: 'action') this.action,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'imageUrl') this.imageUrl,
      @JsonKey(name: 'order') this.order});

  factory _$TopMenuDataModelData.fromJson(Map<String, dynamic> json) =>
      _$_$TopMenuDataModelDataFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'label')
  final String label;
  @override
  @JsonKey(name: 'action')
  final String action;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'imageUrl')
  final String imageUrl;
  @override
  @JsonKey(name: 'order')
  final int order;

  @override
  String toString() {
    return 'MenuDataModel.topMenuDataModelData(id: $id, label: $label, action: $action, type: $type, imageUrl: $imageUrl, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TopMenuDataModelData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(order);

  @JsonKey(ignore: true)
  @override
  $TopMenuDataModelDataCopyWith<TopMenuDataModelData> get copyWith =>
      _$TopMenuDataModelDataCopyWithImpl<TopMenuDataModelData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult topMenuDataModelData(
            @JsonKey(name: 'id') String id,
            @JsonKey(name: 'label') String label,
            @JsonKey(name: 'action') String action,
            @JsonKey(name: 'type') String type,
            @JsonKey(name: 'imageUrl') String imageUrl,
            @JsonKey(name: 'order') int order),
  }) {
    assert(topMenuDataModelData != null);
    return topMenuDataModelData(id, label, action, type, imageUrl, order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult topMenuDataModelData(
        @JsonKey(name: 'id') String id,
        @JsonKey(name: 'label') String label,
        @JsonKey(name: 'action') String action,
        @JsonKey(name: 'type') String type,
        @JsonKey(name: 'imageUrl') String imageUrl,
        @JsonKey(name: 'order') int order),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (topMenuDataModelData != null) {
      return topMenuDataModelData(id, label, action, type, imageUrl, order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult topMenuDataModelData(TopMenuDataModelData value),
  }) {
    assert(topMenuDataModelData != null);
    return topMenuDataModelData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult topMenuDataModelData(TopMenuDataModelData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (topMenuDataModelData != null) {
      return topMenuDataModelData(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$TopMenuDataModelDataToJson(this);
  }
}

abstract class TopMenuDataModelData implements MenuDataModel {
  factory TopMenuDataModelData(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'label') String label,
      @JsonKey(name: 'action') String action,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'imageUrl') String imageUrl,
      @JsonKey(name: 'order') int order}) = _$TopMenuDataModelData;

  factory TopMenuDataModelData.fromJson(Map<String, dynamic> json) =
      _$TopMenuDataModelData.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'label')
  String get label;
  @override
  @JsonKey(name: 'action')
  String get action;
  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'imageUrl')
  String get imageUrl;
  @override
  @JsonKey(name: 'order')
  int get order;
  @override
  @JsonKey(ignore: true)
  $TopMenuDataModelDataCopyWith<TopMenuDataModelData> get copyWith;
}
