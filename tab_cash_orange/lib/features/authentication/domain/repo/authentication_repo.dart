import 'package:dartz/dartz.dart';
import 'package:tab_cash_orange/core/errors/failure.dart';
import 'package:tab_cash_orange/features/authentication/domain/entities/user.dart';

abstract class AuthenticationRepo{
    Future<Either<Failure , User>> login(String name, String password);
    Future<Either<Failure , bool>> fingerprintLogin();
    Future<Either<Failure , User>> signup(String mobile);
}