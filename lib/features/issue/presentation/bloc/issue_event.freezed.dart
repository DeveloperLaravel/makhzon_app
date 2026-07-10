// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'issue_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IssueEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IssueEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IssueEvent()';
}


}

/// @nodoc
class $IssueEventCopyWith<$Res>  {
$IssueEventCopyWith(IssueEvent _, $Res Function(IssueEvent) __);
}


/// Adds pattern-matching-related methods to [IssueEvent].
extension IssueEventPatterns on IssueEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( IssueStarted value)?  started,TResult Function( IssueCreated value)?  created,required TResult orElse(),}){
final _that = this;
switch (_that) {
case IssueStarted() when started != null:
return started(_that);case IssueCreated() when created != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( IssueStarted value)  started,required TResult Function( IssueCreated value)  created,}){
final _that = this;
switch (_that) {
case IssueStarted():
return started(_that);case IssueCreated():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( IssueStarted value)?  started,TResult? Function( IssueCreated value)?  created,}){
final _that = this;
switch (_that) {
case IssueStarted() when started != null:
return started(_that);case IssueCreated() when created != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( int warehouseId,  int itemId,  double quantity,  String? note,  String? receiverName)?  created,required TResult orElse(),}) {final _that = this;
switch (_that) {
case IssueStarted() when started != null:
return started();case IssueCreated() when created != null:
return created(_that.warehouseId,_that.itemId,_that.quantity,_that.note,_that.receiverName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( int warehouseId,  int itemId,  double quantity,  String? note,  String? receiverName)  created,}) {final _that = this;
switch (_that) {
case IssueStarted():
return started();case IssueCreated():
return created(_that.warehouseId,_that.itemId,_that.quantity,_that.note,_that.receiverName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( int warehouseId,  int itemId,  double quantity,  String? note,  String? receiverName)?  created,}) {final _that = this;
switch (_that) {
case IssueStarted() when started != null:
return started();case IssueCreated() when created != null:
return created(_that.warehouseId,_that.itemId,_that.quantity,_that.note,_that.receiverName);case _:
  return null;

}
}

}

/// @nodoc


class IssueStarted implements IssueEvent {
  const IssueStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IssueStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IssueEvent.started()';
}


}




/// @nodoc


class IssueCreated implements IssueEvent {
  const IssueCreated({required this.warehouseId, required this.itemId, required this.quantity, this.note, this.receiverName});
  

 final  int warehouseId;
 final  int itemId;
 final  double quantity;
 final  String? note;
 final  String? receiverName;

/// Create a copy of IssueEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IssueCreatedCopyWith<IssueCreated> get copyWith => _$IssueCreatedCopyWithImpl<IssueCreated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IssueCreated&&(identical(other.warehouseId, warehouseId) || other.warehouseId == warehouseId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.note, note) || other.note == note)&&(identical(other.receiverName, receiverName) || other.receiverName == receiverName));
}


@override
int get hashCode => Object.hash(runtimeType,warehouseId,itemId,quantity,note,receiverName);

@override
String toString() {
  return 'IssueEvent.created(warehouseId: $warehouseId, itemId: $itemId, quantity: $quantity, note: $note, receiverName: $receiverName)';
}


}

/// @nodoc
abstract mixin class $IssueCreatedCopyWith<$Res> implements $IssueEventCopyWith<$Res> {
  factory $IssueCreatedCopyWith(IssueCreated value, $Res Function(IssueCreated) _then) = _$IssueCreatedCopyWithImpl;
@useResult
$Res call({
 int warehouseId, int itemId, double quantity, String? note, String? receiverName
});




}
/// @nodoc
class _$IssueCreatedCopyWithImpl<$Res>
    implements $IssueCreatedCopyWith<$Res> {
  _$IssueCreatedCopyWithImpl(this._self, this._then);

  final IssueCreated _self;
  final $Res Function(IssueCreated) _then;

/// Create a copy of IssueEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? warehouseId = null,Object? itemId = null,Object? quantity = null,Object? note = freezed,Object? receiverName = freezed,}) {
  return _then(IssueCreated(
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
