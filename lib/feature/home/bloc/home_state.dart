part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial({
    required Color backgroundColor,
    required int tapCounter,
    required List<Color> colorsHistory,
  }) = HomeInitialState;
}
