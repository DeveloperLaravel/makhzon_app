// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WarehouseState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WarehouseState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WarehouseState()';
}


}

/// @nodoc
class $WarehouseStateCopyWith<$Res>  {
$WarehouseStateCopyWith(WarehouseState _, $Res Function(WarehouseState) __);
}


/// Adds pattern-matching-related methods to [WarehouseState].
extension WarehouseStatePatterns on WarehouseState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WarehouseInitial value)?  initial,TResult Function( WarehouseLoading value)?  loading,TResult Function( WarehouseLoaded value)?  loaded,TResult Function( WarehouseFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WarehouseInitial() when initial != null:
return initial(_that);case WarehouseLoading() when loading != null:
return loading(_that);case WarehouseLoaded() when loaded != null:
return loaded(_that);case WarehouseFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WarehouseInitial value)  initial,required TResult Function( WarehouseLoading value)  loading,required TResult Function( WarehouseLoaded value)  loaded,required TResult Function( WarehouseFailure value)  failure,}){
final _that = this;
switch (_that) {
case WarehouseInitial():
return initial(_that);case WarehouseLoading():
return loading(_that);case WarehouseLoaded():
return loaded(_that);case WarehouseFailure():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WarehouseInitial value)?  initial,TResult? Function( WarehouseLoading value)?  loading,TResult? Function( WarehouseLoaded value)?  loaded,TResult? Function( WarehouseFailure value)?  failure,}){
final _that = this;
switch (_that) {
case WarehouseInitial() when initial != null:
return initial(_that);case WarehouseLoading() when loading != null:
return loading(_that);case WarehouseLoaded() when loaded != null:
return loaded(_that);case WarehouseFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<WarehouseEntity> warehouses)?  loaded,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WarehouseInitial() when initial != null:
return initial();case WarehouseLoading() when loading != null:
return loading();case WarehouseLoaded() when loaded != null:
return loaded(_that.warehouses);case WarehouseFailure() when failure != null:
return failure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<WarehouseEntity> warehouses)  loaded,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case WarehouseInitial():
return initial();case WarehouseLoading():
return loading();case WarehouseLoaded():
return loaded(_that.warehouses);case WarehouseFailure():
return failure(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<WarehouseEntity> warehouses)?  loaded,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case WarehouseInitial() when initial != null:
return initial();case WarehouseLoading() when loading != null:
return loading();case WarehouseLoaded() when loaded != null:
return loaded(_that.warehouses);case WarehouseFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class WarehouseInitial implements WarehouseState {
  const WarehouseInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WarehouseInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WarehouseState.initial()';
}


}




/// @nodoc


class WarehouseLoading implements WarehouseState {
  const WarehouseLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WarehouseLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WarehouseState.loading()';
}


}




/// @nodoc


class WarehouseLoaded implements WarehouseState {
  const WarehouseLoaded({required final  List<WarehouseEntity> warehouses}): _warehouses = warehouses;
  

 final  List<WarehouseEntity> _warehouses;
 List<WarehouseEntity> get warehouses {
  if (_warehouses is EqualUnmodifiableListView) return _warehouses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_warehouses);
}


/// Create a copy of WarehouseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WarehouseLoadedCopyWith<WarehouseLoaded> get copyWith => _$WarehouseLoadedCopyWithImpl<WarehouseLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WarehouseLoaded&&const DeepCollectionEquality().equals(other._warehouses, _warehouses));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_warehouses));

@override
String toString() {
  return 'WarehouseState.loaded(warehouses: $warehouses)';
}


}

/// @nodoc
abstract mixin class $WarehouseLoadedCopyWith<$Res> implements $WarehouseStateCopyWith<$Res> {
  factory $WarehouseLoadedCopyWith(WarehouseLoaded value, $Res Function(WarehouseLoaded) _then) = _$WarehouseLoadedCopyWithImpl;
@useResult
$Res call({
 List<WarehouseEntity> warehouses
});




}
/// @nodoc
class _$WarehouseLoadedCopyWithImpl<$Res>
    implements $WarehouseLoadedCopyWith<$Res> {
  _$WarehouseLoadedCopyWithImpl(this._self, this._then);

  final WarehouseLoaded _self;
  final $Res Function(WarehouseLoaded) _then;

/// Create a copy of WarehouseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? warehouses = null,}) {
  return _then(WarehouseLoaded(
warehouses: null == warehouses ? _self._warehouses : warehouses // ignore: cast_nullable_to_non_nullable
as List<WarehouseEntity>,
  ));
}


}

/// @nodoc


class WarehouseFailure implements WarehouseState {
  const WarehouseFailure({required this.message});
  

 final  String message;

/// Create a copy of WarehouseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WarehouseFailureCopyWith<WarehouseFailure> get copyWith => _$WarehouseFailureCopyWithImpl<WarehouseFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WarehouseFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'WarehouseState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $WarehouseFailureCopyWith<$Res> implements $WarehouseStateCopyWith<$Res> {
  factory $WarehouseFailureCopyWith(WarehouseFailure value, $Res Function(WarehouseFailure) _then) = _$WarehouseFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$WarehouseFailureCopyWithImpl<$Res>
    implements $WarehouseFailureCopyWith<$Res> {
  _$WarehouseFailureCopyWithImpl(this._self, this._then);

  final WarehouseFailure _self;
  final $Res Function(WarehouseFailure) _then;

/// Create a copy of WarehouseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(WarehouseFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
