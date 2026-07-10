// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backup_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BackupEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BackupEvent()';
}


}

/// @nodoc
class $BackupEventCopyWith<$Res>  {
$BackupEventCopyWith(BackupEvent _, $Res Function(BackupEvent) __);
}


/// Adds pattern-matching-related methods to [BackupEvent].
extension BackupEventPatterns on BackupEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BackupCreated value)?  backupCreated,TResult Function( BackupShared value)?  backupShared,TResult Function( BackupRestored value)?  backupRestored,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BackupCreated() when backupCreated != null:
return backupCreated(_that);case BackupShared() when backupShared != null:
return backupShared(_that);case BackupRestored() when backupRestored != null:
return backupRestored(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BackupCreated value)  backupCreated,required TResult Function( BackupShared value)  backupShared,required TResult Function( BackupRestored value)  backupRestored,}){
final _that = this;
switch (_that) {
case BackupCreated():
return backupCreated(_that);case BackupShared():
return backupShared(_that);case BackupRestored():
return backupRestored(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BackupCreated value)?  backupCreated,TResult? Function( BackupShared value)?  backupShared,TResult? Function( BackupRestored value)?  backupRestored,}){
final _that = this;
switch (_that) {
case BackupCreated() when backupCreated != null:
return backupCreated(_that);case BackupShared() when backupShared != null:
return backupShared(_that);case BackupRestored() when backupRestored != null:
return backupRestored(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  backupCreated,TResult Function( String filePath)?  backupShared,TResult Function( String filePath)?  backupRestored,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BackupCreated() when backupCreated != null:
return backupCreated();case BackupShared() when backupShared != null:
return backupShared(_that.filePath);case BackupRestored() when backupRestored != null:
return backupRestored(_that.filePath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  backupCreated,required TResult Function( String filePath)  backupShared,required TResult Function( String filePath)  backupRestored,}) {final _that = this;
switch (_that) {
case BackupCreated():
return backupCreated();case BackupShared():
return backupShared(_that.filePath);case BackupRestored():
return backupRestored(_that.filePath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  backupCreated,TResult? Function( String filePath)?  backupShared,TResult? Function( String filePath)?  backupRestored,}) {final _that = this;
switch (_that) {
case BackupCreated() when backupCreated != null:
return backupCreated();case BackupShared() when backupShared != null:
return backupShared(_that.filePath);case BackupRestored() when backupRestored != null:
return backupRestored(_that.filePath);case _:
  return null;

}
}

}

/// @nodoc


class BackupCreated implements BackupEvent {
  const BackupCreated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupCreated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BackupEvent.backupCreated()';
}


}




/// @nodoc


class BackupShared implements BackupEvent {
  const BackupShared({required this.filePath});
  

 final  String filePath;

/// Create a copy of BackupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BackupSharedCopyWith<BackupShared> get copyWith => _$BackupSharedCopyWithImpl<BackupShared>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupShared&&(identical(other.filePath, filePath) || other.filePath == filePath));
}


@override
int get hashCode => Object.hash(runtimeType,filePath);

@override
String toString() {
  return 'BackupEvent.backupShared(filePath: $filePath)';
}


}

/// @nodoc
abstract mixin class $BackupSharedCopyWith<$Res> implements $BackupEventCopyWith<$Res> {
  factory $BackupSharedCopyWith(BackupShared value, $Res Function(BackupShared) _then) = _$BackupSharedCopyWithImpl;
@useResult
$Res call({
 String filePath
});




}
/// @nodoc
class _$BackupSharedCopyWithImpl<$Res>
    implements $BackupSharedCopyWith<$Res> {
  _$BackupSharedCopyWithImpl(this._self, this._then);

  final BackupShared _self;
  final $Res Function(BackupShared) _then;

/// Create a copy of BackupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? filePath = null,}) {
  return _then(BackupShared(
filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class BackupRestored implements BackupEvent {
  const BackupRestored({required this.filePath});
  

 final  String filePath;

/// Create a copy of BackupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BackupRestoredCopyWith<BackupRestored> get copyWith => _$BackupRestoredCopyWithImpl<BackupRestored>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupRestored&&(identical(other.filePath, filePath) || other.filePath == filePath));
}


@override
int get hashCode => Object.hash(runtimeType,filePath);

@override
String toString() {
  return 'BackupEvent.backupRestored(filePath: $filePath)';
}


}

/// @nodoc
abstract mixin class $BackupRestoredCopyWith<$Res> implements $BackupEventCopyWith<$Res> {
  factory $BackupRestoredCopyWith(BackupRestored value, $Res Function(BackupRestored) _then) = _$BackupRestoredCopyWithImpl;
@useResult
$Res call({
 String filePath
});




}
/// @nodoc
class _$BackupRestoredCopyWithImpl<$Res>
    implements $BackupRestoredCopyWith<$Res> {
  _$BackupRestoredCopyWithImpl(this._self, this._then);

  final BackupRestored _self;
  final $Res Function(BackupRestored) _then;

/// Create a copy of BackupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? filePath = null,}) {
  return _then(BackupRestored(
filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
