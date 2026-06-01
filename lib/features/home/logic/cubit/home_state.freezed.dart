// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState<$T>()';
}


}

/// @nodoc
class $HomeStateCopyWith<T,$Res>  {
$HomeStateCopyWith(HomeState<T> _, $Res Function(HomeState<T>) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns<T> on HomeState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( SpecializationsLoading<T> value)?  specializationsLoading,TResult Function( SpecializationsSuccess<T> value)?  specializationsSuccess,TResult Function( SpecializationsFailure<T> value)?  specializationsFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecializationsLoading() when specializationsLoading != null:
return specializationsLoading(_that);case SpecializationsSuccess() when specializationsSuccess != null:
return specializationsSuccess(_that);case SpecializationsFailure() when specializationsFailure != null:
return specializationsFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( SpecializationsLoading<T> value)  specializationsLoading,required TResult Function( SpecializationsSuccess<T> value)  specializationsSuccess,required TResult Function( SpecializationsFailure<T> value)  specializationsFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SpecializationsLoading():
return specializationsLoading(_that);case SpecializationsSuccess():
return specializationsSuccess(_that);case SpecializationsFailure():
return specializationsFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( SpecializationsLoading<T> value)?  specializationsLoading,TResult? Function( SpecializationsSuccess<T> value)?  specializationsSuccess,TResult? Function( SpecializationsFailure<T> value)?  specializationsFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecializationsLoading() when specializationsLoading != null:
return specializationsLoading(_that);case SpecializationsSuccess() when specializationsSuccess != null:
return specializationsSuccess(_that);case SpecializationsFailure() when specializationsFailure != null:
return specializationsFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  specializationsLoading,TResult Function( List<SpecializationsData> specializationDataList)?  specializationsSuccess,TResult Function( String error)?  specializationsFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecializationsLoading() when specializationsLoading != null:
return specializationsLoading();case SpecializationsSuccess() when specializationsSuccess != null:
return specializationsSuccess(_that.specializationDataList);case SpecializationsFailure() when specializationsFailure != null:
return specializationsFailure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  specializationsLoading,required TResult Function( List<SpecializationsData> specializationDataList)  specializationsSuccess,required TResult Function( String error)  specializationsFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SpecializationsLoading():
return specializationsLoading();case SpecializationsSuccess():
return specializationsSuccess(_that.specializationDataList);case SpecializationsFailure():
return specializationsFailure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  specializationsLoading,TResult? Function( List<SpecializationsData> specializationDataList)?  specializationsSuccess,TResult? Function( String error)?  specializationsFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecializationsLoading() when specializationsLoading != null:
return specializationsLoading();case SpecializationsSuccess() when specializationsSuccess != null:
return specializationsSuccess(_that.specializationDataList);case SpecializationsFailure() when specializationsFailure != null:
return specializationsFailure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements HomeState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState<$T>.initial()';
}


}




/// @nodoc


class SpecializationsLoading<T> implements HomeState<T> {
  const SpecializationsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationsLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState<$T>.specializationsLoading()';
}


}




/// @nodoc


class SpecializationsSuccess<T> implements HomeState<T> {
  const SpecializationsSuccess(final  List<SpecializationsData> specializationDataList): _specializationDataList = specializationDataList;
  

 final  List<SpecializationsData> _specializationDataList;
 List<SpecializationsData> get specializationDataList {
  if (_specializationDataList is EqualUnmodifiableListView) return _specializationDataList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_specializationDataList);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationsSuccessCopyWith<T, SpecializationsSuccess<T>> get copyWith => _$SpecializationsSuccessCopyWithImpl<T, SpecializationsSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationsSuccess<T>&&const DeepCollectionEquality().equals(other._specializationDataList, _specializationDataList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_specializationDataList));

@override
String toString() {
  return 'HomeState<$T>.specializationsSuccess(specializationDataList: $specializationDataList)';
}


}

/// @nodoc
abstract mixin class $SpecializationsSuccessCopyWith<T,$Res> implements $HomeStateCopyWith<T, $Res> {
  factory $SpecializationsSuccessCopyWith(SpecializationsSuccess<T> value, $Res Function(SpecializationsSuccess<T>) _then) = _$SpecializationsSuccessCopyWithImpl;
@useResult
$Res call({
 List<SpecializationsData> specializationDataList
});




}
/// @nodoc
class _$SpecializationsSuccessCopyWithImpl<T,$Res>
    implements $SpecializationsSuccessCopyWith<T, $Res> {
  _$SpecializationsSuccessCopyWithImpl(this._self, this._then);

  final SpecializationsSuccess<T> _self;
  final $Res Function(SpecializationsSuccess<T>) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? specializationDataList = null,}) {
  return _then(SpecializationsSuccess<T>(
null == specializationDataList ? _self._specializationDataList : specializationDataList // ignore: cast_nullable_to_non_nullable
as List<SpecializationsData>,
  ));
}


}

/// @nodoc


class SpecializationsFailure<T> implements HomeState<T> {
  const SpecializationsFailure({required this.error});
  

 final  String error;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationsFailureCopyWith<T, SpecializationsFailure<T>> get copyWith => _$SpecializationsFailureCopyWithImpl<T, SpecializationsFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationsFailure<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'HomeState<$T>.specializationsFailure(error: $error)';
}


}

/// @nodoc
abstract mixin class $SpecializationsFailureCopyWith<T,$Res> implements $HomeStateCopyWith<T, $Res> {
  factory $SpecializationsFailureCopyWith(SpecializationsFailure<T> value, $Res Function(SpecializationsFailure<T>) _then) = _$SpecializationsFailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$SpecializationsFailureCopyWithImpl<T,$Res>
    implements $SpecializationsFailureCopyWith<T, $Res> {
  _$SpecializationsFailureCopyWithImpl(this._self, this._then);

  final SpecializationsFailure<T> _self;
  final $Res Function(SpecializationsFailure<T>) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SpecializationsFailure<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
