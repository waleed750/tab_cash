// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:tab_cash_orange/core/errors/failure.dart';
import 'package:tab_cash_orange/core/usecases/usecases.dart';
import 'package:tab_cash_orange/features/authentication/domain/repo/authentication_repo.dart';

import '../entities/user.dart';

class Login extends UseCase<User,Map<String,dynamic>> {
  AuthenticationRepo authenticationRepo;
  Login({
    required this.authenticationRepo,
  });
  @override
  Future<Either<Failure, User>> call(Map<String,dynamic> params) {
    return authenticationRepo.login(params['name'], params['password']);
  }

}
