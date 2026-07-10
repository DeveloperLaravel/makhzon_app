// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BackupState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BackupState()';
}


}

/// @nodoc
class $BackupStateCopyWith<$Res>  {
$BackupStateCopyWith(BackupState _, $Res Function(BackupState) __);
}


/// Adds pattern-matching-related methods to [BackupState].
extension BackupStatePatterns on BackupState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BackupInitial value)?  initial,TResult Function( BackupLoading value)?  loading,TResult Function( BackupCreatedState value)?  created,TResult Function( BackupSuccess value)?  success,TResult Function( BackupFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BackupInitial() when initial != null:
return initial(_that);case BackupLoading() when loading != null:
return loading(_that);case BackupCreatedState() when created != null:
return created(_that);case BackupSuccess() when success != null:
return success(_that);case BackupFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BackupInitial value)  initial,required TResult Function( BackupLoading value)  loading,required TResult Function( BackupCreatedState value)  created,required TResult Function( BackupSuccess value)  success,required TResult Function( BackupFailure value)  failure,}){
final _that = this;
switch (_that) {
case BackupInitial():
return initial(_that);case BackupLoading():
return loading(_that);case BackupCreatedState():
return created(_that);case BackupSuccess():
return success(_that);case BackupFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BackupInitial value)?  initial,TResult? Function( BackupLoading value)?  loading,TResult? Function( BackupCreatedState value)?  created,TResult? Function( BackupSuccess value)?  success,TResult? Function( BackupFailure value)?  failure,}){
final _that = this;
switch (_that) {
case BackupInitial() when initial != null:
return initial(_that);case BackupLoading() when loading != null:
return loading(_that);case BackupCreatedState() when created != null:
return created(_that);case BackupSuccess() when success != null:
return success(_that);case BackupFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( BackupInfoEntity backup)?  created,TResult Function( String message)?  success,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BackupInitial() when initial != null:
return initial();case BackupLoading() when loading != null:
return loading();case BackupCreatedState() when created != null:
return created(_that.backup);case BackupSuccess() when success != null:
return success(_that.message);case BackupFailure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( BackupInfoEntity backup)  created,required TResult Function( String message)  success,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case BackupInitial():
return initial();case BackupLoading():
return loading();case BackupCreatedState():
return created(_that.backup);case BackupSuccess():
return success(_that.message);case BackupFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( BackupInfoEntity backup)?  created,TResult? Function( String message)?  success,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case BackupInitial() when initial != null:
return initial();case BackupLoading() when loading != null:
return loading();case BackupCreatedState() when created != null:
return created(_that.backup);case BackupSuccess() when success != null:
return success(_that.message);case BackupFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class BackupInitial implements BackupState {
  const BackupInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BackupState.initial()';
}


}




/// @nodoc


class BackupLoading implements BackupState {
  const BackupLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BackupState.loading()';
}


}




/// @nodoc


class BackupCreatedState implements BackupState {
  const BackupCreatedState({required this.backup});
  

 final  BackupInfoEntity backup;

/// Create a copy of BackupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BackupCreatedStateCopyWith<BackupCreatedState> get copyWith => _$BackupCreatedStateCopyWithImpl<BackupCreatedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupCreatedState&&(identical(other.backup, backup) || other.backup == backup));
}


@override
int get hashCode => Object.hash(runtimeType,backup);

@override
String toString() {
  return 'BackupState.created(backup: $backup)';
}


}

/// @nodoc
abstract mixin class $BackupCreatedStateCopyWith<$Res> implements $BackupStateCopyWith<$Res> {
  factory $BackupCreatedStateCopyWith(BackupCreatedState value, $Res Function(BackupCreatedState) _then) = _$BackupCreatedStateCopyWithImpl;
@useResult
$Res call({
 BackupInfoEntity backup
});


$BackupInfoEntityCopyWith<$Res> get backup;

}
/// @nodoc
class _$BackupCreatedStateCopyWithImpl<$Res>
    implements $BackupCreatedStateCopyWith<$Res> {
  _$BackupCreatedStateCopyWithImpl(this._self, this._then);

  final BackupCreatedState _self;
  final $Res Function(BackupCreatedState) _then;

/// Create a copy of BackupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? backup = null,}) {
  return _then(BackupCreatedState(
backup: null == backup ? _self.backup : backup // ignore: cast_nullable_to_non_nullable
as BackupInfoEntity,
  ));
}

/// Create a copy of BackupState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BackupInfoEntityCopyWith<$Res> get backup {
  
  return $BackupInfoEntityCopyWith<$Res>(_self.backup, (value) {
    return _then(_self.copyWith(backup: value));
  });
}
}

/// @nodoc


class BackupSuccess implements BackupState {
  const BackupSuccess({required this.message});
  

 final  String message;

/// Create a copy of BackupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BackupSuccessCopyWith<BackupSuccess> get copyWith => _$BackupSuccessCopyWithImpl<BackupSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BackupState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $BackupSuccessCopyWith<$Res> implements $BackupStateCopyWith<$Res> {
  factory $BackupSuccessCopyWith(BackupSuccess value, $Res Function(BackupSuccess) _then) = _$BackupSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$BackupSuccessCopyWithImpl<$Res>
    implements $BackupSuccessCopyWith<$Res> {
  _$BackupSuccessCopyWithImpl(this._self, this._then);

  final BackupSuccess _self;
  final $Res Function(BackupSuccess) _then;

/// Create a copy of BackupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(BackupSuccess(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class BackupFailure implements BackupState {
  const BackupFailure({required this.message});
  

 final  String message;

/// Create a copy of BackupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BackupFailureCopyWith<BackupFailure> get copyWith => _$BackupFailureCopyWithImpl<BackupFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BackupState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $BackupFailureCopyWith<$Res> implements $BackupStateCopyWith<$Res> {
  factory $BackupFailureCopyWith(BackupFailure value, $Res Function(BackupFailure) _then) = _$BackupFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$BackupFailureCopyWithImpl<$Res>
    implements $BackupFailureCopyWith<$Res> {
  _$BackupFailureCopyWithImpl(this._self, this._then);

  final BackupFailure _self;
  final $Res Function(BackupFailure) _then;

/// Create a copy of BackupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(BackupFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
