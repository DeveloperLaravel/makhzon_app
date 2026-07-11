// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BackupModel {

 int get version; String get appName; DateTime get createdAt; List<Map<String, dynamic>> get warehouses; List<Map<String, dynamic>> get items; List<Map<String, dynamic>> get stocks; List<Map<String, dynamic>> get issues; List<Map<String, dynamic>> get transfers;
/// Create a copy of BackupModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BackupModelCopyWith<BackupModel> get copyWith => _$BackupModelCopyWithImpl<BackupModel>(this as BackupModel, _$identity);

  /// Serializes this BackupModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupModel&&(identical(other.version, version) || other.version == version)&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.warehouses, warehouses)&&const DeepCollectionEquality().equals(other.items, items)&&const DeepCollectionEquality().equals(other.stocks, stocks)&&const DeepCollectionEquality().equals(other.issues, issues)&&const DeepCollectionEquality().equals(other.transfers, transfers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,appName,createdAt,const DeepCollectionEquality().hash(warehouses),const DeepCollectionEquality().hash(items),const DeepCollectionEquality().hash(stocks),const DeepCollectionEquality().hash(issues),const DeepCollectionEquality().hash(transfers));

@override
String toString() {
  return 'BackupModel(version: $version, appName: $appName, createdAt: $createdAt, warehouses: $warehouses, items: $items, stocks: $stocks, issues: $issues, transfers: $transfers)';
}


}

/// @nodoc
abstract mixin class $BackupModelCopyWith<$Res>  {
  factory $BackupModelCopyWith(BackupModel value, $Res Function(BackupModel) _then) = _$BackupModelCopyWithImpl;
@useResult
$Res call({
 int version, String appName, DateTime createdAt, List<Map<String, dynamic>> warehouses, List<Map<String, dynamic>> items, List<Map<String, dynamic>> stocks, List<Map<String, dynamic>> issues, List<Map<String, dynamic>> transfers
});




}
/// @nodoc
class _$BackupModelCopyWithImpl<$Res>
    implements $BackupModelCopyWith<$Res> {
  _$BackupModelCopyWithImpl(this._self, this._then);

  final BackupModel _self;
  final $Res Function(BackupModel) _then;

/// Create a copy of BackupModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = null,Object? appName = null,Object? createdAt = null,Object? warehouses = null,Object? items = null,Object? stocks = null,Object? issues = null,Object? transfers = null,}) {
  return _then(_self.copyWith(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,appName: null == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,warehouses: null == warehouses ? _self.warehouses : warehouses // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,stocks: null == stocks ? _self.stocks : stocks // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,issues: null == issues ? _self.issues : issues // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,transfers: null == transfers ? _self.transfers : transfers // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,
  ));
}

}


