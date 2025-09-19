import 'package:test_task_change_color/core/usecases/usecase.dart';
import 'package:test_task_change_color/feature/domain/home_repo/home_repo.dart';

class ChangeBackgroundColorUseCase implements UseCase<NoParams> {
  final HomeRepo _homeRepo;

  ChangeBackgroundColorUseCase(this._homeRepo);

  @override
  Future call(NoParams params) async {
    try {
      final newColor = await _homeRepo.changeBackgroundColor();
      return newColor;
    } catch (e) {
      throw Exception(e);
    }
  }
}
