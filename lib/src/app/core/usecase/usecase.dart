import 'package:dartz/dartz.dart';
import 'package:flutter_mini_projet_omar/src/app/core/error/failures.dart';

abstract class Usecase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}