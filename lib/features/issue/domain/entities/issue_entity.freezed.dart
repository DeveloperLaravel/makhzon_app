// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'issue_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IssueEntity {

 int get id; int get warehouseId; int get itemId; double get quantity; String? get note; String? get receiverName; DateTime get createdAt;
/// Create a copy of IssueEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IssueEntityCopyWith<IssueEntity> get copyWith => _$IssueEntityCopyWithImpl<IssueEntity>(this as IssueEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IssueEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.warehouseId, warehouseId) || other.warehouseId == warehouseId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.note, note) || other.note == note)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,warehouseId,itemId,quantity,note,receiverName,createdAt);

@override
String toString() {
  return 'IssueEntity(id: $id, warehouseId: $warehouseId, itemId: $itemId, quantity: $quantity, note: $note, receiverName: $receiverName, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $IssueEntityCopyWith<$Res>  {
  factory $IssueEntityCopyWith(IssueEntity value, $Res Function(IssueEntity) _then) = _$IssueEntityCopyWithImpl;
@useResult
$Res call({
 int id, int warehouseId, int itemId, double quantity, String? note, String? receiverName, DateTime createdAt
});




}
/// @nodoc
class _$IssueEntityCopyWithImpl<$Res>
    implements $IssueEntityCopyWith<$Res> {
  _$IssueEntityCopyWithImpl(this._self, this._then);

  final IssueEntity _self;
  final $Res Function(IssueEntity) _then;

/// Create a copy of IssueEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? warehouseId = null,Object? itemId = null,Object? quantity = null,Object? note = freezed,Object? receiverName = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,warehouseId: null == warehouseId ? _self.warehouseId : warehouseId // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,receiverName: freezed == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [IssueEntity].
extension IssueEntityPatterns on IssueEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IssueEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IssueEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IssueEntity value)  $default,){
final _that = this;
switch (_that) {
case _IssueEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IssueEntity value)?  $default,){
final _that = this;
switch (_that) {
case _IssueEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int warehouseId,  int itemId,  double quantity,  String? note,  String? receiverName,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IssueEntity() when $default != null:
return $default(_that.id,_that.warehouseId,_that.itemId,_that.quantity,_that.note,_that.receiverName,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int warehouseId,  int itemId,  double quantity,  String? note,  String? receiverName,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _IssueEntity():
return $default(_that.id,_that.warehouseId,_that.itemId,_that.quantity,_that.note,_that.receiverName,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int warehouseId,  int itemId,  double quantity,  String? note,  String? receiverName,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _IssueEntity() when $default != null:
return $default(_that.id,_that.warehouseId,_that.itemId,_that.quantity,_that.note,_that.receiverName,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _IssueEntity implements IssueEntity {
  const _IssueEntity({required this.id, required this.warehouseId, required this.itemId, required this.quantity, this.note, this.receiverName, required this.createdAt});
  

@override final  int id;
@override final  int warehouseId;
@override final  int itemId;
@override final  double quantity;
@override final  String? note;
@override final  String? receiverName;
@override final  DateTime createdAt;

/// Create a copy of IssueEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IssueEntityCopyWith<_IssueEntity> get copyWith => __$IssueEntityCopyWithImpl<_IssueEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IssueEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.warehouseId, warehouseId) || other.warehouseId == warehouseId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.note, note) || other.note == note)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,warehouseId,itemId,quantity,note,receiverName,createdAt);

@override
String toString() {
  return 'IssueEntity(id: $id, warehouseId: $warehouseId, itemId: $itemId, quantity: $quantity, note: $note, receiverName: $receiverName, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$IssueEntityCopyWith<$Res> implements $IssueEntityCopyWith<$Res> {
  factory _$IssueEntityCopyWith(_IssueEntity value, $Res Function(_IssueEntity) _then) = __$IssueEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int warehouseId, int itemId, double quantity, String? note, String? receiverName, DateTime createdAt
});




}
/// @nodoc
class __$IssueEntityCopyWithImpl<$Res>
    implements _$IssueEntityCopyWith<$Res> {
  __$IssueEntityCopyWithImpl(this._self, this._then);

  final _IssueEntity _self;
  final $Res Function(_IssueEntity) _then;

/// Create a copy of IssueEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? warehouseId = null,Object? itemId = null,Object? quantity = null,Object? note = freezed,Object? receiverName = freezed,Object? createdAt = null,}) {
  return _then(_IssueEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,warehouseId: null == warehouseId ? _self.warehouseId : warehouseId // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,receiverName: freezed == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
