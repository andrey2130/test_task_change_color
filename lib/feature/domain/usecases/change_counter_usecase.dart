import 'package:test_task_change_color/core/usecases/usecase.dart';
import 'package:test_task_change_color/feature/domain/home_repo/home_repo.dart';

class ChangeCounterUseCase implements UseCase<NoParams> {
  final HomeRepo _homeRepo;

  ChangeCounterUseCase(this._homeRepo);

  @override
  Future call(NoParams params) async {
    try {
      await _homeRepo.incrementTapCounter();
      return _homeRepo.tapCounter;
    } catch (e) {
      throw Exception(e);
    }
  }
}
