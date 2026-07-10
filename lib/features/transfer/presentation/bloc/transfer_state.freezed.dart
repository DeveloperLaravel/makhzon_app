// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransferState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransferState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransferState()';
}


}

/// @nodoc
class $TransferStateCopyWith<$Res>  {
$TransferStateCopyWith(TransferState _, $Res Function(TransferState) __);
}


/// Adds pattern-matching-related methods to [TransferState].
extension TransferStatePatterns on TransferState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TransferInitial value)?  initial,TResult Function( TransferLoading value)?  loading,TResult Function( TransferLoaded value)?  loaded,TResult Function( TransferSuccess value)?  success,TResult Function( TransferFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TransferInitial() when initial != null:
return initial(_that);case TransferLoading() when loading != null:
return loading(_that);case TransferLoaded() when loaded != null:
return loaded(_that);case TransferSuccess() when success != null:
return success(_that);case TransferFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TransferInitial value)  initial,required TResult Function( TransferLoading value)  loading,required TResult Function( TransferLoaded value)  loaded,required TResult Function( TransferSuccess value)  success,required TResult Function( TransferFailure value)  failure,}){
final _that = this;
switch (_that) {
case TransferInitial():
return initial(_that);case TransferLoading():
return loading(_that);case TransferLoaded():
return loaded(_that);case TransferSuccess():
return success(_that);case TransferFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TransferInitial value)?  initial,TResult? Function( TransferLoading value)?  loading,TResult? Function( TransferLoaded value)?  loaded,TResult? Function( TransferSuccess value)?  success,TResult? Function( TransferFailure value)?  failure,}){
final _that = this;
switch (_that) {
case TransferInitial() when initial != null:
return initial(_that);case TransferLoading() when loading != null:
return loading(_that);case TransferLoaded() when loaded != null:
return loaded(_that);case TransferSuccess() when success != null:
return success(_that);case TransferFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<TransferEntity> transfers)?  loaded,TResult Function( String message)?  success,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TransferInitial() when initial != null:
return initial();case TransferLoading() when loading != null:
return loading();case TransferLoaded() when loaded != null:
return loaded(_that.transfers);case TransferSuccess() when success != null:
return success(_that.message);case TransferFailure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<TransferEntity> transfers)  loaded,required TResult Function( String message)  success,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case TransferInitial():
return initial();case TransferLoading():
return loading();case TransferLoaded():
return loaded(_that.transfers);case TransferSuccess():
return success(_that.message);case TransferFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<TransferEntity> transfers)?  loaded,TResult? Function( String message)?  success,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case TransferInitial() when initial != null:
return initial();case TransferLoading() when loading != null:
return loading();case TransferLoaded() when loaded != null:
return loaded(_that.transfers);case TransferSuccess() when success != null:
return success(_that.message);case TransferFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class TransferInitial implements TransferState {
  const TransferInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransferInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransferState.initial()';
}


}




/// @nodoc


class TransferLoading implements TransferState {
  const TransferLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransferLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransferState.loading()';
}


}




/// @nodoc


class TransferLoaded implements TransferState {
  const TransferLoaded({required final  List<TransferEntity> transfers}): _transfers = transfers;
  

 final  List<TransferEntity> _transfers;
 List<TransferEntity> get transfers {
  if (_transfers is EqualUnmodifiableListView) return _transfers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transfers);
}


/// Create a copy of TransferState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransferLoadedCopyWith<TransferLoaded> get copyWith => _$TransferLoadedCopyWithImpl<TransferLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransferLoaded&&const DeepCollectionEquality().equals(other._transfers, _transfers));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_transfers));

@override
String toString() {
  return 'TransferState.loaded(transfers: $transfers)';
}


}

/// @nodoc
abstract mixin class $TransferLoadedCopyWith<$Res> implements $TransferStateCopyWith<$Res> {
  factory $TransferLoadedCopyWith(TransferLoaded value, $Res Function(TransferLoaded) _then) = _$TransferLoadedCopyWithImpl;
@useResult
$Res call({
 List<TransferEntity> transfers
});




}
/// @nodoc
class _$TransferLoadedCopyWithImpl<$Res>
    implements $TransferLoadedCopyWith<$Res> {
  _$TransferLoadedCopyWithImpl(this._self, this._then);

  final TransferLoaded _self;
  final $Res Function(TransferLoaded) _then;

/// Create a copy of TransferState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? transfers = null,}) {
  return _then(TransferLoaded(
transfers: null == transfers ? _self._transfers : transfers // ignore: cast_nullable_to_non_nullable
as List<TransferEntity>,
  ));
}


}

/// @nodoc


class TransferSuccess implements TransferState {
  const TransferSuccess({required this.message});
  

 final  String message;

/// Create a copy of TransferState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransferSuccessCopyWith<TransferSuccess> get copyWith => _$TransferSuccessCopyWithImpl<TransferSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransferSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TransferState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $TransferSuccessCopyWith<$Res> implements $TransferStateCopyWith<$Res> {
  factory $TransferSuccessCopyWith(TransferSuccess value, $Res Function(TransferSuccess) _then) = _$TransferSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TransferSuccessCopyWithImpl<$Res>
    implements $TransferSuccessCopyWith<$Res> {
  _$TransferSuccessCopyWithImpl(this._self, this._then);

  final TransferSuccess _self;
  final $Res Function(TransferSuccess) _then;

/// Create a copy of TransferState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TransferSuccess(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TransferFailure implements TransferState {
  const TransferFailure({required this.message});
  

 final  String message;

/// Create a copy of TransferState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransferFailureCopyWith<TransferFailure> get copyWith => _$TransferFailureCopyWithImpl<TransferFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransferFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TransferState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $TransferFailureCopyWith<$Res> implements $TransferStateCopyWith<$Res> {
  factory $TransferFailureCopyWith(TransferFailure value, $Res Function(TransferFailure) _then) = _$TransferFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TransferFailureCopyWithImpl<$Res>
    implements $TransferFailureCopyWith<$Res> {
  _$TransferFailureCopyWithImpl(this._self, this._then);

  final TransferFailure _self;
  final $Res Function(TransferFailure) _then;

/// Create a copy of TransferState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TransferFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
