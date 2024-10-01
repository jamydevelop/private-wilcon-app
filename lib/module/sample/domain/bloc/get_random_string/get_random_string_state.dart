part of "get_random_string_cubit.dart";

@freezed
class GetRandomStringState with _$GetRandomStringState {
  const factory GetRandomStringState.initial() = _Initial;
  const factory GetRandomStringState.loading() = _Loading;
  const factory GetRandomStringState.error() = _Error;
  const factory GetRandomStringState.fulfilled({
    required String randomString,
  }) = _Fulfilled;
}
