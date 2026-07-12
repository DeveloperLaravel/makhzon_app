// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ThemeState {

 ThemeMode get themeMode; double get fontScale; int get primaryColorValue; int get titleColorValue; int get bodyTextColorValue; bool get useCustomTextColors; bool get isLoaded;
/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemeStateCopyWith<ThemeState> get copyWith => _$ThemeStateCopyWithImpl<ThemeState>(this as ThemeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeState&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode)&&(identical(other.fontScale, fontScale) || other.fontScale == fontScale)&&(identical(other.primaryColorValue, primaryColorValue) || other.primaryColorValue == primaryColorValue)&&(identical(other.titleColorValue, titleColorValue) || other.titleColorValue == titleColorValue)&&(identical(other.bodyTextColorValue, bodyTextColorValue) || other.bodyTextColorValue == bodyTextColorValue)&&(identical(other.useCustomTextColors, useCustomTextColors) || other.useCustomTextColors == useCustomTextColors)&&(identical(other.isLoaded, isLoaded) || other.isLoaded == isLoaded));
}


@override
int get hashCode => Object.hash(runtimeType,themeMode,fontScale,primaryColorValue,titleColorValue,bodyTextColorValue,useCustomTextColors,isLoaded);

@override
String toString() {
  return 'ThemeState(themeMode: $themeMode, fontScale: $fontScale, primaryColorValue: $primaryColorValue, titleColorValue: $titleColorValue, bodyTextColorValue: $bodyTextColorValue, useCustomTextColors: $useCustomTextColors, isLoaded: $isLoaded)';
}


}

/// @nodoc
abstract mixin class $ThemeStateCopyWith<$Res>  {
  factory $ThemeStateCopyWith(ThemeState value, $Res Function(ThemeState) _then) = _$ThemeStateCopyWithImpl;
@useResult
$Res call({
 ThemeMode themeMode, double fontScale, int primaryColorValue, int titleColorValue, int bodyTextColorValue, bool useCustomTextColors, bool isLoaded
});




}
/// @nodoc
class _$ThemeStateCopyWithImpl<$Res>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._self, this._then);

  final ThemeState _self;
  final $Res Function(ThemeState) _then;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? themeMode = null,Object? fontScale = null,Object? primaryColorValue = null,Object? titleColorValue = null,Object? bodyTextColorValue = null,Object? useCustomTextColors = null,Object? isLoaded = null,}) {
  return _then(_self.copyWith(
themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as ThemeMode,fontScale: null == fontScale ? _self.fontScale : fontScale // ignore: cast_nullable_to_non_nullable
as double,primaryColorValue: null == primaryColorValue ? _self.primaryColorValue : primaryColorValue // ignore: cast_nullable_to_non_nullable
as int,titleColorValue: null == titleColorValue ? _self.titleColorValue : titleColorValue // ignore: cast_nullable_to_non_nullable
as int,bodyTextColorValue: null == bodyTextColorValue ? _self.bodyTextColorValue : bodyTextColorValue // ignore: cast_nullable_to_non_nullable
as int,useCustomTextColors: null == useCustomTextColors ? _self.useCustomTextColors : useCustomTextColors // ignore: cast_nullable_to_non_nullable
as bool,isLoaded: null == isLoaded ? _self.isLoaded : isLoaded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ThemeState].
extension ThemeStatePatterns on ThemeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ThemeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ThemeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ThemeState value)  $default,){
final _that = this;
switch (_that) {
case _ThemeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ThemeState value)?  $default,){
final _that = this;
switch (_that) {
case _ThemeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ThemeMode themeMode,  double fontScale,  int primaryColorValue,  int titleColorValue,  int bodyTextColorValue,  bool useCustomTextColors,  bool isLoaded)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ThemeState() when $default != null:
return $default(_that.themeMode,_that.fontScale,_that.primaryColorValue,_that.titleColorValue,_that.bodyTextColorValue,_that.useCustomTextColors,_that.isLoaded);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ThemeMode themeMode,  double fontScale,  int primaryColorValue,  int titleColorValue,  int bodyTextColorValue,  bool useCustomTextColors,  bool isLoaded)  $default,) {final _that = this;
switch (_that) {
case _ThemeState():
return $default(_that.themeMode,_that.fontScale,_that.primaryColorValue,_that.titleColorValue,_that.bodyTextColorValue,_that.useCustomTextColors,_that.isLoaded);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ThemeMode themeMode,  double fontScale,  int primaryColorValue,  int titleColorValue,  int bodyTextColorValue,  bool useCustomTextColors,  bool isLoaded)?  $default,) {final _that = this;
switch (_that) {
case _ThemeState() when $default != null:
return $default(_that.themeMode,_that.fontScale,_that.primaryColorValue,_that.titleColorValue,_that.bodyTextColorValue,_that.useCustomTextColors,_that.isLoaded);case _:
  return null;

}
}

}

