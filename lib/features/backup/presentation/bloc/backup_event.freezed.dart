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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BackupCreateRequested value)?  createRequested,TResult Function( BackupShareRequested value)?  shareRequested,TResult Function( BackupPickAndRestoreRequested value)?  pickAndRestoreRequested,TResult Function( BackupRestoreConfirmed value)?  restoreConfirmed,TResult Function( BackupMessageConsumed value)?  messageConsumed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BackupCreateRequested() when createRequested != null:
return createRequested(_that);case BackupShareRequested() when shareRequested != null:
return shareRequested(_that);case BackupPickAndRestoreRequested() when pickAndRestoreRequested != null:
return pickAndRestoreRequested(_that);case BackupRestoreConfirmed() when restoreConfirmed != null:
return restoreConfirmed(_that);case BackupMessageConsumed() when messageConsumed != null:
return messageConsumed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BackupCreateRequested value)  createRequested,required TResult Function( BackupShareRequested value)  shareRequested,required TResult Function( BackupPickAndRestoreRequested value)  pickAndRestoreRequested,required TResult Function( BackupRestoreConfirmed value)  restoreConfirmed,required TResult Function( BackupMessageConsumed value)  messageConsumed,}){
final _that = this;
switch (_that) {
case BackupCreateRequested():
return createRequested(_that);case BackupShareRequested():
return shareRequested(_that);case BackupPickAndRestoreRequested():
return pickAndRestoreRequested(_that);case BackupRestoreConfirmed():
return restoreConfirmed(_that);case BackupMessageConsumed():
return messageConsumed(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BackupCreateRequested value)?  createRequested,TResult? Function( BackupShareRequested value)?  shareRequested,TResult? Function( BackupPickAndRestoreRequested value)?  pickAndRestoreRequested,TResult? Function( BackupRestoreConfirmed value)?  restoreConfirmed,TResult? Function( BackupMessageConsumed value)?  messageConsumed,}){
final _that = this;
switch (_that) {
case BackupCreateRequested() when createRequested != null:
return createRequested(_that);case BackupShareRequested() when shareRequested != null:
return shareRequested(_that);case BackupPickAndRestoreRequested() when pickAndRestoreRequested != null:
return pickAndRestoreRequested(_that);case BackupRestoreConfirmed() when restoreConfirmed != null:
return restoreConfirmed(_that);case BackupMessageConsumed() when messageConsumed != null:
return messageConsumed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  createRequested,TResult Function( String filePath)?  shareRequested,TResult Function()?  pickAndRestoreRequested,TResult Function( String filePath)?  restoreConfirmed,TResult Function()?  messageConsumed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BackupCreateRequested() when createRequested != null:
return createRequested();case BackupShareRequested() when shareRequested != null:
return shareRequested(_that.filePath);case BackupPickAndRestoreRequested() when pickAndRestoreRequested != null:
return pickAndRestoreRequested();case BackupRestoreConfirmed() when restoreConfirmed != null:
return restoreConfirmed(_that.filePath);case BackupMessageConsumed() when messageConsumed != null:
return messageConsumed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  createRequested,required TResult Function( String filePath)  shareRequested,required TResult Function()  pickAndRestoreRequested,required TResult Function( String filePath)  restoreConfirmed,required TResult Function()  messageConsumed,}) {final _that = this;
switch (_that) {
case BackupCreateRequested():
return createRequested();case BackupShareRequested():
return shareRequested(_that.filePath);case BackupPickAndRestoreRequested():
return pickAndRestoreRequested();case BackupRestoreConfirmed():
return restoreConfirmed(_that.filePath);case BackupMessageConsumed():
return messageConsumed();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  createRequested,TResult? Function( String filePath)?  shareRequested,TResult? Function()?  pickAndRestoreRequested,TResult? Function( String filePath)?  restoreConfirmed,TResult? Function()?  messageConsumed,}) {final _that = this;
switch (_that) {
case BackupCreateRequested() when createRequested != null:
return createRequested();case BackupShareRequested() when shareRequested != null:
return shareRequested(_that.filePath);case BackupPickAndRestoreRequested() when pickAndRestoreRequested != null:
return pickAndRestoreRequested();case BackupRestoreConfirmed() when restoreConfirmed != null:
return restoreConfirmed(_that.filePath);case BackupMessageConsumed() when messageConsumed != null:
return messageConsumed();case _:
  return null;

}
}

}

