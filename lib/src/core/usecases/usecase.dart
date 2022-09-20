abstract class UseCase<T, P> {
  Future<T> use({P params});
}
