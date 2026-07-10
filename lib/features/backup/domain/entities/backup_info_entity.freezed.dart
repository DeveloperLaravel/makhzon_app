// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backup_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BackupInfoEntity {

 String get filePath; String get fileName; DateTime get createdAt; int get warehousesCount; int get itemsCount; int get stocksCount; int get issuesCount; int get transfersCount;
/// Create a copy of BackupInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BackupInfoEntityCopyWith<BackupInfoEntity> get copyWith => _$BackupInfoEntityCopyWithImpl<BackupInfoEntity>(this as BackupInfoEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupInfoEntity&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.warehousesCount, warehousesCount) || other.warehousesCount == warehousesCount)&&(identical(other.itemsCount, itemsCount) || other.itemsCount == itemsCount)&&(identical(other.stocksCount, stocksCount) || other.stocksCount == stocksCount)&&(identical(other.issuesCount, issuesCount) || other.issuesCount == issuesCount)&&(identical(other.transfersCount, transfersCount) || other.transfersCount == transfersCount));
}


@override
int get hashCode => Object.hash(runtimeType,filePath,fileName,createdAt,warehousesCount,itemsCount,stocksCount,issuesCount,transfersCount);

@override
String toString() {
  return 'BackupInfoEntity(filePath: $filePath, fileName: $fileName, createdAt: $createdAt, warehousesCount: $warehousesCount, itemsCount: $itemsCount, stocksCount: $stocksCount, issuesCount: $issuesCount, transfersCount: $transfersCount)';
}


}

