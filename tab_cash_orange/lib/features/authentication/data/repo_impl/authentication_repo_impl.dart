import 'dart:developer';

import 'package:dartz/dartz.dart';

import 'package:tab_cash_orange/core/errors/exceptions.dart';
import 'package:tab_cash_orange/core/errors/failure.dart';
import 'package:tab_cash_orange/features/authentication/domain/entities/user.dart';
import 'package:tab_cash_orange/features/authentication/domain/repo/authentication_repo.dart';

import '../../../../core/utils/local_atuh_services.dart';
import '../data_sources/local_data_source.dart';

class AuthenticationRepoImpl extends AuthenticationRepo {
  Services localServices;
  LoginDataSource loginDataSource;
  AuthenticationRepoImpl({
    required this.localServices,
    required this.loginDataSource,
  });
  @override
  Future<Either<Failure, bool>> fingerprintLogin() async{
    try{
        await localServices.checkBiometrics();
        await loginDataSource.setLoggedIn();
        var flag = await localServices.authenticate();
        if(!flag){
          throw(UndefinedException(error: 'no fingerprint provided'));
        }
        return Right(flag);
    }catch(e){
      return Left(UndefinedFailure(error: e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> login(String name, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> signup(String mobile) {
    // TODO: implement signup
    throw UnimplementedError();
  }

}
