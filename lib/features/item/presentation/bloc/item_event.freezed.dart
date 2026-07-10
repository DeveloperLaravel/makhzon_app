// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ItemEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemEvent()';
}


}

/// @nodoc
class $ItemEventCopyWith<$Res>  {
$ItemEventCopyWith(ItemEvent _, $Res Function(ItemEvent) __);
}


/// Adds pattern-matching-related methods to [ItemEvent].
extension ItemEventPatterns on ItemEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ItemStarted value)?  started,TResult Function( ItemAdded value)?  added,TResult Function( ItemUpdated value)?  updated,TResult Function( ItemDeleted value)?  deleted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ItemStarted() when started != null:
return started(_that);case ItemAdded() when added != null:
return added(_that);case ItemUpdated() when updated != null:
return updated(_that);case ItemDeleted() when deleted != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ItemStarted value)  started,required TResult Function( ItemAdded value)  added,required TResult Function( ItemUpdated value)  updated,required TResult Function( ItemDeleted value)  deleted,}){
final _that = this;
switch (_that) {
case ItemStarted():
return started(_that);case ItemAdded():
return added(_that);case ItemUpdated():
return updated(_that);case ItemDeleted():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ItemStarted value)?  started,TResult? Function( ItemAdded value)?  added,TResult? Function( ItemUpdated value)?  updated,TResult? Function( ItemDeleted value)?  deleted,}){
final _that = this;
switch (_that) {
case ItemStarted() when started != null:
return started(_that);case ItemAdded() when added != null:
return added(_that);case ItemUpdated() when updated != null:
return updated(_that);case ItemDeleted() when deleted != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String name,  String unit,  String? barcode,  String? description)?  added,TResult Function( int id,  String name,  String unit,  String? barcode,  String? description)?  updated,TResult Function( int id)?  deleted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ItemStarted() when started != null:
return started();case ItemAdded() when added != null:
return added(_that.name,_that.unit,_that.barcode,_that.description);case ItemUpdated() when updated != null:
return updated(_that.id,_that.name,_that.unit,_that.barcode,_that.description);case ItemDeleted() when deleted != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String name,  String unit,  String? barcode,  String? description)  added,required TResult Function( int id,  String name,  String unit,  String? barcode,  String? description)  updated,required TResult Function( int id)  deleted,}) {final _that = this;
switch (_that) {
case ItemStarted():
return started();case ItemAdded():
return added(_that.name,_that.unit,_that.barcode,_that.description);case ItemUpdated():
return updated(_that.id,_that.name,_that.unit,_that.barcode,_that.description);case ItemDeleted():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String name,  String unit,  String? barcode,  String? description)?  added,TResult? Function( int id,  String name,  String unit,  String? barcode,  String? description)?  updated,TResult? Function( int id)?  deleted,}) {final _that = this;
switch (_that) {
case ItemStarted() when started != null:
return started();case ItemAdded() when added != null:
return added(_that.name,_that.unit,_that.barcode,_that.description);case ItemUpdated() when updated != null:
return updated(_that.id,_that.name,_that.unit,_that.barcode,_that.description);case ItemDeleted() when deleted != null:
return deleted(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class ItemStarted implements ItemEvent {
  const ItemStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ItemEvent.started()';
}


}




/// @nodoc


class ItemAdded implements ItemEvent {
  const ItemAdded({required this.name, required this.unit, this.barcode, this.description});
  

 final  String name;
 final  String unit;
 final  String? barcode;
 final  String? description;

/// Create a copy of ItemEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemAddedCopyWith<ItemAdded> get copyWith => _$ItemAddedCopyWithImpl<ItemAdded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemAdded&&(identical(other.name, name) || other.name == name)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,name,unit,barcode,description);

@override
String toString() {
  return 'ItemEvent.added(name: $name, unit: $unit, barcode: $barcode, description: $description)';
}


}

/// @nodoc
abstract mixin class $ItemAddedCopyWith<$Res> implements $ItemEventCopyWith<$Res> {
  factory $ItemAddedCopyWith(ItemAdded value, $Res Function(ItemAdded) _then) = _$ItemAddedCopyWithImpl;
@useResult
$Res call({
 String name, String unit, String? barcode, String? description
});




}
/// @nodoc
class _$ItemAddedCopyWithImpl<$Res>
    implements $ItemAddedCopyWith<$Res> {
  _$ItemAddedCopyWithImpl(this._self, this._then);

  final ItemAdded _self;
  final $Res Function(ItemAdded) _then;

/// Create a copy of ItemEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? unit = null,Object? barcode = freezed,Object? description = freezed,}) {
  return _then(ItemAdded(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ItemUpdated implements ItemEvent {
  const ItemUpdated({required this.id, required this.name, required this.unit, this.barcode, this.description});
  

 final  int id;
 final  String name;
 final  String unit;
 final  String? barcode;
 final  String? description;

/// Create a copy of ItemEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemUpdatedCopyWith<ItemUpdated> get copyWith => _$ItemUpdatedCopyWithImpl<ItemUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemUpdated&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,unit,barcode,description);

@override
String toString() {
  return 'ItemEvent.updated(id: $id, name: $name, unit: $unit, barcode: $barcode, description: $description)';
}


}

/// @nodoc
abstract mixin class $ItemUpdatedCopyWith<$Res> implements $ItemEventCopyWith<$Res> {
  factory $ItemUpdatedCopyWith(ItemUpdated value, $Res Function(ItemUpdated) _then) = _$ItemUpdatedCopyWithImpl;
@useResult
$Res call({
 int id, String name, String unit, String? barcode, String? description
});




}
/// @nodoc
class _$ItemUpdatedCopyWithImpl<$Res>
    implements $ItemUpdatedCopyWith<$Res> {
  _$ItemUpdatedCopyWithImpl(this._self, this._then);

  final ItemUpdated _self;
  final $Res Function(ItemUpdated) _then;

/// Create a copy of ItemEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? unit = null,Object? barcode = freezed,Object? description = freezed,}) {
  return _then(ItemUpdated(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ItemDeleted implements ItemEvent {
  const ItemDeleted({required this.id});
  

 final  int id;

/// Create a copy of ItemEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemDeletedCopyWith<ItemDeleted> get copyWith => _$ItemDeletedCopyWithImpl<ItemDeleted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemDeleted&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ItemEvent.deleted(id: $id)';
}


}

/// @nodoc
abstract mixin class $ItemDeletedCopyWith<$Res> implements $ItemEventCopyWith<$Res> {
  factory $ItemDeletedCopyWith(ItemDeleted value, $Res Function(ItemDeleted) _then) = _$ItemDeletedCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$ItemDeletedCopyWithImpl<$Res>
    implements $ItemDeletedCopyWith<$Res> {
  _$ItemDeletedCopyWithImpl(this._self, this._then);

  final ItemDeleted _self;
  final $Res Function(ItemDeleted) _then;

/// Create a copy of ItemEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(ItemDeleted(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
