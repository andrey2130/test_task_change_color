import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task_change_color/feature/data/repo_impl/home_repo_impl.dart';
import 'package:test_task_change_color/feature/domain/usecases/change_background_color.dart';
import 'package:test_task_change_color/feature/domain/usecases/change_counter_usecase.dart';
import 'package:test_task_change_color/feature/domain/usecases/get_color_history.dart';
import 'package:test_task_change_color/feature/home/bloc/home_bloc.dart';
import 'package:test_task_change_color/feature/home/presentation/pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final homeRepo = HomeRepoImpl();
    return BlocProvider(
      create: (context) => HomeBloc(
        homeRepo: homeRepo,
        changeBackgroundColorUseCase: ChangeBackgroundColorUseCase(homeRepo),
        changeCounterUseCase: ChangeCounterUseCase(homeRepo),
        getColorHistoryUseCase: GetColorHistoryUseCase(homeRepo),
      ),
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
