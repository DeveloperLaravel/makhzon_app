// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_transfer_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateTransferParams {

 int get fromWarehouseId; int get toWarehouseId; int get itemId; double get quantity; String? get note;
/// Create a copy of CreateTransferParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTransferParamsCopyWith<CreateTransferParams> get copyWith => _$CreateTransferParamsCopyWithImpl<CreateTransferParams>(this as CreateTransferParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTransferParams&&(identical(other.fromWarehouseId, fromWarehouseId) || other.fromWarehouseId == fromWarehouseId)&&(identical(other.toWarehouseId, toWarehouseId) || other.toWarehouseId == toWarehouseId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,fromWarehouseId,toWarehouseId,itemId,quantity,note);

@override
String toString() {
  return 'CreateTransferParams(fromWarehouseId: $fromWarehouseId, toWarehouseId: $toWarehouseId, itemId: $itemId, quantity: $quantity, note: $note)';
}


}

/// @nodoc
abstract mixin class $CreateTransferParamsCopyWith<$Res>  {
  factory $CreateTransferParamsCopyWith(CreateTransferParams value, $Res Function(CreateTransferParams) _then) = _$CreateTransferParamsCopyWithImpl;
@useResult
$Res call({
 int fromWarehouseId, int toWarehouseId, int itemId, double quantity, String? note
});




}
/// @nodoc
class _$CreateTransferParamsCopyWithImpl<$Res>
    implements $CreateTransferParamsCopyWith<$Res> {
  _$CreateTransferParamsCopyWithImpl(this._self, this._then);

  final CreateTransferParams _self;
  final $Res Function(CreateTransferParams) _then;

/// Create a copy of CreateTransferParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fromWarehouseId = null,Object? toWarehouseId = null,Object? itemId = null,Object? quantity = null,Object? note = freezed,}) {
  return _then(_self.copyWith(
fromWarehouseId: null == fromWarehouseId ? _self.fromWarehouseId : fromWarehouseId // ignore: cast_nullable_to_non_nullable
as int,toWarehouseId: null == toWarehouseId ? _self.toWarehouseId : toWarehouseId // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateTransferParams].
extension CreateTransferParamsPatterns on CreateTransferParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateTransferParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateTransferParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateTransferParams value)  $default,){
final _that = this;
switch (_that) {
case _CreateTransferParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateTransferParams value)?  $default,){
final _that = this;
switch (_that) {
case _CreateTransferParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int fromWarehouseId,  int toWarehouseId,  int itemId,  double quantity,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTransferParams() when $default != null:
return $default(_that.fromWarehouseId,_that.toWarehouseId,_that.itemId,_that.quantity,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int fromWarehouseId,  int toWarehouseId,  int itemId,  double quantity,  String? note)  $default,) {final _that = this;
switch (_that) {
case _CreateTransferParams():
return $default(_that.fromWarehouseId,_that.toWarehouseId,_that.itemId,_that.quantity,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int fromWarehouseId,  int toWarehouseId,  int itemId,  double quantity,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _CreateTransferParams() when $default != null:
return $default(_that.fromWarehouseId,_that.toWarehouseId,_that.itemId,_that.quantity,_that.note);case _:
  return null;

}
}

}

/// @nodoc


class _CreateTransferParams implements CreateTransferParams {
  const _CreateTransferParams({required this.fromWarehouseId, required this.toWarehouseId, required this.itemId, required this.quantity, this.note});
  

@override final  int fromWarehouseId;
@override final  int toWarehouseId;
@override final  int itemId;
@override final  double quantity;
@override final  String? note;

/// Create a copy of CreateTransferParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTransferParamsCopyWith<_CreateTransferParams> get copyWith => __$CreateTransferParamsCopyWithImpl<_CreateTransferParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTransferParams&&(identical(other.fromWarehouseId, fromWarehouseId) || other.fromWarehouseId == fromWarehouseId)&&(identical(other.toWarehouseId, toWarehouseId) || other.toWarehouseId == toWarehouseId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,fromWarehouseId,toWarehouseId,itemId,quantity,note);

@override
String toString() {
  return 'CreateTransferParams(fromWarehouseId: $fromWarehouseId, toWarehouseId: $toWarehouseId, itemId: $itemId, quantity: $quantity, note: $note)';
}


}

/// @nodoc
abstract mixin class _$CreateTransferParamsCopyWith<$Res> implements $CreateTransferParamsCopyWith<$Res> {
  factory _$CreateTransferParamsCopyWith(_CreateTransferParams value, $Res Function(_CreateTransferParams) _then) = __$CreateTransferParamsCopyWithImpl;
@override @useResult
$Res call({
 int fromWarehouseId, int toWarehouseId, int itemId, double quantity, String? note
});




}
/// @nodoc
class __$CreateTransferParamsCopyWithImpl<$Res>
    implements _$CreateTransferParamsCopyWith<$Res> {
  __$CreateTransferParamsCopyWithImpl(this._self, this._then);

  final _CreateTransferParams _self;
  final $Res Function(_CreateTransferParams) _then;

/// Create a copy of CreateTransferParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fromWarehouseId = null,Object? toWarehouseId = null,Object? itemId = null,Object? quantity = null,Object? note = freezed,}) {
  return _then(_CreateTransferParams(
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
