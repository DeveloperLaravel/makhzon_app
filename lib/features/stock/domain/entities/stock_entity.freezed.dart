// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StockEntity {

 int get id; int get warehouseId; int get itemId; double get quantity; DateTime get updatedAt;
/// Create a copy of StockEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockEntityCopyWith<StockEntity> get copyWith => _$StockEntityCopyWithImpl<StockEntity>(this as StockEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.warehouseId, warehouseId) || other.warehouseId == warehouseId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,warehouseId,itemId,quantity,updatedAt);

@override
String toString() {
  return 'StockEntity(id: $id, warehouseId: $warehouseId, itemId: $itemId, quantity: $quantity, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $StockEntityCopyWith<$Res>  {
  factory $StockEntityCopyWith(StockEntity value, $Res Function(StockEntity) _then) = _$StockEntityCopyWithImpl;
@useResult
$Res call({
 int id, int warehouseId, int itemId, double quantity, DateTime updatedAt
});




}
/// @nodoc
class _$StockEntityCopyWithImpl<$Res>
    implements $StockEntityCopyWith<$Res> {
  _$StockEntityCopyWithImpl(this._self, this._then);

  final StockEntity _self;
  final $Res Function(StockEntity) _then;

/// Create a copy of StockEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? warehouseId = null,Object? itemId = null,Object? quantity = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,warehouseId: null == warehouseId ? _self.warehouseId : warehouseId // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [StockEntity].
extension StockEntityPatterns on StockEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StockEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StockEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StockEntity value)  $default,){
final _that = this;
switch (_that) {
case _StockEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StockEntity value)?  $default,){
final _that = this;
switch (_that) {
case _StockEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int warehouseId,  int itemId,  double quantity,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StockEntity() when $default != null:
return $default(_that.id,_that.warehouseId,_that.itemId,_that.quantity,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int warehouseId,  int itemId,  double quantity,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _StockEntity():
return $default(_that.id,_that.warehouseId,_that.itemId,_that.quantity,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int warehouseId,  int itemId,  double quantity,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _StockEntity() when $default != null:
return $default(_that.id,_that.warehouseId,_that.itemId,_that.quantity,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _StockEntity implements StockEntity {
  const _StockEntity({required this.id, required this.warehouseId, required this.itemId, required this.quantity, required this.updatedAt});
  

@override final  int id;
@override final  int warehouseId;
@override final  int itemId;
@override final  double quantity;
@override final  DateTime updatedAt;

/// Create a copy of StockEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockEntityCopyWith<_StockEntity> get copyWith => __$StockEntityCopyWithImpl<_StockEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.warehouseId, warehouseId) || other.warehouseId == warehouseId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,warehouseId,itemId,quantity,updatedAt);

@override
String toString() {
  return 'StockEntity(id: $id, warehouseId: $warehouseId, itemId: $itemId, quantity: $quantity, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$StockEntityCopyWith<$Res> implements $StockEntityCopyWith<$Res> {
  factory _$StockEntityCopyWith(_StockEntity value, $Res Function(_StockEntity) _then) = __$StockEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int warehouseId, int itemId, double quantity, DateTime updatedAt
});




}
/// @nodoc
class __$StockEntityCopyWithImpl<$Res>
    implements _$StockEntityCopyWith<$Res> {
  __$StockEntityCopyWithImpl(this._self, this._then);

  final _StockEntity _self;
  final $Res Function(_StockEntity) _then;

/// Create a copy of StockEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? warehouseId = null,Object? itemId = null,Object? quantity = null,Object? updatedAt = null,}) {
  return _then(_StockEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,warehouseId: null == warehouseId ? _self.warehouseId : warehouseId // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
