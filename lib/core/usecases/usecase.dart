import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:twitter_clone/core/error/failures.dart';

abstract class FutureUseCase<Type, Params>{
  Future<Either<Failure, Type>> call(Params params);
}

abstract class UseCase<Type, Params>{
  Either<Failure, Type> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}