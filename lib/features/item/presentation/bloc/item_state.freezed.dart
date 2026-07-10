// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ItemState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemState()';
}


}

/// @nodoc
class $ItemStateCopyWith<$Res>  {
$ItemStateCopyWith(ItemState _, $Res Function(ItemState) __);
}


/// Adds pattern-matching-related methods to [ItemState].
extension ItemStatePatterns on ItemState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ItemInitial value)?  initial,TResult Function( ItemLoading value)?  loading,TResult Function( ItemLoaded value)?  loaded,TResult Function( ItemSuccess value)?  success,TResult Function( ItemFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ItemInitial() when initial != null:
return initial(_that);case ItemLoading() when loading != null:
return loading(_that);case ItemLoaded() when loaded != null:
return loaded(_that);case ItemSuccess() when success != null:
return success(_that);case ItemFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ItemInitial value)  initial,required TResult Function( ItemLoading value)  loading,required TResult Function( ItemLoaded value)  loaded,required TResult Function( ItemSuccess value)  success,required TResult Function( ItemFailure value)  failure,}){
final _that = this;
switch (_that) {
case ItemInitial():
return initial(_that);case ItemLoading():
return loading(_that);case ItemLoaded():
return loaded(_that);case ItemSuccess():
return success(_that);case ItemFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ItemInitial value)?  initial,TResult? Function( ItemLoading value)?  loading,TResult? Function( ItemLoaded value)?  loaded,TResult? Function( ItemSuccess value)?  success,TResult? Function( ItemFailure value)?  failure,}){
final _that = this;
switch (_that) {
case ItemInitial() when initial != null:
return initial(_that);case ItemLoading() when loading != null:
return loading(_that);case ItemLoaded() when loaded != null:
return loaded(_that);case ItemSuccess() when success != null:
return success(_that);case ItemFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<ItemEntity> items)?  loaded,TResult Function( String message)?  success,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ItemInitial() when initial != null:
return initial();case ItemLoading() when loading != null:
return loading();case ItemLoaded() when loaded != null:
return loaded(_that.items);case ItemSuccess() when success != null:
return success(_that.message);case ItemFailure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<ItemEntity> items)  loaded,required TResult Function( String message)  success,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case ItemInitial():
return initial();case ItemLoading():
return loading();case ItemLoaded():
return loaded(_that.items);case ItemSuccess():
return success(_that.message);case ItemFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<ItemEntity> items)?  loaded,TResult? Function( String message)?  success,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case ItemInitial() when initial != null:
return initial();case ItemLoading() when loading != null:
return loading();case ItemLoaded() when loaded != null:
return loaded(_that.items);case ItemSuccess() when success != null:
return success(_that.message);case ItemFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ItemInitial implements ItemState {
  const ItemInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemState.initial()';
}


}




/// @nodoc


class ItemLoading implements ItemState {
  const ItemLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemState.loading()';
}


}




/// @nodoc


class ItemLoaded implements ItemState {
  const ItemLoaded({required final  List<ItemEntity> items}): _items = items;
  

 final  List<ItemEntity> _items;
 List<ItemEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of ItemState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemLoadedCopyWith<ItemLoaded> get copyWith => _$ItemLoadedCopyWithImpl<ItemLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemLoaded&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'ItemState.loaded(items: $items)';
}


}

/// @nodoc
abstract mixin class $ItemLoadedCopyWith<$Res> implements $ItemStateCopyWith<$Res> {
  factory $ItemLoadedCopyWith(ItemLoaded value, $Res Function(ItemLoaded) _then) = _$ItemLoadedCopyWithImpl;
@useResult
$Res call({
 List<ItemEntity> items
});




}
/// @nodoc
class _$ItemLoadedCopyWithImpl<$Res>
    implements $ItemLoadedCopyWith<$Res> {
  _$ItemLoadedCopyWithImpl(this._self, this._then);

  final ItemLoaded _self;
  final $Res Function(ItemLoaded) _then;

/// Create a copy of ItemState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(ItemLoaded(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ItemEntity>,
  ));
}


}

/// @nodoc


class ItemSuccess implements ItemState {
  const ItemSuccess({required this.message});
  

 final  String message;

/// Create a copy of ItemState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemSuccessCopyWith<ItemSuccess> get copyWith => _$ItemSuccessCopyWithImpl<ItemSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ItemState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class $ItemSuccessCopyWith<$Res> implements $ItemStateCopyWith<$Res> {
  factory $ItemSuccessCopyWith(ItemSuccess value, $Res Function(ItemSuccess) _then) = _$ItemSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ItemSuccessCopyWithImpl<$Res>
    implements $ItemSuccessCopyWith<$Res> {
  _$ItemSuccessCopyWithImpl(this._self, this._then);

  final ItemSuccess _self;
  final $Res Function(ItemSuccess) _then;

/// Create a copy of ItemState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ItemSuccess(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ItemFailure implements ItemState {
  const ItemFailure({required this.message});
  

 final  String message;

/// Create a copy of ItemState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemFailureCopyWith<ItemFailure> get copyWith => _$ItemFailureCopyWithImpl<ItemFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ItemState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $ItemFailureCopyWith<$Res> implements $ItemStateCopyWith<$Res> {
  factory $ItemFailureCopyWith(ItemFailure value, $Res Function(ItemFailure) _then) = _$ItemFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ItemFailureCopyWithImpl<$Res>
    implements $ItemFailureCopyWith<$Res> {
  _$ItemFailureCopyWithImpl(this._self, this._then);

  final ItemFailure _self;
  final $Res Function(ItemFailure) _then;

/// Create a copy of ItemState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ItemFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
