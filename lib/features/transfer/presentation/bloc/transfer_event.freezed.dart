// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransferEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransferEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransferEvent()';
}


}

/// @nodoc
class $TransferEventCopyWith<$Res>  {
$TransferEventCopyWith(TransferEvent _, $Res Function(TransferEvent) __);
}


/// Adds pattern-matching-related methods to [TransferEvent].
extension TransferEventPatterns on TransferEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TransferStarted value)?  started,TResult Function( TransferCreated value)?  created,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TransferStarted() when started != null:
return started(_that);case TransferCreated() when created != null:
return created(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TransferStarted value)  started,required TResult Function( TransferCreated value)  created,}){
final _that = this;
switch (_that) {
case TransferStarted():
return started(_that);case TransferCreated():
return created(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TransferStarted value)?  started,TResult? Function( TransferCreated value)?  created,}){
final _that = this;
switch (_that) {
case TransferStarted() when started != null:
return started(_that);case TransferCreated() when created != null:
return created(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( int fromWarehouseId,  int toWarehouseId,  int itemId,  double quantity,  String? note)?  created,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TransferStarted() when started != null:
return started();case TransferCreated() when created != null:
return created(_that.fromWarehouseId,_that.toWarehouseId,_that.itemId,_that.quantity,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( int fromWarehouseId,  int toWarehouseId,  int itemId,  double quantity,  String? note)  created,}) {final _that = this;
switch (_that) {
case TransferStarted():
return started();case TransferCreated():
return created(_that.fromWarehouseId,_that.toWarehouseId,_that.itemId,_that.quantity,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( int fromWarehouseId,  int toWarehouseId,  int itemId,  double quantity,  String? note)?  created,}) {final _that = this;
switch (_that) {
case TransferStarted() when started != null:
return started();case TransferCreated() when created != null:
return created(_that.fromWarehouseId,_that.toWarehouseId,_that.itemId,_that.quantity,_that.note);case _:
  return null;

}
}

}

/// @nodoc


class TransferStarted implements TransferEvent {
  const TransferStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransferStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransferEvent.started()';
}


}




/// @nodoc


class TransferCreated implements TransferEvent {
  const TransferCreated({required this.fromWarehouseId, required this.toWarehouseId, required this.itemId, required this.quantity, this.note});
  

 final  int fromWarehouseId;
 final  int toWarehouseId;
 final  int itemId;
 final  double quantity;
 final  String? note;

/// Create a copy of TransferEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransferCreatedCopyWith<TransferCreated> get copyWith => _$TransferCreatedCopyWithImpl<TransferCreated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransferCreated&&(identical(other.fromWarehouseId, fromWarehouseId) || other.fromWarehouseId == fromWarehouseId)&&(identical(other.toWarehouseId, toWarehouseId) || other.toWarehouseId == toWarehouseId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,fromWarehouseId,toWarehouseId,itemId,quantity,note);

@override
String toString() {
  return 'TransferEvent.created(fromWarehouseId: $fromWarehouseId, toWarehouseId: $toWarehouseId, itemId: $itemId, quantity: $quantity, note: $note)';
}


}

/// @nodoc
abstract mixin class $TransferCreatedCopyWith<$Res> implements $TransferEventCopyWith<$Res> {
  factory $TransferCreatedCopyWith(TransferCreated value, $Res Function(TransferCreated) _then) = _$TransferCreatedCopyWithImpl;
@useResult
$Res call({
 int fromWarehouseId, int toWarehouseId, int itemId, double quantity, String? note
});




}
/// @nodoc
class _$TransferCreatedCopyWithImpl<$Res>
    implements $TransferCreatedCopyWith<$Res> {
  _$TransferCreatedCopyWithImpl(this._self, this._then);

  final TransferCreated _self;
  final $Res Function(TransferCreated) _then;

/// Create a copy of TransferEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fromWarehouseId = null,Object? toWarehouseId = null,Object? itemId = null,Object? quantity = null,Object? note = freezed,}) {
  return _then(TransferCreated(
fromWarehouseId: null == fromWarehouseId ? _self.fromWarehouseId : fromWarehouseId // ignore: cast_nullable_to_non_nullable
as int,toWarehouseId: null == toWarehouseId ? _self.toWarehouseId : toWarehouseId // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
