
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecases/usecases.dart';
import '../repositories/lang_repo.dart';

class ChangeLangUseCase extends UseCase<bool , String> {
  LangRepo langRepo;

  ChangeLangUseCase({required this.langRepo});

  @override
  Future<Either<Failure, bool>> call(String lang) {
    return langRepo.changeLang(lang);
  }

}