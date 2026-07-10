// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StockEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StockEvent()';
}


}

/// @nodoc
class $StockEventCopyWith<$Res>  {
$StockEventCopyWith(StockEvent _, $Res Function(StockEvent) __);
}


/// Adds pattern-matching-related methods to [StockEvent].
extension StockEventPatterns on StockEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( StockStarted value)?  started,TResult Function( StockQuantityAdded value)?  quantityAdded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case StockStarted() when started != null:
return started(_that);case StockQuantityAdded() when quantityAdded != null:
return quantityAdded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( StockStarted value)  started,required TResult Function( StockQuantityAdded value)  quantityAdded,}){
final _that = this;
switch (_that) {
case StockStarted():
return started(_that);case StockQuantityAdded():
return quantityAdded(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( StockStarted value)?  started,TResult? Function( StockQuantityAdded value)?  quantityAdded,}){
final _that = this;
switch (_that) {
case StockStarted() when started != null:
return started(_that);case StockQuantityAdded() when quantityAdded != null:
return quantityAdded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( int warehouseId,  int itemId,  double quantity)?  quantityAdded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case StockStarted() when started != null:
return started();case StockQuantityAdded() when quantityAdded != null:
return quantityAdded(_that.warehouseId,_that.itemId,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( int warehouseId,  int itemId,  double quantity)  quantityAdded,}) {final _that = this;
switch (_that) {
case StockStarted():
return started();case StockQuantityAdded():
return quantityAdded(_that.warehouseId,_that.itemId,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( int warehouseId,  int itemId,  double quantity)?  quantityAdded,}) {final _that = this;
switch (_that) {
case StockStarted() when started != null:
return started();case StockQuantityAdded() when quantityAdded != null:
return quantityAdded(_that.warehouseId,_that.itemId,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc


class StockStarted implements StockEvent {
  const StockStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StockEvent.started()';
}


}




/// @nodoc


class StockQuantityAdded implements StockEvent {
  const StockQuantityAdded({required this.warehouseId, required this.itemId, required this.quantity});
  

 final  int warehouseId;
 final  int itemId;
 final  double quantity;

/// Create a copy of StockEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockQuantityAddedCopyWith<StockQuantityAdded> get copyWith => _$StockQuantityAddedCopyWithImpl<StockQuantityAdded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockQuantityAdded&&(identical(other.warehouseId, warehouseId) || other.warehouseId == warehouseId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,warehouseId,itemId,quantity);

@override
String toString() {
  return 'StockEvent.quantityAdded(warehouseId: $warehouseId, itemId: $itemId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $StockQuantityAddedCopyWith<$Res> implements $StockEventCopyWith<$Res> {
  factory $StockQuantityAddedCopyWith(StockQuantityAdded value, $Res Function(StockQuantityAdded) _then) = _$StockQuantityAddedCopyWithImpl;
@useResult
$Res call({
 int warehouseId, int itemId, double quantity
});




}
/// @nodoc
class _$StockQuantityAddedCopyWithImpl<$Res>
    implements $StockQuantityAddedCopyWith<$Res> {
  _$StockQuantityAddedCopyWithImpl(this._self, this._then);

  final StockQuantityAdded _self;
  final $Res Function(StockQuantityAdded) _then;

/// Create a copy of StockEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? warehouseId = null,Object? itemId = null,Object? quantity = null,}) {
  return _then(StockQuantityAdded(
warehouseId: null == warehouseId ? _self.warehouseId : warehouseId // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