/// @nodoc


class _ThemeState extends ThemeState {
  const _ThemeState({this.themeMode = ThemeMode.system, this.fontScale = 1.0, this.primaryColorValue = 0xFF1565C0, this.titleColorValue = 0xFF0D47A1, this.bodyTextColorValue = 0xFF212121, this.useCustomTextColors = false, this.isLoaded = false}): super._();
  

@override@JsonKey() final  ThemeMode themeMode;
@override@JsonKey() final  double fontScale;
@override@JsonKey() final  int primaryColorValue;
@override@JsonKey() final  int titleColorValue;
@override@JsonKey() final  int bodyTextColorValue;
@override@JsonKey() final  bool useCustomTextColors;
@override@JsonKey() final  bool isLoaded;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThemeStateCopyWith<_ThemeState> get copyWith => __$ThemeStateCopyWithImpl<_ThemeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThemeState&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode)&&(identical(other.fontScale, fontScale) || other.fontScale == fontScale)&&(identical(other.primaryColorValue, primaryColorValue) || other.primaryColorValue == primaryColorValue)&&(identical(other.titleColorValue, titleColorValue) || other.titleColorValue == titleColorValue)&&(identical(other.bodyTextColorValue, bodyTextColorValue) || other.bodyTextColorValue == bodyTextColorValue)&&(identical(other.useCustomTextColors, useCustomTextColors) || other.useCustomTextColors == useCustomTextColors)&&(identical(other.isLoaded, isLoaded) || other.isLoaded == isLoaded));
}


@override
int get hashCode => Object.hash(runtimeType,themeMode,fontScale,primaryColorValue,titleColorValue,bodyTextColorValue,useCustomTextColors,isLoaded);

@override
String toString() {
  return 'ThemeState(themeMode: $themeMode, fontScale: $fontScale, primaryColorValue: $primaryColorValue, titleColorValue: $titleColorValue, bodyTextColorValue: $bodyTextColorValue, useCustomTextColors: $useCustomTextColors, isLoaded: $isLoaded)';
}


}

/// @nodoc
abstract mixin class _$ThemeStateCopyWith<$Res> implements $ThemeStateCopyWith<$Res> {
  factory _$ThemeStateCopyWith(_ThemeState value, $Res Function(_ThemeState) _then) = __$ThemeStateCopyWithImpl;
@override @useResult
$Res call({
 ThemeMode themeMode, double fontScale, int primaryColorValue, int titleColorValue, int bodyTextColorValue, bool useCustomTextColors, bool isLoaded
});




}
/// @nodoc
class __$ThemeStateCopyWithImpl<$Res>
    implements _$ThemeStateCopyWith<$Res> {
  __$ThemeStateCopyWithImpl(this._self, this._then);

  final _ThemeState _self;
  final $Res Function(_ThemeState) _then;

/// Create a copy of ThemeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? themeMode = null,Object? fontScale = null,Object? primaryColorValue = null,Object? titleColorValue = null,Object? bodyTextColorValue = null,Object? useCustomTextColors = null,Object? isLoaded = null,}) {
  return _then(_ThemeState(
themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as ThemeMode,fontScale: null == fontScale ? _self.fontScale : fontScale // ignore: cast_nullable_to_non_nullable
as double,primaryColorValue: null == primaryColorValue ? _self.primaryColorValue : primaryColorValue // ignore: cast_nullable_to_non_nullable
as int,titleColorValue: null == titleColorValue ? _self.titleColorValue : titleColorValue // ignore: cast_nullable_to_non_nullable
as int,bodyTextColorValue: null == bodyTextColorValue ? _self.bodyTextColorValue : bodyTextColorValue // ignore: cast_nullable_to_non_nullable
as int,useCustomTextColors: null == useCustomTextColors ? _self.useCustomTextColors : useCustomTextColors // ignore: cast_nullable_to_non_nullable
as bool,isLoaded: null == isLoaded ? _self.isLoaded : isLoaded // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
