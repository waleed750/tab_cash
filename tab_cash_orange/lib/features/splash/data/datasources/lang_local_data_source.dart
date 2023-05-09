import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/utils/app_strings.dart';
abstract class LangLocalDataSource{
  Future<String> getSavedLanguageCode();
  Future<bool> changeLanguageCode({required String langCode});
}
class LangLocalDataSourceImpl extends LangLocalDataSource{
  final SharedPreferences sharedPreferences;

  LangLocalDataSourceImpl({required this.sharedPreferences});




  @override
  Future<String> getSavedLanguageCode() async =>
    sharedPreferences.containsKey(AppStrings.locale)
      ? sharedPreferences.getString(AppStrings.locale)!
      : AppStrings.englishCode;

  @override
  Future<bool> changeLanguageCode({required String langCode}) async {
      return await sharedPreferences.setString(AppStrings.locale,langCode);
  }
}