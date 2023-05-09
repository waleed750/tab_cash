import 'package:dartz/dartz.dart';

import 'package:tab_cash_orange/core/errors/failure.dart';
import 'package:tab_cash_orange/core/usecases/usecases.dart';
import 'package:tab_cash_orange/features/authentication/domain/repo/authentication_repo.dart';

class FingerprintUseCase extends UseCase<bool, NoParams> {
  AuthenticationRepo authenticationRepo;
  FingerprintUseCase({
    required this.authenticationRepo,
  });
  @override
  Future<Either<Failure, bool>> call(NoParams params) {
    return authenticationRepo.fingerprintLogin();
  }

}
