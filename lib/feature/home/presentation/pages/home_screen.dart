import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task_change_color/feature/home/bloc/home_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(const HomeEvent.loadColorsHistory());
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
  }

  void _onChangeBackgroundColor() {
    context.read<HomeBloc>().add(const HomeEvent.changeBackgroundColor());
  }

  void _onIncrementTapCounter() {
    context.read<HomeBloc>().add(const HomeEvent.incrementTapCounter());
  }

  void _onLoadColorsHistory() {
    context.read<HomeBloc>().add(const HomeEvent.loadColorsHistory());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            color: state.backgroundColor,
            child: InkWell(
              onTap: () {
                _onChangeBackgroundColor();
                _onIncrementTapCounter();
                _onLoadColorsHistory();
                _animationController.forward();
              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildText(
                      state.backgroundColor,
                      state.tapCounter,
                      state.colorsHistory,
                      state,
                    ),
                    const SizedBox(height: 20),

                    _buildColorHistory(state.colorsHistory),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildText(
    Color color,
    int tapCouter,
    List<Color> colorsHistory,
    HomeState state,
  ) {
    return Column(
      children: [
        Text(
          'Hi there!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: _buildContrastColor(state.backgroundColor),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Tap counter: ${state.tapCounter}',
          style: TextStyle(
            fontSize: 18,
            color: _buildContrastColor(state.backgroundColor),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Colors in history: ${state.colorsHistory.length}',
          style: TextStyle(
            fontSize: 16,
            color: _buildContrastColor(state.backgroundColor),
          ),
        ),
      ],
    );
  }

  Color _buildContrastColor(Color color) {
    return color.computeLuminance() > 0.5 ? Colors.black : Colors.white;
  }

  Widget _buildColorHistory(List<Color> colors) {
    return colors.isNotEmpty
        ? SizedBox(
            height: 20,
            child: ListView.builder(
              itemCount: colors.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 8),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: colors[index],
                    borderRadius: BorderRadius.circular(10),
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          )
        : const SizedBox.shrink();
  }
}
