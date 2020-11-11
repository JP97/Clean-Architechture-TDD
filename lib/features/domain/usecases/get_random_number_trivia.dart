import 'package:dartz/dartz.dart';
import 'package:own_clean_architecture/core/error/failures.dart';
import 'package:own_clean_architecture/core/usecases/usecase.dart';
import 'package:own_clean_architecture/features/domain/entities/number_trivia.dart';
import 'package:own_clean_architecture/features/domain/repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}
