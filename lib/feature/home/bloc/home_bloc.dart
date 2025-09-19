import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_task_change_color/core/usecases/usecase.dart';
import 'package:test_task_change_color/feature/domain/home_repo/home_repo.dart';
import 'package:test_task_change_color/feature/domain/usecases/change_background_color.dart';
import 'package:test_task_change_color/feature/domain/usecases/change_counter_usecase.dart';
import 'package:test_task_change_color/feature/domain/usecases/get_color_history.dart';

part 'home_event.dart';
part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ChangeBackgroundColorUseCase _changeBackgroundColorUseCase;
  final ChangeCounterUseCase _changeCounterUseCase;
  final GetColorHistoryUseCase _getColorHistoryUseCase;

  HomeBloc({
    required HomeRepo homeRepo,
    required ChangeBackgroundColorUseCase changeBackgroundColorUseCase,
    required ChangeCounterUseCase changeCounterUseCase,
    required GetColorHistoryUseCase getColorHistoryUseCase,
  }) : _changeBackgroundColorUseCase = changeBackgroundColorUseCase,
       _changeCounterUseCase = changeCounterUseCase,
       _getColorHistoryUseCase = getColorHistoryUseCase,
       super(
         HomeState.initial(
           backgroundColor: Colors.white,
           tapCounter: 0,
           colorsHistory: [],
         ),
       ) {
    on<ChangeBackgroundColorEvent>(_onChangeBackgroundColorEvent);
    on<IncrementTapCounterEvent>(_onIncrementTapCounterEvent);
    on<LoadColorsHistoryEvent>(_onLoadColorsHistoryEvent);
  }

  Future<void> _onChangeBackgroundColorEvent(
    ChangeBackgroundColorEvent event,
    Emitter<HomeState> emit,
  ) async {
    try {
      final newColor = await _changeBackgroundColorUseCase.call(NoParams());
      emit(state.copyWith(backgroundColor: newColor));
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> _onIncrementTapCounterEvent(
    IncrementTapCounterEvent event,
    Emitter<HomeState> emit,
  ) async {
    try {
      await _changeCounterUseCase.call(NoParams());
      final currentCounter = await _changeCounterUseCase.call(NoParams());
      emit(state.copyWith(tapCounter: currentCounter));
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> _onLoadColorsHistoryEvent(
    LoadColorsHistoryEvent event,
    Emitter<HomeState> emit,
  ) async {
    try {
      final colorsHistory = await _getColorHistoryUseCase.call(NoParams());
      emit(state.copyWith(colorsHistory: colorsHistory));
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