/// @nodoc


class BackupCreateRequested implements BackupEvent {
  const BackupCreateRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupCreateRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BackupEvent.createRequested()';
}


}




/// @nodoc


class BackupShareRequested implements BackupEvent {
  const BackupShareRequested({required this.filePath});
  

 final  String filePath;

/// Create a copy of BackupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BackupShareRequestedCopyWith<BackupShareRequested> get copyWith => _$BackupShareRequestedCopyWithImpl<BackupShareRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupShareRequested&&(identical(other.filePath, filePath) || other.filePath == filePath));
}


@override
int get hashCode => Object.hash(runtimeType,filePath);

@override
String toString() {
  return 'BackupEvent.shareRequested(filePath: $filePath)';
}


}

/// @nodoc
abstract mixin class $BackupShareRequestedCopyWith<$Res> implements $BackupEventCopyWith<$Res> {
  factory $BackupShareRequestedCopyWith(BackupShareRequested value, $Res Function(BackupShareRequested) _then) = _$BackupShareRequestedCopyWithImpl;
@useResult
$Res call({
 String filePath
});




}
/// @nodoc
class _$BackupShareRequestedCopyWithImpl<$Res>
    implements $BackupShareRequestedCopyWith<$Res> {
  _$BackupShareRequestedCopyWithImpl(this._self, this._then);

  final BackupShareRequested _self;
  final $Res Function(BackupShareRequested) _then;

/// Create a copy of BackupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? filePath = null,}) {
  return _then(BackupShareRequested(
filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class BackupPickAndRestoreRequested implements BackupEvent {
  const BackupPickAndRestoreRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupPickAndRestoreRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BackupEvent.pickAndRestoreRequested()';
}


}




/// @nodoc


class BackupRestoreConfirmed implements BackupEvent {
  const BackupRestoreConfirmed({required this.filePath});
  

 final  String filePath;

/// Create a copy of BackupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BackupRestoreConfirmedCopyWith<BackupRestoreConfirmed> get copyWith => _$BackupRestoreConfirmedCopyWithImpl<BackupRestoreConfirmed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupRestoreConfirmed&&(identical(other.filePath, filePath) || other.filePath == filePath));
}


@override
int get hashCode => Object.hash(runtimeType,filePath);

@override
String toString() {
  return 'BackupEvent.restoreConfirmed(filePath: $filePath)';
}


}

/// @nodoc
abstract mixin class $BackupRestoreConfirmedCopyWith<$Res> implements $BackupEventCopyWith<$Res> {
  factory $BackupRestoreConfirmedCopyWith(BackupRestoreConfirmed value, $Res Function(BackupRestoreConfirmed) _then) = _$BackupRestoreConfirmedCopyWithImpl;
@useResult
$Res call({
 String filePath
});




}
/// @nodoc
class _$BackupRestoreConfirmedCopyWithImpl<$Res>
    implements $BackupRestoreConfirmedCopyWith<$Res> {
  _$BackupRestoreConfirmedCopyWithImpl(this._self, this._then);

  final BackupRestoreConfirmed _self;
  final $Res Function(BackupRestoreConfirmed) _then;

/// Create a copy of BackupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? filePath = null,}) {
  return _then(BackupRestoreConfirmed(
filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class BackupMessageConsumed implements BackupEvent {
  const BackupMessageConsumed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupMessageConsumed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BackupEvent.messageConsumed()';
}


}




// dart format on
