// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StockState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StockState()';
}


}

/// @nodoc
class $StockStateCopyWith<$Res>  {
$StockStateCopyWith(StockState _, $Res Function(StockState) __);
}


/// Adds pattern-matching-related methods to [StockState].
extension StockStatePatterns on StockState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( StockInitial value)?  initial,TResult Function( StockLoading value)?  loading,TResult Function( StockLoaded value)?  loaded,TResult Function( StockSuccess value)?  success,TResult Function( StockFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case StockInitial() when initial != null:
return initial(_that);case StockLoading() when loading != null:
return loading(_that);case StockLoaded() when loaded != null:
return loaded(_that);case StockSuccess() when success != null:
return success(_that);case StockFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( StockInitial value)  initial,required TResult Function( StockLoading value)  loading,required TResult Function( StockLoaded value)  loaded,required TResult Function( StockSuccess value)  success,required TResult Function( StockFailure value)  failure,}){
final _that = this;
switch (_that) {
case StockInitial():
return initial(_that);case StockLoading():
return loading(_that);case StockLoaded():
return loaded(_that);case StockSuccess():
return success(_that);case StockFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( StockInitial value)?  initial,TResult? Function( StockLoading value)?  loading,TResult? Function( StockLoaded value)?  loaded,TResult? Function( StockSuccess value)?  success,TResult? Function( StockFailure value)?  failure,}){
final _that = this;
switch (_that) {
case StockInitial() when initial != null:
return initial(_that);case StockLoading() when loading != null:
return loading(_that);case StockLoaded() when loaded != null:
return loaded(_that);case StockSuccess() when success != null:
return success(_that);case StockFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<StockEntity> stocks)?  loaded,TResult Function( String message)?  success,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case StockInitial() when initial != null:
return initial();case StockLoading() when loading != null:
return loading();case StockLoaded() when loaded != null:
return loaded(_that.stocks);case StockSuccess() when success != null:
return success(_that.message);case StockFailure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<StockEntity> stocks)  loaded,required TResult Function( String message)  success,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case StockInitial():
return initial();case StockLoading():
return loading();case StockLoaded():
return loaded(_that.stocks);case StockSuccess():
return success(_that.message);case StockFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<StockEntity> stocks)?  loaded,TResult? Function( String message)?  success,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case StockInitial() when initial != null:
return initial();case StockLoading() when loading != null:
return loading();case StockLoaded() when loaded != null:
return loaded(_that.stocks);case StockSuccess() when success != null:
return success(_that.message);case StockFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class StockInitial implements StockState {
  const StockInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StockState.initial()';
}


}




/// @nodoc


class StockLoading implements StockState {
  const StockLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StockState.loading()';
}


}




/// @nodoc


class StockLoaded implements StockState {
  const StockLoaded({required final  List<StockEntity> stocks}): _stocks = stocks;
  

 final  List<StockEntity> _stocks;
 List<StockEntity> get stocks {
  if (_stocks is EqualUnmodifiableListView) return _stocks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stocks);
}


/// Create a copy of StockState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockLoadedCopyWith<StockLoaded> get copyWith => _$StockLoadedCopyWithImpl<StockLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockLoaded&&const DeepCollectionEquality().equals(other._stocks, _stocks));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_stocks));

@override
String toString() {
  return 'StockState.loaded(stocks: $stocks)';
}


}

/// @nodoc
abstract mixin class $StockLoadedCopyWith<$Res> implements $StockStateCopyWith<$Res> {
  factory $StockLoadedCopyWith(StockLoaded value, $Res Function(StockLoaded) _then) = _$StockLoadedCopyWithImpl;
@useResult
$Res call({
 List<StockEntity> stocks
});




}
/// @nodoc
class _$StockLoadedCopyWithImpl<$Res>
    implements $StockLoadedCopyWith<$Res> {
  _$StockLoadedCopyWithImpl(this._self, this._then);

  final StockLoaded _self;
  final $Res Function(StockLoaded) _then;

/// Create a copy of StockState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stocks = null,}) {
  return _then(StockLoaded(
stocks: null == stocks ? _self._stocks : stocks // ignore: cast_nullable_to_non_nullable
as List<StockEntity>,
  ));
}


}

/// @nodoc


class StockSuccess implements StockState {
  const StockSuccess({required this.message});
  

 final  String message;

/// Create a copy of StockState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockSuccessCopyWith<StockSuccess> get copyWith => _$StockSuccessCopyWithImpl<StockSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'StockState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $StockSuccessCopyWith<$Res> implements $StockStateCopyWith<$Res> {
  factory $StockSuccessCopyWith(StockSuccess value, $Res Function(StockSuccess) _then) = _$StockSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$StockSuccessCopyWithImpl<$Res>
    implements $StockSuccessCopyWith<$Res> {
  _$StockSuccessCopyWithImpl(this._self, this._then);

  final StockSuccess _self;
  final $Res Function(StockSuccess) _then;

/// Create a copy of StockState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(StockSuccess(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class StockFailure implements StockState {
  const StockFailure({required this.message});
  

 final  String message;

/// Create a copy of StockState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockFailureCopyWith<StockFailure> get copyWith => _$StockFailureCopyWithImpl<StockFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'StockState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $StockFailureCopyWith<$Res> implements $StockStateCopyWith<$Res> {
  factory $StockFailureCopyWith(StockFailure value, $Res Function(StockFailure) _then) = _$StockFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$StockFailureCopyWithImpl<$Res>
    implements $StockFailureCopyWith<$Res> {
  _$StockFailureCopyWithImpl(this._self, this._then);

  final StockFailure _self;
  final $Res Function(StockFailure) _then;

/// Create a copy of StockState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(StockFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
