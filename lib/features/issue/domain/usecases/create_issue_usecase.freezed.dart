// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_issue_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateIssueParams {

 int get warehouseId; int get itemId; double get quantity; String? get note; String? get receiverName;
/// Create a copy of CreateIssueParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateIssueParamsCopyWith<CreateIssueParams> get copyWith => _$CreateIssueParamsCopyWithImpl<CreateIssueParams>(this as CreateIssueParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateIssueParams&&(identical(other.warehouseId, warehouseId) || other.warehouseId == warehouseId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.note, note) || other.note == note)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName));
}


@override
int get hashCode => Object.hash(runtimeType,warehouseId,itemId,quantity,note,receiverName);

@override
String toString() {
  return 'CreateIssueParams(warehouseId: $warehouseId, itemId: $itemId, quantity: $quantity, note: $note, receiverName: $receiverName)';
}


}

/// @nodoc
abstract mixin class $CreateIssueParamsCopyWith<$Res>  {
  factory $CreateIssueParamsCopyWith(CreateIssueParams value, $Res Function(CreateIssueParams) _then) = _$CreateIssueParamsCopyWithImpl;
@useResult
$Res call({
 int warehouseId, int itemId, double quantity, String? note, String? receiverName
});




}
/// @nodoc
class _$CreateIssueParamsCopyWithImpl<$Res>
    implements $CreateIssueParamsCopyWith<$Res> {
  _$CreateIssueParamsCopyWithImpl(this._self, this._then);

  final CreateIssueParams _self;
  final $Res Function(CreateIssueParams) _then;

/// Create a copy of CreateIssueParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? warehouseId = null,Object? itemId = null,Object? quantity = null,Object? note = freezed,Object? receiverName = freezed,}) {
  return _then(_self.copyWith(
warehouseId: null == warehouseId ? _self.warehouseId : warehouseId // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,receiverName: freezed == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateIssueParams].
extension CreateIssueParamsPatterns on CreateIssueParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateIssueParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateIssueParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateIssueParams value)  $default,){
final _that = this;
switch (_that) {
case _CreateIssueParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateIssueParams value)?  $default,){
final _that = this;
switch (_that) {
case _CreateIssueParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int warehouseId,  int itemId,  double quantity,  String? note,  String? receiverName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateIssueParams() when $default != null:
return $default(_that.warehouseId,_that.itemId,_that.quantity,_that.note,_that.receiverName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int warehouseId,  int itemId,  double quantity,  String? note,  String? receiverName)  $default,) {final _that = this;
switch (_that) {
case _CreateIssueParams():
return $default(_that.warehouseId,_that.itemId,_that.quantity,_that.note,_that.receiverName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int warehouseId,  int itemId,  double quantity,  String? note,  String? receiverName)?  $default,) {final _that = this;
switch (_that) {
case _CreateIssueParams() when $default != null:
return $default(_that.warehouseId,_that.itemId,_that.quantity,_that.note,_that.receiverName);case _:
  return null;

}
}

}

/// @nodoc


class _CreateIssueParams implements CreateIssueParams {
  const _CreateIssueParams({required this.warehouseId, required this.itemId, required this.quantity, this.note, this.receiverName});
  

@override final  int warehouseId;
@override final  int itemId;
@override final  double quantity;
@override final  String? note;
@override final  String? receiverName;

/// Create a copy of CreateIssueParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateIssueParamsCopyWith<_CreateIssueParams> get copyWith => __$CreateIssueParamsCopyWithImpl<_CreateIssueParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateIssueParams&&(identical(other.warehouseId, warehouseId) || other.warehouseId == warehouseId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.note, note) || other.note == note)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName));
}


@override
int get hashCode => Object.hash(runtimeType,warehouseId,itemId,quantity,note,receiverName);

@override
String toString() {
  return 'CreateIssueParams(warehouseId: $warehouseId, itemId: $itemId, quantity: $quantity, note: $note, receiverName: $receiverName)';
}


}

/// @nodoc
abstract mixin class _$CreateIssueParamsCopyWith<$Res> implements $CreateIssueParamsCopyWith<$Res> {
  factory _$CreateIssueParamsCopyWith(_CreateIssueParams value, $Res Function(_CreateIssueParams) _then) = __$CreateIssueParamsCopyWithImpl;
@override @useResult
$Res call({
 int warehouseId, int itemId, double quantity, String? note, String? receiverName
});




}
/// @nodoc
class __$CreateIssueParamsCopyWithImpl<$Res>
    implements _$CreateIssueParamsCopyWith<$Res> {
  __$CreateIssueParamsCopyWithImpl(this._self, this._then);

  final _CreateIssueParams _self;
  final $Res Function(_CreateIssueParams) _then;

/// Create a copy of CreateIssueParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? warehouseId = null,Object? itemId = null,Object? quantity = null,Object? note = freezed,Object? receiverName = freezed,}) {
  return _then(_CreateIssueParams(
warehouseId: null == warehouseId ? _self.warehouseId : warehouseId // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,receiverName: freezed == receiverName ? _self.receiverName : receiverName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
