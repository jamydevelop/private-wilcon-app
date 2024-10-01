import "package:bloc/bloc.dart";
import "package:either_dart/either.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:injectable/injectable.dart";
import "../../../../../app/failure/failure.dart";
import "../../entity/random_string/random_string.entity.dart";
import "../../use_case/get_random_string.use_case.dart";

part "get_random_string_cubit.freezed.dart";
part "get_random_string_state.dart";

@injectable
class GetRandomStringCubit extends Cubit<GetRandomStringState> {
  GetRandomStringCubit({
    required GetRandomStringUseCase getRandomStringUseCase,
  })  : _getRandomStringUseCase = getRandomStringUseCase,
        super(const GetRandomStringState.initial());

  final GetRandomStringUseCase _getRandomStringUseCase;

  Future<void> fetch() async {
    emit(const GetRandomStringState.loading());

    final Either<Failure, RandomStringEntity> response =
        await _getRandomStringUseCase();

    if (response.isLeft) {
      emit(const GetRandomStringState.error());
    }

    emit(GetRandomStringState.fulfilled(randomString: response.right.value));
  }
}