/// Adds pattern-matching-related methods to [BackupModel].
extension BackupModelPatterns on BackupModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BackupModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BackupModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BackupModel value)  $default,){
final _that = this;
switch (_that) {
case _BackupModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BackupModel value)?  $default,){
final _that = this;
switch (_that) {
case _BackupModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int version,  String appName,  DateTime createdAt,  List<Map<String, dynamic>> warehouses,  List<Map<String, dynamic>> items,  List<Map<String, dynamic>> stocks,  List<Map<String, dynamic>> issues,  List<Map<String, dynamic>> transfers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BackupModel() when $default != null:
return $default(_that.version,_that.appName,_that.createdAt,_that.warehouses,_that.items,_that.stocks,_that.issues,_that.transfers);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int version,  String appName,  DateTime createdAt,  List<Map<String, dynamic>> warehouses,  List<Map<String, dynamic>> items,  List<Map<String, dynamic>> stocks,  List<Map<String, dynamic>> issues,  List<Map<String, dynamic>> transfers)  $default,) {final _that = this;
switch (_that) {
case _BackupModel():
return $default(_that.version,_that.appName,_that.createdAt,_that.warehouses,_that.items,_that.stocks,_that.issues,_that.transfers);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int version,  String appName,  DateTime createdAt,  List<Map<String, dynamic>> warehouses,  List<Map<String, dynamic>> items,  List<Map<String, dynamic>> stocks,  List<Map<String, dynamic>> issues,  List<Map<String, dynamic>> transfers)?  $default,) {final _that = this;
switch (_that) {
case _BackupModel() when $default != null:
return $default(_that.version,_that.appName,_that.createdAt,_that.warehouses,_that.items,_that.stocks,_that.issues,_that.transfers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BackupModel implements BackupModel {
  const _BackupModel({required this.version, required this.appName, required this.createdAt, final  List<Map<String, dynamic>> warehouses = const <Map<String, dynamic>>[], final  List<Map<String, dynamic>> items = const <Map<String, dynamic>>[], final  List<Map<String, dynamic>> stocks = const <Map<String, dynamic>>[], final  List<Map<String, dynamic>> issues = const <Map<String, dynamic>>[], final  List<Map<String, dynamic>> transfers = const <Map<String, dynamic>>[]}): _warehouses = warehouses,_items = items,_stocks = stocks,_issues = issues,_transfers = transfers;
  factory _BackupModel.fromJson(Map<String, dynamic> json) => _$BackupModelFromJson(json);

@override final  int version;
@override final  String appName;
@override final  DateTime createdAt;
 final  List<Map<String, dynamic>> _warehouses;
@override@JsonKey() List<Map<String, dynamic>> get warehouses {
  if (_warehouses is EqualUnmodifiableListView) return _warehouses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_warehouses);
}

 final  List<Map<String, dynamic>> _items;
@override@JsonKey() List<Map<String, dynamic>> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  List<Map<String, dynamic>> _stocks;
@override@JsonKey() List<Map<String, dynamic>> get stocks {
  if (_stocks is EqualUnmodifiableListView) return _stocks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stocks);
}

 final  List<Map<String, dynamic>> _issues;
@override@JsonKey() List<Map<String, dynamic>> get issues {
  if (_issues is EqualUnmodifiableListView) return _issues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_issues);
}

 final  List<Map<String, dynamic>> _transfers;
@override@JsonKey() List<Map<String, dynamic>> get transfers {
  if (_transfers is EqualUnmodifiableListView) return _transfers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transfers);
}


/// Create a copy of BackupModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BackupModelCopyWith<_BackupModel> get copyWith => __$BackupModelCopyWithImpl<_BackupModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BackupModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BackupModel&&(identical(other.version, version) || other.version == version)&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._warehouses, _warehouses)&&const DeepCollectionEquality().equals(other._items, _items)&&const DeepCollectionEquality().equals(other._stocks, _stocks)&&const DeepCollectionEquality().equals(other._issues, _issues)&&const DeepCollectionEquality().equals(other._transfers, _transfers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,appName,createdAt,const DeepCollectionEquality().hash(_warehouses),const DeepCollectionEquality().hash(_items),const DeepCollectionEquality().hash(_stocks),const DeepCollectionEquality().hash(_issues),const DeepCollectionEquality().hash(_transfers));

@override
String toString() {
  return 'BackupModel(version: $version, appName: $appName, createdAt: $createdAt, warehouses: $warehouses, items: $items, stocks: $stocks, issues: $issues, transfers: $transfers)';
}


}

/// @nodoc
abstract mixin class _$BackupModelCopyWith<$Res> implements $BackupModelCopyWith<$Res> {
  factory _$BackupModelCopyWith(_BackupModel value, $Res Function(_BackupModel) _then) = __$BackupModelCopyWithImpl;
@override @useResult
$Res call({
 int version, String appName, DateTime createdAt, List<Map<String, dynamic>> warehouses, List<Map<String, dynamic>> items, List<Map<String, dynamic>> stocks, List<Map<String, dynamic>> issues, List<Map<String, dynamic>> transfers
});




}
/// @nodoc
class __$BackupModelCopyWithImpl<$Res>
    implements _$BackupModelCopyWith<$Res> {
  __$BackupModelCopyWithImpl(this._self, this._then);

  final _BackupModel _self;
  final $Res Function(_BackupModel) _then;

/// Create a copy of BackupModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = null,Object? appName = null,Object? createdAt = null,Object? warehouses = null,Object? items = null,Object? stocks = null,Object? issues = null,Object? transfers = null,}) {
  return _then(_BackupModel(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,appName: null == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,warehouses: null == warehouses ? _self._warehouses : warehouses // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,stocks: null == stocks ? _self._stocks : stocks // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,issues: null == issues ? _self._issues : issues // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,transfers: null == transfers ? _self._transfers : transfers // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,
  ));
}


}

// dart format on
