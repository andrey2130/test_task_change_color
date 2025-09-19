part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.changeBackgroundColor() = ChangeBackgroundColorEvent;
  const factory HomeEvent.incrementTapCounter() = IncrementTapCounterEvent;
  const factory HomeEvent.loadColorsHistory() = LoadColorsHistoryEvent;
}
