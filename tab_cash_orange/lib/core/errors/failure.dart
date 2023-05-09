import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable{

  @override
  List<Object> get props => [] ;
}

class ServerFailure implements Failure{
  @override
  // TODO: implement props
  List<Object> get props => [];

  @override
  // TODO: implement stringify
  bool? get stringify => throw UnimplementedError();

}
class CacheFailure implements Failure{
  @override
  // TODO: implement props
  List<Object> get props => [];

  @override
  // TODO: implement stringify
  bool? get stringify => throw UnimplementedError();

}

class UndefinedFailure implements Failure {
  String error;
  UndefinedFailure({
    required this.error,
  });
  @override
  // TODO: implement props
  List<Object> get props => [];

  @override
  // TODO: implement stringify
  bool? get stringify => throw UnimplementedError();

}
