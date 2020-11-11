import 'package:dartz/dartz.dart';
import 'package:own_clean_architecture/core/error/failures.dart';
import 'package:own_clean_architecture/features/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}