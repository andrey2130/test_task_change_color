import 'package:test_task_change_color/core/usecases/usecase.dart';
import 'package:test_task_change_color/feature/domain/home_repo/home_repo.dart';

class GetColorHistoryUseCase extends UseCase<NoParams> {
  final HomeRepo _homeRepo;

  GetColorHistoryUseCase(this._homeRepo);

  @override
  Future call(NoParams params) async {
    try {
      final colorsHistory = await _homeRepo.getColorsHistory();
      return colorsHistory;
    } catch (e) {
      throw Exception(e);
    }
  }
}
