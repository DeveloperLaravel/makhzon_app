// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransferEntity {

 int get id; int get fromWarehouseId; int get toWarehouseId; int get itemId; double get quantity; String? get note; DateTime get createdAt;
/// Create a copy of TransferEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransferEntityCopyWith<TransferEntity> get copyWith => _$TransferEntityCopyWithImpl<TransferEntity>(this as TransferEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransferEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.fromWarehouseId, fromWarehouseId) || other.fromWarehouseId == fromWarehouseId)&&(identical(other.toWarehouseId, toWarehouseId) || other.toWarehouseId == toWarehouseId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.note, note) || other.note == note)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,fromWarehouseId,toWarehouseId,itemId,quantity,note,createdAt);

@override
String toString() {
  return 'TransferEntity(id: $id, fromWarehouseId: $fromWarehouseId, toWarehouseId: $toWarehouseId, itemId: $itemId, quantity: $quantity, note: $note, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $TransferEntityCopyWith<$Res>  {
  factory $TransferEntityCopyWith(TransferEntity value, $Res Function(TransferEntity) _then) = _$TransferEntityCopyWithImpl;
@useResult
$Res call({
 int id, int fromWarehouseId, int toWarehouseId, int itemId, double quantity, String? note, DateTime createdAt
});




}
/// @nodoc
class _$TransferEntityCopyWithImpl<$Res>
    implements $TransferEntityCopyWith<$Res> {
  _$TransferEntityCopyWithImpl(this._self, this._then);

  final TransferEntity _self;
  final $Res Function(TransferEntity) _then;

/// Create a copy of TransferEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fromWarehouseId = null,Object? toWarehouseId = null,Object? itemId = null,Object? quantity = null,Object? note = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,fromWarehouseId: null == fromWarehouseId ? _self.fromWarehouseId : fromWarehouseId // ignore: cast_nullable_to_non_nullable
as int,toWarehouseId: null == toWarehouseId ? _self.toWarehouseId : toWarehouseId // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [TransferEntity].
extension TransferEntityPatterns on TransferEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransferEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransferEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransferEntity value)  $default,){
final _that = this;
switch (_that) {
case _TransferEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransferEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TransferEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int fromWarehouseId,  int toWarehouseId,  int itemId,  double quantity,  String? note,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransferEntity() when $default != null:
return $default(_that.id,_that.fromWarehouseId,_that.toWarehouseId,_that.itemId,_that.quantity,_that.note,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int fromWarehouseId,  int toWarehouseId,  int itemId,  double quantity,  String? note,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _TransferEntity():
return $default(_that.id,_that.fromWarehouseId,_that.toWarehouseId,_that.itemId,_that.quantity,_that.note,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int fromWarehouseId,  int toWarehouseId,  int itemId,  double quantity,  String? note,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _TransferEntity() when $default != null:
return $default(_that.id,_that.fromWarehouseId,_that.toWarehouseId,_that.itemId,_that.quantity,_that.note,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _TransferEntity implements TransferEntity {
  const _TransferEntity({required this.id, required this.fromWarehouseId, required this.toWarehouseId, required this.itemId, required this.quantity, this.note, required this.createdAt});
  

@override final  int id;
@override final  int fromWarehouseId;
@override final  int toWarehouseId;
@override final  int itemId;
@override final  double quantity;
@override final  String? note;
@override final  DateTime createdAt;

/// Create a copy of TransferEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransferEntityCopyWith<_TransferEntity> get copyWith => __$TransferEntityCopyWithImpl<_TransferEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransferEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.fromWarehouseId, fromWarehouseId) || other.fromWarehouseId == fromWarehouseId)&&(identical(other.toWarehouseId, toWarehouseId) || other.toWarehouseId == toWarehouseId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.note, note) || other.note == note)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,fromWarehouseId,toWarehouseId,itemId,quantity,note,createdAt);

@override
String toString() {
  return 'TransferEntity(id: $id, fromWarehouseId: $fromWarehouseId, toWarehouseId: $toWarehouseId, itemId: $itemId, quantity: $quantity, note: $note, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$TransferEntityCopyWith<$Res> implements $TransferEntityCopyWith<$Res> {
  factory _$TransferEntityCopyWith(_TransferEntity value, $Res Function(_TransferEntity) _then) = __$TransferEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int fromWarehouseId, int toWarehouseId, int itemId, double quantity, String? note, DateTime createdAt
});




}
/// @nodoc
class __$TransferEntityCopyWithImpl<$Res>
    implements _$TransferEntityCopyWith<$Res> {
  __$TransferEntityCopyWithImpl(this._self, this._then);

  final _TransferEntity _self;
  final $Res Function(_TransferEntity) _then;

/// Create a copy of TransferEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fromWarehouseId = null,Object? toWarehouseId = null,Object? itemId = null,Object? quantity = null,Object? note = freezed,Object? createdAt = null,}) {
  return _then(_TransferEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,fromWarehouseId: null == fromWarehouseId ? _self.fromWarehouseId : fromWarehouseId // ignore: cast_nullable_to_non_nullable
as int,toWarehouseId: null == toWarehouseId ? _self.toWarehouseId : toWarehouseId // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
