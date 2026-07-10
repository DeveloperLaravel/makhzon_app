// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_warehouse_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddWarehouseParams {

 String get name; String get code; String? get location;
/// Create a copy of AddWarehouseParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddWarehouseParamsCopyWith<AddWarehouseParams> get copyWith => _$AddWarehouseParamsCopyWithImpl<AddWarehouseParams>(this as AddWarehouseParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddWarehouseParams&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,name,code,location);

@override
String toString() {
  return 'AddWarehouseParams(name: $name, code: $code, location: $location)';
}


}

/// @nodoc
abstract mixin class $AddWarehouseParamsCopyWith<$Res>  {
  factory $AddWarehouseParamsCopyWith(AddWarehouseParams value, $Res Function(AddWarehouseParams) _then) = _$AddWarehouseParamsCopyWithImpl;
@useResult
$Res call({
 String name, String code, String? location
});




}
/// @nodoc
class _$AddWarehouseParamsCopyWithImpl<$Res>
    implements $AddWarehouseParamsCopyWith<$Res> {
  _$AddWarehouseParamsCopyWithImpl(this._self, this._then);

  final AddWarehouseParams _self;
  final $Res Function(AddWarehouseParams) _then;

/// Create a copy of AddWarehouseParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? code = null,Object? location = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddWarehouseParams].
extension AddWarehouseParamsPatterns on AddWarehouseParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddWarehouseParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddWarehouseParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddWarehouseParams value)  $default,){
final _that = this;
switch (_that) {
case _AddWarehouseParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddWarehouseParams value)?  $default,){
final _that = this;
switch (_that) {
case _AddWarehouseParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String code,  String? location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddWarehouseParams() when $default != null:
return $default(_that.name,_that.code,_that.location);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String code,  String? location)  $default,) {final _that = this;
switch (_that) {
case _AddWarehouseParams():
return $default(_that.name,_that.code,_that.location);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String code,  String? location)?  $default,) {final _that = this;
switch (_that) {
case _AddWarehouseParams() when $default != null:
return $default(_that.name,_that.code,_that.location);case _:
  return null;

}
}

}

/// @nodoc


class _AddWarehouseParams implements AddWarehouseParams {
  const _AddWarehouseParams({required this.name, required this.code, this.location});
  

@override final  String name;
@override final  String code;
@override final  String? location;

/// Create a copy of AddWarehouseParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddWarehouseParamsCopyWith<_AddWarehouseParams> get copyWith => __$AddWarehouseParamsCopyWithImpl<_AddWarehouseParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddWarehouseParams&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,name,code,location);

@override
String toString() {
  return 'AddWarehouseParams(name: $name, code: $code, location: $location)';
}


}

/// @nodoc
abstract mixin class _$AddWarehouseParamsCopyWith<$Res> implements $AddWarehouseParamsCopyWith<$Res> {
  factory _$AddWarehouseParamsCopyWith(_AddWarehouseParams value, $Res Function(_AddWarehouseParams) _then) = __$AddWarehouseParamsCopyWithImpl;
@override @useResult
$Res call({
 String name, String code, String? location
});




}
/// @nodoc
class __$AddWarehouseParamsCopyWithImpl<$Res>
    implements _$AddWarehouseParamsCopyWith<$Res> {
  __$AddWarehouseParamsCopyWithImpl(this._self, this._then);

  final _AddWarehouseParams _self;
  final $Res Function(_AddWarehouseParams) _then;

/// Create a copy of AddWarehouseParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? code = null,Object? location = freezed,}) {
  return _then(_AddWarehouseParams(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
