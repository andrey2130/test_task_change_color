abstract class UseCase<Params> {
  Future call(Params params);
}

class NoParams {
  const NoParams();
}
