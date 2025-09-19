// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChangeBackgroundColorEvent value)?  changeBackgroundColor,TResult Function( IncrementTapCounterEvent value)?  incrementTapCounter,TResult Function( LoadColorsHistoryEvent value)?  loadColorsHistory,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChangeBackgroundColorEvent() when changeBackgroundColor != null:
return changeBackgroundColor(_that);case IncrementTapCounterEvent() when incrementTapCounter != null:
return incrementTapCounter(_that);case LoadColorsHistoryEvent() when loadColorsHistory != null:
return loadColorsHistory(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChangeBackgroundColorEvent value)  changeBackgroundColor,required TResult Function( IncrementTapCounterEvent value)  incrementTapCounter,required TResult Function( LoadColorsHistoryEvent value)  loadColorsHistory,}){
final _that = this;
switch (_that) {
case ChangeBackgroundColorEvent():
return changeBackgroundColor(_that);case IncrementTapCounterEvent():
return incrementTapCounter(_that);case LoadColorsHistoryEvent():
return loadColorsHistory(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChangeBackgroundColorEvent value)?  changeBackgroundColor,TResult? Function( IncrementTapCounterEvent value)?  incrementTapCounter,TResult? Function( LoadColorsHistoryEvent value)?  loadColorsHistory,}){
final _that = this;
switch (_that) {
case ChangeBackgroundColorEvent() when changeBackgroundColor != null:
return changeBackgroundColor(_that);case IncrementTapCounterEvent() when incrementTapCounter != null:
return incrementTapCounter(_that);case LoadColorsHistoryEvent() when loadColorsHistory != null:
return loadColorsHistory(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  changeBackgroundColor,TResult Function()?  incrementTapCounter,TResult Function()?  loadColorsHistory,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChangeBackgroundColorEvent() when changeBackgroundColor != null:
return changeBackgroundColor();case IncrementTapCounterEvent() when incrementTapCounter != null:
return incrementTapCounter();case LoadColorsHistoryEvent() when loadColorsHistory != null:
return loadColorsHistory();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  changeBackgroundColor,required TResult Function()  incrementTapCounter,required TResult Function()  loadColorsHistory,}) {final _that = this;
switch (_that) {
case ChangeBackgroundColorEvent():
return changeBackgroundColor();case IncrementTapCounterEvent():
return incrementTapCounter();case LoadColorsHistoryEvent():
return loadColorsHistory();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  changeBackgroundColor,TResult? Function()?  incrementTapCounter,TResult? Function()?  loadColorsHistory,}) {final _that = this;
switch (_that) {
case ChangeBackgroundColorEvent() when changeBackgroundColor != null:
return changeBackgroundColor();case IncrementTapCounterEvent() when incrementTapCounter != null:
return incrementTapCounter();case LoadColorsHistoryEvent() when loadColorsHistory != null:
return loadColorsHistory();case _:
  return null;

}
}

}

/// @nodoc


class ChangeBackgroundColorEvent implements HomeEvent {
  const ChangeBackgroundColorEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeBackgroundColorEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.changeBackgroundColor()';
}


}




/// @nodoc


class IncrementTapCounterEvent implements HomeEvent {
  const IncrementTapCounterEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IncrementTapCounterEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.incrementTapCounter()';
}


}




/// @nodoc


class LoadColorsHistoryEvent implements HomeEvent {
  const LoadColorsHistoryEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadColorsHistoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.loadColorsHistory()';
}


}




/// @nodoc
mixin _$HomeState {

 Color get backgroundColor; int get tapCounter; List<Color> get colorsHistory;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.tapCounter, tapCounter) || other.tapCounter == tapCounter)&&const DeepCollectionEquality().equals(other.colorsHistory, colorsHistory));
}


@override
int get hashCode => Object.hash(runtimeType,backgroundColor,tapCounter,const DeepCollectionEquality().hash(colorsHistory));

