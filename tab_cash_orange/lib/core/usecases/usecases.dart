import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../errors/failure.dart';

abstract class UseCase<Type,Param> {

  Future<Either<Failure , Type>> call(Param params);
}

class NoParams extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

