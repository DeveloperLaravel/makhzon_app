// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_stock_quantity_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddStockQuantityParams {

 int get warehouseId; int get itemId; double get quantity;
/// Create a copy of AddStockQuantityParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddStockQuantityParamsCopyWith<AddStockQuantityParams> get copyWith => _$AddStockQuantityParamsCopyWithImpl<AddStockQuantityParams>(this as AddStockQuantityParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddStockQuantityParams&&(identical(other.warehouseId, warehouseId) || other.warehouseId == warehouseId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,warehouseId,itemId,quantity);

@override
String toString() {
  return 'AddStockQuantityParams(warehouseId: $warehouseId, itemId: $itemId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $AddStockQuantityParamsCopyWith<$Res>  {
  factory $AddStockQuantityParamsCopyWith(AddStockQuantityParams value, $Res Function(AddStockQuantityParams) _then) = _$AddStockQuantityParamsCopyWithImpl;
@useResult
$Res call({
 int warehouseId, int itemId, double quantity
});




}
/// @nodoc
class _$AddStockQuantityParamsCopyWithImpl<$Res>
    implements $AddStockQuantityParamsCopyWith<$Res> {
  _$AddStockQuantityParamsCopyWithImpl(this._self, this._then);

  final AddStockQuantityParams _self;
  final $Res Function(AddStockQuantityParams) _then;

/// Create a copy of AddStockQuantityParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? warehouseId = null,Object? itemId = null,Object? quantity = null,}) {
  return _then(_self.copyWith(
warehouseId: null == warehouseId ? _self.warehouseId : warehouseId // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [AddStockQuantityParams].
extension AddStockQuantityParamsPatterns on AddStockQuantityParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddStockQuantityParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddStockQuantityParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddStockQuantityParams value)  $default,){
final _that = this;
switch (_that) {
case _AddStockQuantityParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddStockQuantityParams value)?  $default,){
final _that = this;
switch (_that) {
case _AddStockQuantityParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int warehouseId,  int itemId,  double quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddStockQuantityParams() when $default != null:
return $default(_that.warehouseId,_that.itemId,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int warehouseId,  int itemId,  double quantity)  $default,) {final _that = this;
switch (_that) {
case _AddStockQuantityParams():
return $default(_that.warehouseId,_that.itemId,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int warehouseId,  int itemId,  double quantity)?  $default,) {final _that = this;
switch (_that) {
case _AddStockQuantityParams() when $default != null:
return $default(_that.warehouseId,_that.itemId,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc


class _AddStockQuantityParams implements AddStockQuantityParams {
  const _AddStockQuantityParams({required this.warehouseId, required this.itemId, required this.quantity});
  

@override final  int warehouseId;
@override final  int itemId;
@override final  double quantity;

/// Create a copy of AddStockQuantityParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddStockQuantityParamsCopyWith<_AddStockQuantityParams> get copyWith => __$AddStockQuantityParamsCopyWithImpl<_AddStockQuantityParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddStockQuantityParams&&(identical(other.warehouseId, warehouseId) || other.warehouseId == warehouseId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,warehouseId,itemId,quantity);

@override
String toString() {
  return 'AddStockQuantityParams(warehouseId: $warehouseId, itemId: $itemId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$AddStockQuantityParamsCopyWith<$Res> implements $AddStockQuantityParamsCopyWith<$Res> {
  factory _$AddStockQuantityParamsCopyWith(_AddStockQuantityParams value, $Res Function(_AddStockQuantityParams) _then) = __$AddStockQuantityParamsCopyWithImpl;
@override @useResult
$Res call({
 int warehouseId, int itemId, double quantity
});




}
/// @nodoc
class __$AddStockQuantityParamsCopyWithImpl<$Res>
    implements _$AddStockQuantityParamsCopyWith<$Res> {
  __$AddStockQuantityParamsCopyWithImpl(this._self, this._then);

  final _AddStockQuantityParams _self;
  final $Res Function(_AddStockQuantityParams) _then;

/// Create a copy of AddStockQuantityParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? warehouseId = null,Object? itemId = null,Object? quantity = null,}) {
  return _then(_AddStockQuantityParams(
warehouseId: null == warehouseId ? _self.warehouseId : warehouseId // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
