
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecases/usecases.dart';
import '../repositories/lang_repo.dart';

class GetLangUseCase extends UseCase<String , NoParams>{
  final LangRepo langRepo;

  GetLangUseCase({required this.langRepo});

  @override
  Future<Either<Failure, String>> call(NoParams prams) {
    return langRepo.GetLang();
  }
  
}