/// @nodoc
abstract mixin class $BackupInfoEntityCopyWith<$Res>  {
  factory $BackupInfoEntityCopyWith(BackupInfoEntity value, $Res Function(BackupInfoEntity) _then) = _$BackupInfoEntityCopyWithImpl;
@useResult
$Res call({
 String filePath, String fileName, DateTime createdAt, int warehousesCount, int itemsCount, int stocksCount, int issuesCount, int transfersCount
});




}
/// @nodoc
class _$BackupInfoEntityCopyWithImpl<$Res>
    implements $BackupInfoEntityCopyWith<$Res> {
  _$BackupInfoEntityCopyWithImpl(this._self, this._then);

  final BackupInfoEntity _self;
  final $Res Function(BackupInfoEntity) _then;

/// Create a copy of BackupInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filePath = null,Object? fileName = null,Object? createdAt = null,Object? warehousesCount = null,Object? itemsCount = null,Object? stocksCount = null,Object? issuesCount = null,Object? transfersCount = null,}) {
  return _then(_self.copyWith(
filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,fileName: null == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,warehousesCount: null == warehousesCount ? _self.warehousesCount : warehousesCount // ignore: cast_nullable_to_non_nullable
as int,itemsCount: null == itemsCount ? _self.itemsCount : itemsCount // ignore: cast_nullable_to_non_nullable
as int,stocksCount: null == stocksCount ? _self.stocksCount : stocksCount // ignore: cast_nullable_to_non_nullable
as int,issuesCount: null == issuesCount ? _self.issuesCount : issuesCount // ignore: cast_nullable_to_non_nullable
as int,transfersCount: null == transfersCount ? _self.transfersCount : transfersCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [BackupInfoEntity].
extension BackupInfoEntityPatterns on BackupInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BackupInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BackupInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BackupInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _BackupInfoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BackupInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BackupInfoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String filePath,  String fileName,  DateTime createdAt,  int warehousesCount,  int itemsCount,  int stocksCount,  int issuesCount,  int transfersCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BackupInfoEntity() when $default != null:
return $default(_that.filePath,_that.fileName,_that.createdAt,_that.warehousesCount,_that.itemsCount,_that.stocksCount,_that.issuesCount,_that.transfersCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String filePath,  String fileName,  DateTime createdAt,  int warehousesCount,  int itemsCount,  int stocksCount,  int issuesCount,  int transfersCount)  $default,) {final _that = this;
switch (_that) {
case _BackupInfoEntity():
return $default(_that.filePath,_that.fileName,_that.createdAt,_that.warehousesCount,_that.itemsCount,_that.stocksCount,_that.issuesCount,_that.transfersCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String filePath,  String fileName,  DateTime createdAt,  int warehousesCount,  int itemsCount,  int stocksCount,  int issuesCount,  int transfersCount)?  $default,) {final _that = this;
switch (_that) {
case _BackupInfoEntity() when $default != null:
return $default(_that.filePath,_that.fileName,_that.createdAt,_that.warehousesCount,_that.itemsCount,_that.stocksCount,_that.issuesCount,_that.transfersCount);case _:
  return null;

}
}

}

/// @nodoc


class _BackupInfoEntity implements BackupInfoEntity {
  const _BackupInfoEntity({required this.filePath, required this.fileName, required this.createdAt, required this.warehousesCount, required this.itemsCount, required this.stocksCount, required this.issuesCount, required this.transfersCount});
  

@override final  String filePath;
@override final  String fileName;
@override final  DateTime createdAt;
@override final  int warehousesCount;
@override final  int itemsCount;
@override final  int stocksCount;
@override final  int issuesCount;
@override final  int transfersCount;

/// Create a copy of BackupInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BackupInfoEntityCopyWith<_BackupInfoEntity> get copyWith => __$BackupInfoEntityCopyWithImpl<_BackupInfoEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BackupInfoEntity&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.warehousesCount, warehousesCount) || other.warehousesCount == warehousesCount)&&(identical(other.itemsCount, itemsCount) || other.itemsCount == itemsCount)&&(identical(other.stocksCount, stocksCount) || other.stocksCount == stocksCount)&&(identical(other.issuesCount, issuesCount) || other.issuesCount == issuesCount)&&(identical(other.transfersCount, transfersCount) || other.transfersCount == transfersCount));
}


@override
int get hashCode => Object.hash(runtimeType,filePath,fileName,createdAt,warehousesCount,itemsCount,stocksCount,issuesCount,transfersCount);

@override
String toString() {
  return 'BackupInfoEntity(filePath: $filePath, fileName: $fileName, createdAt: $createdAt, warehousesCount: $warehousesCount, itemsCount: $itemsCount, stocksCount: $stocksCount, issuesCount: $issuesCount, transfersCount: $transfersCount)';
}


}

/// @nodoc
abstract mixin class _$BackupInfoEntityCopyWith<$Res> implements $BackupInfoEntityCopyWith<$Res> {
  factory _$BackupInfoEntityCopyWith(_BackupInfoEntity value, $Res Function(_BackupInfoEntity) _then) = __$BackupInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 String filePath, String fileName, DateTime createdAt, int warehousesCount, int itemsCount, int stocksCount, int issuesCount, int transfersCount
});




}
/// @nodoc
class __$BackupInfoEntityCopyWithImpl<$Res>
    implements _$BackupInfoEntityCopyWith<$Res> {
  __$BackupInfoEntityCopyWithImpl(this._self, this._then);

  final _BackupInfoEntity _self;
  final $Res Function(_BackupInfoEntity) _then;

/// Create a copy of BackupInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filePath = null,Object? fileName = null,Object? createdAt = null,Object? warehousesCount = null,Object? itemsCount = null,Object? stocksCount = null,Object? issuesCount = null,Object? transfersCount = null,}) {
  return _then(_BackupInfoEntity(
filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,fileName: null == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,warehousesCount: null == warehousesCount ? _self.warehousesCount : warehousesCount // ignore: cast_nullable_to_non_nullable
as int,itemsCount: null == itemsCount ? _self.itemsCount : itemsCount // ignore: cast_nullable_to_non_nullable
as int,stocksCount: null == stocksCount ? _self.stocksCount : stocksCount // ignore: cast_nullable_to_non_nullable
as int,issuesCount: null == issuesCount ? _self.issuesCount : issuesCount // ignore: cast_nullable_to_non_nullable
as int,transfersCount: null == transfersCount ? _self.transfersCount : transfersCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
