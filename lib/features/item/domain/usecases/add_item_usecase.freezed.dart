// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_item_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddItemParams {

 String get name; String get unit; String? get barcode; String? get description;
/// Create a copy of AddItemParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddItemParamsCopyWith<AddItemParams> get copyWith => _$AddItemParamsCopyWithImpl<AddItemParams>(this as AddItemParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddItemParams&&(identical(other.name, name) || other.name == name)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,name,unit,barcode,description);

@override
String toString() {
  return 'AddItemParams(name: $name, unit: $unit, barcode: $barcode, description: $description)';
}


}

/// @nodoc
abstract mixin class $AddItemParamsCopyWith<$Res>  {
  factory $AddItemParamsCopyWith(AddItemParams value, $Res Function(AddItemParams) _then) = _$AddItemParamsCopyWithImpl;
@useResult
$Res call({
 String name, String unit, String? barcode, String? description
});




}
/// @nodoc
class _$AddItemParamsCopyWithImpl<$Res>
    implements $AddItemParamsCopyWith<$Res> {
  _$AddItemParamsCopyWithImpl(this._self, this._then);

  final AddItemParams _self;
  final $Res Function(AddItemParams) _then;

/// Create a copy of AddItemParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? unit = null,Object? barcode = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddItemParams].
extension AddItemParamsPatterns on AddItemParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddItemParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddItemParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddItemParams value)  $default,){
final _that = this;
switch (_that) {
case _AddItemParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddItemParams value)?  $default,){
final _that = this;
switch (_that) {
case _AddItemParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String unit,  String? barcode,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddItemParams() when $default != null:
return $default(_that.name,_that.unit,_that.barcode,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String unit,  String? barcode,  String? description)  $default,) {final _that = this;
switch (_that) {
case _AddItemParams():
return $default(_that.name,_that.unit,_that.barcode,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String unit,  String? barcode,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _AddItemParams() when $default != null:
return $default(_that.name,_that.unit,_that.barcode,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _AddItemParams implements AddItemParams {
  const _AddItemParams({required this.name, required this.unit, this.barcode, this.description});
  

@override final  String name;
@override final  String unit;
@override final  String? barcode;
@override final  String? description;

/// Create a copy of AddItemParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddItemParamsCopyWith<_AddItemParams> get copyWith => __$AddItemParamsCopyWithImpl<_AddItemParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddItemParams&&(identical(other.name, name) || other.name == name)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,name,unit,barcode,description);

@override
String toString() {
  return 'AddItemParams(name: $name, unit: $unit, barcode: $barcode, description: $description)';
}


}

/// @nodoc
abstract mixin class _$AddItemParamsCopyWith<$Res> implements $AddItemParamsCopyWith<$Res> {
  factory _$AddItemParamsCopyWith(_AddItemParams value, $Res Function(_AddItemParams) _then) = __$AddItemParamsCopyWithImpl;
@override @useResult
$Res call({
 String name, String unit, String? barcode, String? description
});




}
/// @nodoc
class __$AddItemParamsCopyWithImpl<$Res>
    implements _$AddItemParamsCopyWith<$Res> {
  __$AddItemParamsCopyWithImpl(this._self, this._then);

  final _AddItemParams _self;
  final $Res Function(_AddItemParams) _then;

/// Create a copy of AddItemParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? unit = null,Object? barcode = freezed,Object? description = freezed,}) {
  return _then(_AddItemParams(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
