
import 'package:dartz/dartz.dart';
import 'package:tab_cash_orange/features/splash/domain/repositories/lang_repo.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failure.dart';
import '../datasources/lang_local_data_source.dart';

class LangRepoImpl extends LangRepo{
  final LangLocalDataSource langLocalDataSource;

  LangRepoImpl({required this.langLocalDataSource});

  @override
  Future<Either<Failure, String>> GetLang()async {
    try{
      final response = await langLocalDataSource.getSavedLanguageCode();
      return Right(response);
    }on CacheException{
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> changeLang(String lang) async{
    try{
      final response = await langLocalDataSource.changeLanguageCode(langCode: lang);
      return Right(response);
    }on CacheException{
      return Left(CacheFailure());
    }
  }

}