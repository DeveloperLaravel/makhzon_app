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

 bool get isLoading; BackupInfoEntity? get latestBackup; String? get selectedRestorePath; String? get successMessage; String? get errorMessage;
/// Create a copy of BackupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BackupStateCopyWith<BackupState> get copyWith => _$BackupStateCopyWithImpl<BackupState>(this as BackupState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.latestBackup, latestBackup) || other.latestBackup == latestBackup)&&(identical(other.selectedRestorePath, selectedRestorePath) || other.selectedRestorePath == selectedRestorePath)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,latestBackup,selectedRestorePath,successMessage,errorMessage);

@override
String toString() {
  return 'BackupState(isLoading: $isLoading, latestBackup: $latestBackup, selectedRestorePath: $selectedRestorePath, successMessage: $successMessage, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $BackupStateCopyWith<$Res>  {
  factory $BackupStateCopyWith(BackupState value, $Res Function(BackupState) _then) = _$BackupStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, BackupInfoEntity? latestBackup, String? selectedRestorePath, String? successMessage, String? errorMessage
});


$BackupInfoEntityCopyWith<$Res>? get latestBackup;

}
/// @nodoc
class _$BackupStateCopyWithImpl<$Res>
    implements $BackupStateCopyWith<$Res> {
  _$BackupStateCopyWithImpl(this._self, this._then);

  final BackupState _self;
  final $Res Function(BackupState) _then;

/// Create a copy of BackupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? latestBackup = freezed,Object? selectedRestorePath = freezed,Object? successMessage = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,latestBackup: freezed == latestBackup ? _self.latestBackup : latestBackup // ignore: cast_nullable_to_non_nullable
as BackupInfoEntity?,selectedRestorePath: freezed == selectedRestorePath ? _self.selectedRestorePath : selectedRestorePath // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of BackupState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BackupInfoEntityCopyWith<$Res>? get latestBackup {
    if (_self.latestBackup == null) {
    return null;
  }

  return $BackupInfoEntityCopyWith<$Res>(_self.latestBackup!, (value) {
    return _then(_self.copyWith(latestBackup: value));
  });
}
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BackupState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BackupState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BackupState value)  $default,){
final _that = this;
switch (_that) {
case _BackupState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BackupState value)?  $default,){
final _that = this;
switch (_that) {
case _BackupState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  BackupInfoEntity? latestBackup,  String? selectedRestorePath,  String? successMessage,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BackupState() when $default != null:
return $default(_that.isLoading,_that.latestBackup,_that.selectedRestorePath,_that.successMessage,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  BackupInfoEntity? latestBackup,  String? selectedRestorePath,  String? successMessage,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _BackupState():
return $default(_that.isLoading,_that.latestBackup,_that.selectedRestorePath,_that.successMessage,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  BackupInfoEntity? latestBackup,  String? selectedRestorePath,  String? successMessage,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _BackupState() when $default != null:
return $default(_that.isLoading,_that.latestBackup,_that.selectedRestorePath,_that.successMessage,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _BackupState implements BackupState {
  const _BackupState({this.isLoading = false, this.latestBackup, this.selectedRestorePath, this.successMessage, this.errorMessage});
  

@override@JsonKey() final  bool isLoading;
@override final  BackupInfoEntity? latestBackup;
@override final  String? selectedRestorePath;
@override final  String? successMessage;
@override final  String? errorMessage;

/// Create a copy of BackupState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BackupStateCopyWith<_BackupState> get copyWith => __$BackupStateCopyWithImpl<_BackupState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BackupState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.latestBackup, latestBackup) || other.latestBackup == latestBackup)&&(identical(other.selectedRestorePath, selectedRestorePath) || other.selectedRestorePath == selectedRestorePath)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,latestBackup,selectedRestorePath,successMessage,errorMessage);

@override
String toString() {
  return 'BackupState(isLoading: $isLoading, latestBackup: $latestBackup, selectedRestorePath: $selectedRestorePath, successMessage: $successMessage, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$BackupStateCopyWith<$Res> implements $BackupStateCopyWith<$Res> {
  factory _$BackupStateCopyWith(_BackupState value, $Res Function(_BackupState) _then) = __$BackupStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, BackupInfoEntity? latestBackup, String? selectedRestorePath, String? successMessage, String? errorMessage
});


@override $BackupInfoEntityCopyWith<$Res>? get latestBackup;

}
/// @nodoc
class __$BackupStateCopyWithImpl<$Res>
    implements _$BackupStateCopyWith<$Res> {
  __$BackupStateCopyWithImpl(this._self, this._then);

  final _BackupState _self;
  final $Res Function(_BackupState) _then;

/// Create a copy of BackupState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? latestBackup = freezed,Object? selectedRestorePath = freezed,Object? successMessage = freezed,Object? errorMessage = freezed,}) {
  return _then(_BackupState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,latestBackup: freezed == latestBackup ? _self.latestBackup : latestBackup // ignore: cast_nullable_to_non_nullable
as BackupInfoEntity?,selectedRestorePath: freezed == selectedRestorePath ? _self.selectedRestorePath : selectedRestorePath // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of BackupState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BackupInfoEntityCopyWith<$Res>? get latestBackup {
    if (_self.latestBackup == null) {
    return null;
  }

  return $BackupInfoEntityCopyWith<$Res>(_self.latestBackup!, (value) {
    return _then(_self.copyWith(latestBackup: value));
  });
}
}

// dart format on
