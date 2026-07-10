// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WarehouseEntity {

 int get id; String get name; String get code; String? get location; DateTime get createdAt;
/// Create a copy of WarehouseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WarehouseEntityCopyWith<WarehouseEntity> get copyWith => _$WarehouseEntityCopyWithImpl<WarehouseEntity>(this as WarehouseEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WarehouseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.location, location) || other.location == location)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,code,location,createdAt);

@override
String toString() {
  return 'WarehouseEntity(id: $id, name: $name, code: $code, location: $location, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $WarehouseEntityCopyWith<$Res>  {
  factory $WarehouseEntityCopyWith(WarehouseEntity value, $Res Function(WarehouseEntity) _then) = _$WarehouseEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String code, String? location, DateTime createdAt
});




}
/// @nodoc
class _$WarehouseEntityCopyWithImpl<$Res>
    implements $WarehouseEntityCopyWith<$Res> {
  _$WarehouseEntityCopyWithImpl(this._self, this._then);

  final WarehouseEntity _self;
  final $Res Function(WarehouseEntity) _then;

/// Create a copy of WarehouseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? code = null,Object? location = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [WarehouseEntity].
extension WarehouseEntityPatterns on WarehouseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WarehouseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WarehouseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WarehouseEntity value)  $default,){
final _that = this;
switch (_that) {
case _WarehouseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WarehouseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _WarehouseEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String code,  String? location,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WarehouseEntity() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.location,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String code,  String? location,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _WarehouseEntity():
return $default(_that.id,_that.name,_that.code,_that.location,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String code,  String? location,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _WarehouseEntity() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.location,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _WarehouseEntity implements WarehouseEntity {
  const _WarehouseEntity({required this.id, required this.name, required this.code, this.location, required this.createdAt});
  

@override final  int id;
@override final  String name;
@override final  String code;
@override final  String? location;
@override final  DateTime createdAt;

/// Create a copy of WarehouseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WarehouseEntityCopyWith<_WarehouseEntity> get copyWith => __$WarehouseEntityCopyWithImpl<_WarehouseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WarehouseEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.location, location) || other.location == location)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,code,location,createdAt);

@override
String toString() {
  return 'WarehouseEntity(id: $id, name: $name, code: $code, location: $location, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$WarehouseEntityCopyWith<$Res> implements $WarehouseEntityCopyWith<$Res> {
  factory _$WarehouseEntityCopyWith(_WarehouseEntity value, $Res Function(_WarehouseEntity) _then) = __$WarehouseEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String code, String? location, DateTime createdAt
});




}
/// @nodoc
class __$WarehouseEntityCopyWithImpl<$Res>
    implements _$WarehouseEntityCopyWith<$Res> {
  __$WarehouseEntityCopyWithImpl(this._self, this._then);

  final _WarehouseEntity _self;
  final $Res Function(_WarehouseEntity) _then;

/// Create a copy of WarehouseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? code = null,Object? location = freezed,Object? createdAt = null,}) {
  return _then(_WarehouseEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
