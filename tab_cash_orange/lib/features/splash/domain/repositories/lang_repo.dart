import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';

abstract class LangRepo{
  Future<Either<Failure , String>> GetLang();
  Future<Either<Failure , bool>> changeLang(String lang);
}