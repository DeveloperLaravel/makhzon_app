// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'issue_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IssueState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IssueState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IssueState()';
}


}

/// @nodoc
class $IssueStateCopyWith<$Res>  {
$IssueStateCopyWith(IssueState _, $Res Function(IssueState) __);
}


/// Adds pattern-matching-related methods to [IssueState].
extension IssueStatePatterns on IssueState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( IssueInitial value)?  initial,TResult Function( IssueLoading value)?  loading,TResult Function( IssueLoaded value)?  loaded,TResult Function( IssueSuccess value)?  success,TResult Function( IssueFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case IssueInitial() when initial != null:
return initial(_that);case IssueLoading() when loading != null:
return loading(_that);case IssueLoaded() when loaded != null:
return loaded(_that);case IssueSuccess() when success != null:
return success(_that);case IssueFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( IssueInitial value)  initial,required TResult Function( IssueLoading value)  loading,required TResult Function( IssueLoaded value)  loaded,required TResult Function( IssueSuccess value)  success,required TResult Function( IssueFailure value)  failure,}){
final _that = this;
switch (_that) {
case IssueInitial():
return initial(_that);case IssueLoading():
return loading(_that);case IssueLoaded():
return loaded(_that);case IssueSuccess():
return success(_that);case IssueFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( IssueInitial value)?  initial,TResult? Function( IssueLoading value)?  loading,TResult? Function( IssueLoaded value)?  loaded,TResult? Function( IssueSuccess value)?  success,TResult? Function( IssueFailure value)?  failure,}){
final _that = this;
switch (_that) {
case IssueInitial() when initial != null:
return initial(_that);case IssueLoading() when loading != null:
return loading(_that);case IssueLoaded() when loaded != null:
return loaded(_that);case IssueSuccess() when success != null:
return success(_that);case IssueFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<IssueEntity> issues)?  loaded,TResult Function( String message)?  success,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case IssueInitial() when initial != null:
return initial();case IssueLoading() when loading != null:
return loading();case IssueLoaded() when loaded != null:
return loaded(_that.issues);case IssueSuccess() when success != null:
return success(_that.message);case IssueFailure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<IssueEntity> issues)  loaded,required TResult Function( String message)  success,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case IssueInitial():
return initial();case IssueLoading():
return loading();case IssueLoaded():
return loaded(_that.issues);case IssueSuccess():
return success(_that.message);case IssueFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<IssueEntity> issues)?  loaded,TResult? Function( String message)?  success,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case IssueInitial() when initial != null:
return initial();case IssueLoading() when loading != null:
return loading();case IssueLoaded() when loaded != null:
return loaded(_that.issues);case IssueSuccess() when success != null:
return success(_that.message);case IssueFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class IssueInitial implements IssueState {
  const IssueInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IssueInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IssueState.initial()';
}


}




/// @nodoc


class IssueLoading implements IssueState {
  const IssueLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IssueLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'IssueState.loading()';
}


}




/// @nodoc


class IssueLoaded implements IssueState {
  const IssueLoaded({required final  List<IssueEntity> issues}): _issues = issues;
  

 final  List<IssueEntity> _issues;
 List<IssueEntity> get issues {
  if (_issues is EqualUnmodifiableListView) return _issues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_issues);
}


/// Create a copy of IssueState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IssueLoadedCopyWith<IssueLoaded> get copyWith => _$IssueLoadedCopyWithImpl<IssueLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IssueLoaded&&const DeepCollectionEquality().equals(other._issues, _issues));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_issues));

@override
String toString() {
  return 'IssueState.loaded(issues: $issues)';
}


}

/// @nodoc
abstract mixin class $IssueLoadedCopyWith<$Res> implements $IssueStateCopyWith<$Res> {
  factory $IssueLoadedCopyWith(IssueLoaded value, $Res Function(IssueLoaded) _then) = _$IssueLoadedCopyWithImpl;
@useResult
$Res call({
 List<IssueEntity> issues
});




}
/// @nodoc
class _$IssueLoadedCopyWithImpl<$Res>
    implements $IssueLoadedCopyWith<$Res> {
  _$IssueLoadedCopyWithImpl(this._self, this._then);

  final IssueLoaded _self;
  final $Res Function(IssueLoaded) _then;

/// Create a copy of IssueState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? issues = null,}) {
  return _then(IssueLoaded(
issues: null == issues ? _self._issues : issues // ignore: cast_nullable_to_non_nullable
as List<IssueEntity>,
  ));
}


}

/// @nodoc


class IssueSuccess implements IssueState {
  const IssueSuccess({required this.message});
  

 final  String message;

/// Create a copy of IssueState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IssueSuccessCopyWith<IssueSuccess> get copyWith => _$IssueSuccessCopyWithImpl<IssueSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IssueSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'IssueState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $IssueSuccessCopyWith<$Res> implements $IssueStateCopyWith<$Res> {
  factory $IssueSuccessCopyWith(IssueSuccess value, $Res Function(IssueSuccess) _then) = _$IssueSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$IssueSuccessCopyWithImpl<$Res>
    implements $IssueSuccessCopyWith<$Res> {
  _$IssueSuccessCopyWithImpl(this._self, this._then);

  final IssueSuccess _self;
  final $Res Function(IssueSuccess) _then;

/// Create a copy of IssueState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(IssueSuccess(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class IssueFailure implements IssueState {
  const IssueFailure({required this.message});
  

 final  String message;

/// Create a copy of IssueState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IssueFailureCopyWith<IssueFailure> get copyWith => _$IssueFailureCopyWithImpl<IssueFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IssueFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'IssueState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $IssueFailureCopyWith<$Res> implements $IssueStateCopyWith<$Res> {
  factory $IssueFailureCopyWith(IssueFailure value, $Res Function(IssueFailure) _then) = _$IssueFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$IssueFailureCopyWithImpl<$Res>
    implements $IssueFailureCopyWith<$Res> {
  _$IssueFailureCopyWithImpl(this._self, this._then);

  final IssueFailure _self;
  final $Res Function(IssueFailure) _then;

/// Create a copy of IssueState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(IssueFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
