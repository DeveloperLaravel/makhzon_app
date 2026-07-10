// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_warehouse_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateWarehouseParams {

 int get id; String get name; String get code; String? get location;
/// Create a copy of UpdateWarehouseParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateWarehouseParamsCopyWith<UpdateWarehouseParams> get copyWith => _$UpdateWarehouseParamsCopyWithImpl<UpdateWarehouseParams>(this as UpdateWarehouseParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateWarehouseParams&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,code,location);

@override
String toString() {
  return 'UpdateWarehouseParams(id: $id, name: $name, code: $code, location: $location)';
}


}

/// @nodoc
abstract mixin class $UpdateWarehouseParamsCopyWith<$Res>  {
  factory $UpdateWarehouseParamsCopyWith(UpdateWarehouseParams value, $Res Function(UpdateWarehouseParams) _then) = _$UpdateWarehouseParamsCopyWithImpl;
@useResult
$Res call({
 int id, String name, String code, String? location
});




}
/// @nodoc
class _$UpdateWarehouseParamsCopyWithImpl<$Res>
    implements $UpdateWarehouseParamsCopyWith<$Res> {
  _$UpdateWarehouseParamsCopyWithImpl(this._self, this._then);

  final UpdateWarehouseParams _self;
  final $Res Function(UpdateWarehouseParams) _then;

/// Create a copy of UpdateWarehouseParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? code = null,Object? location = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateWarehouseParams].
extension UpdateWarehouseParamsPatterns on UpdateWarehouseParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateWarehouseParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateWarehouseParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateWarehouseParams value)  $default,){
final _that = this;
switch (_that) {
case _UpdateWarehouseParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateWarehouseParams value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateWarehouseParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String code,  String? location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateWarehouseParams() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.location);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String code,  String? location)  $default,) {final _that = this;
switch (_that) {
case _UpdateWarehouseParams():
return $default(_that.id,_that.name,_that.code,_that.location);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String code,  String? location)?  $default,) {final _that = this;
switch (_that) {
case _UpdateWarehouseParams() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.location);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateWarehouseParams implements UpdateWarehouseParams {
  const _UpdateWarehouseParams({required this.id, required this.name, required this.code, this.location});
  

@override final  int id;
@override final  String name;
@override final  String code;
@override final  String? location;

/// Create a copy of UpdateWarehouseParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateWarehouseParamsCopyWith<_UpdateWarehouseParams> get copyWith => __$UpdateWarehouseParamsCopyWithImpl<_UpdateWarehouseParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateWarehouseParams&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,code,location);

@override
String toString() {
  return 'UpdateWarehouseParams(id: $id, name: $name, code: $code, location: $location)';
}


}

/// @nodoc
abstract mixin class _$UpdateWarehouseParamsCopyWith<$Res> implements $UpdateWarehouseParamsCopyWith<$Res> {
  factory _$UpdateWarehouseParamsCopyWith(_UpdateWarehouseParams value, $Res Function(_UpdateWarehouseParams) _then) = __$UpdateWarehouseParamsCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String code, String? location
});




}
/// @nodoc
class __$UpdateWarehouseParamsCopyWithImpl<$Res>
    implements _$UpdateWarehouseParamsCopyWith<$Res> {
  __$UpdateWarehouseParamsCopyWithImpl(this._self, this._then);

  final _UpdateWarehouseParams _self;
  final $Res Function(_UpdateWarehouseParams) _then;

/// Create a copy of UpdateWarehouseParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? code = null,Object? location = freezed,}) {
  return _then(_UpdateWarehouseParams(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