@override
String toString() {
  return 'HomeState(backgroundColor: $backgroundColor, tapCounter: $tapCounter, colorsHistory: $colorsHistory)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 Color backgroundColor, int tapCounter, List<Color> colorsHistory
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? backgroundColor = null,Object? tapCounter = null,Object? colorsHistory = null,}) {
  return _then(_self.copyWith(
backgroundColor: null == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as Color,tapCounter: null == tapCounter ? _self.tapCounter : tapCounter // ignore: cast_nullable_to_non_nullable
as int,colorsHistory: null == colorsHistory ? _self.colorsHistory : colorsHistory // ignore: cast_nullable_to_non_nullable
as List<Color>,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HomeInitialState value)?  initial,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HomeInitialState() when initial != null:
return initial(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HomeInitialState value)  initial,}){
final _that = this;
switch (_that) {
case HomeInitialState():
return initial(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HomeInitialState value)?  initial,}){
final _that = this;
switch (_that) {
case HomeInitialState() when initial != null:
return initial(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Color backgroundColor,  int tapCounter,  List<Color> colorsHistory)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HomeInitialState() when initial != null:
return initial(_that.backgroundColor,_that.tapCounter,_that.colorsHistory);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Color backgroundColor,  int tapCounter,  List<Color> colorsHistory)  initial,}) {final _that = this;
switch (_that) {
case HomeInitialState():
return initial(_that.backgroundColor,_that.tapCounter,_that.colorsHistory);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Color backgroundColor,  int tapCounter,  List<Color> colorsHistory)?  initial,}) {final _that = this;
switch (_that) {
case HomeInitialState() when initial != null:
return initial(_that.backgroundColor,_that.tapCounter,_that.colorsHistory);case _:
  return null;

}
}

}

/// @nodoc


class HomeInitialState implements HomeState {
  const HomeInitialState({required this.backgroundColor, required this.tapCounter, required final  List<Color> colorsHistory}): _colorsHistory = colorsHistory;
  

@override final  Color backgroundColor;
@override final  int tapCounter;
 final  List<Color> _colorsHistory;
@override List<Color> get colorsHistory {
  if (_colorsHistory is EqualUnmodifiableListView) return _colorsHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_colorsHistory);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeInitialStateCopyWith<HomeInitialState> get copyWith => _$HomeInitialStateCopyWithImpl<HomeInitialState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeInitialState&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.tapCounter, tapCounter) || other.tapCounter == tapCounter)&&const DeepCollectionEquality().equals(other._colorsHistory, _colorsHistory));
}


@override
int get hashCode => Object.hash(runtimeType,backgroundColor,tapCounter,const DeepCollectionEquality().hash(_colorsHistory));

@override
String toString() {
  return 'HomeState.initial(backgroundColor: $backgroundColor, tapCounter: $tapCounter, colorsHistory: $colorsHistory)';
}


}

/// @nodoc
abstract mixin class $HomeInitialStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $HomeInitialStateCopyWith(HomeInitialState value, $Res Function(HomeInitialState) _then) = _$HomeInitialStateCopyWithImpl;
@override @useResult
$Res call({
 Color backgroundColor, int tapCounter, List<Color> colorsHistory
});




}
/// @nodoc
class _$HomeInitialStateCopyWithImpl<$Res>
    implements $HomeInitialStateCopyWith<$Res> {
  _$HomeInitialStateCopyWithImpl(this._self, this._then);

  final HomeInitialState _self;
  final $Res Function(HomeInitialState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? backgroundColor = null,Object? tapCounter = null,Object? colorsHistory = null,}) {
  return _then(HomeInitialState(
backgroundColor: null == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as Color,tapCounter: null == tapCounter ? _self.tapCounter : tapCounter // ignore: cast_nullable_to_non_nullable
as int,colorsHistory: null == colorsHistory ? _self._colorsHistory : colorsHistory // ignore: cast_nullable_to_non_nullable
as List<Color>,
  ));
}


}

// dart format on
