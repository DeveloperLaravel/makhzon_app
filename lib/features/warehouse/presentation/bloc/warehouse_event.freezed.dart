// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WarehouseEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WarehouseEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WarehouseEvent()';
}


}

/// @nodoc
class $WarehouseEventCopyWith<$Res>  {
$WarehouseEventCopyWith(WarehouseEvent _, $Res Function(WarehouseEvent) __);
}


/// Adds pattern-matching-related methods to [WarehouseEvent].
extension WarehouseEventPatterns on WarehouseEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WarehouseStarted value)?  started,TResult Function( WarehouseAdded value)?  added,TResult Function( WarehouseUpdated value)?  updated,TResult Function( WarehouseDeleted value)?  deleted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WarehouseStarted() when started != null:
return started(_that);case WarehouseAdded() when added != null:
return added(_that);case WarehouseUpdated() when updated != null:
return updated(_that);case WarehouseDeleted() when deleted != null:
return deleted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WarehouseStarted value)  started,required TResult Function( WarehouseAdded value)  added,required TResult Function( WarehouseUpdated value)  updated,required TResult Function( WarehouseDeleted value)  deleted,}){
final _that = this;
switch (_that) {
case WarehouseStarted():
return started(_that);case WarehouseAdded():
return added(_that);case WarehouseUpdated():
return updated(_that);case WarehouseDeleted():
return deleted(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WarehouseStarted value)?  started,TResult? Function( WarehouseAdded value)?  added,TResult? Function( WarehouseUpdated value)?  updated,TResult? Function( WarehouseDeleted value)?  deleted,}){
final _that = this;
switch (_that) {
case WarehouseStarted() when started != null:
return started(_that);case WarehouseAdded() when added != null:
return added(_that);case WarehouseUpdated() when updated != null:
return updated(_that);case WarehouseDeleted() when deleted != null:
return deleted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String name,  String code,  String? location)?  added,TResult Function( int id,  String name,  String code,  String? location)?  updated,TResult Function( int id)?  deleted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WarehouseStarted() when started != null:
return started();case WarehouseAdded() when added != null:
return added(_that.name,_that.code,_that.location);case WarehouseUpdated() when updated != null:
return updated(_that.id,_that.name,_that.code,_that.location);case WarehouseDeleted() when deleted != null:
return deleted(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String name,  String code,  String? location)  added,required TResult Function( int id,  String name,  String code,  String? location)  updated,required TResult Function( int id)  deleted,}) {final _that = this;
switch (_that) {
case WarehouseStarted():
return started();case WarehouseAdded():
return added(_that.name,_that.code,_that.location);case WarehouseUpdated():
return updated(_that.id,_that.name,_that.code,_that.location);case WarehouseDeleted():
return deleted(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String name,  String code,  String? location)?  added,TResult? Function( int id,  String name,  String code,  String? location)?  updated,TResult? Function( int id)?  deleted,}) {final _that = this;
switch (_that) {
case WarehouseStarted() when started != null:
return started();case WarehouseAdded() when added != null:
return added(_that.name,_that.code,_that.location);case WarehouseUpdated() when updated != null:
return updated(_that.id,_that.name,_that.code,_that.location);case WarehouseDeleted() when deleted != null:
return deleted(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class WarehouseStarted implements WarehouseEvent {
  const WarehouseStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WarehouseStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WarehouseEvent.started()';
}


}




/// @nodoc


class WarehouseAdded implements WarehouseEvent {
  const WarehouseAdded({required this.name, required this.code, this.location});
  

 final  String name;
 final  String code;
 final  String? location;

/// Create a copy of WarehouseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WarehouseAddedCopyWith<WarehouseAdded> get copyWith => _$WarehouseAddedCopyWithImpl<WarehouseAdded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WarehouseAdded&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,name,code,location);

@override
String toString() {
  return 'WarehouseEvent.added(name: $name, code: $code, location: $location)';
}


}

/// @nodoc
abstract mixin class $WarehouseAddedCopyWith<$Res> implements $WarehouseEventCopyWith<$Res> {
  factory $WarehouseAddedCopyWith(WarehouseAdded value, $Res Function(WarehouseAdded) _then) = _$WarehouseAddedCopyWithImpl;
@useResult
$Res call({
 String name, String code, String? location
});




}
/// @nodoc
class _$WarehouseAddedCopyWithImpl<$Res>
    implements $WarehouseAddedCopyWith<$Res> {
  _$WarehouseAddedCopyWithImpl(this._self, this._then);

  final WarehouseAdded _self;
  final $Res Function(WarehouseAdded) _then;

/// Create a copy of WarehouseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? code = null,Object? location = freezed,}) {
  return _then(WarehouseAdded(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class WarehouseUpdated implements WarehouseEvent {
  const WarehouseUpdated({required this.id, required this.name, required this.code, this.location});
  

 final  int id;
 final  String name;
 final  String code;
 final  String? location;

/// Create a copy of WarehouseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WarehouseUpdatedCopyWith<WarehouseUpdated> get copyWith => _$WarehouseUpdatedCopyWithImpl<WarehouseUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WarehouseUpdated&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,code,location);

@override
String toString() {
  return 'WarehouseEvent.updated(id: $id, name: $name, code: $code, location: $location)';
}


}

/// @nodoc
abstract mixin class $WarehouseUpdatedCopyWith<$Res> implements $WarehouseEventCopyWith<$Res> {
  factory $WarehouseUpdatedCopyWith(WarehouseUpdated value, $Res Function(WarehouseUpdated) _then) = _$WarehouseUpdatedCopyWithImpl;
@useResult
$Res call({
 int id, String name, String code, String? location
});




}
/// @nodoc
class _$WarehouseUpdatedCopyWithImpl<$Res>
    implements $WarehouseUpdatedCopyWith<$Res> {
  _$WarehouseUpdatedCopyWithImpl(this._self, this._then);

  final WarehouseUpdated _self;
  final $Res Function(WarehouseUpdated) _then;

/// Create a copy of WarehouseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? code = null,Object? location = freezed,}) {
  return _then(WarehouseUpdated(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class WarehouseDeleted implements WarehouseEvent {
  const WarehouseDeleted({required this.id});
  

 final  int id;

/// Create a copy of WarehouseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WarehouseDeletedCopyWith<WarehouseDeleted> get copyWith => _$WarehouseDeletedCopyWithImpl<WarehouseDeleted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WarehouseDeleted&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'WarehouseEvent.deleted(id: $id)';
}


}

/// @nodoc
abstract mixin class $WarehouseDeletedCopyWith<$Res> implements $WarehouseEventCopyWith<$Res> {
  factory $WarehouseDeletedCopyWith(WarehouseDeleted value, $Res Function(WarehouseDeleted) _then) = _$WarehouseDeletedCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$WarehouseDeletedCopyWithImpl<$Res>
    implements $WarehouseDeletedCopyWith<$Res> {
  _$WarehouseDeletedCopyWithImpl(this._self, this._then);

  final WarehouseDeleted _self;
  final $Res Function(WarehouseDeleted) _then;

/// Create a copy of WarehouseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(WarehouseDeleted(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
