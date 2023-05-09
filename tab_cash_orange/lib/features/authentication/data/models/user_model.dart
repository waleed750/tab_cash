import 'package:tab_cash_orange/features/authentication/domain/entities/user.dart';

class UserModel extends User{
  // factory UserModel.fromJson(Map<String,dynamic>){
  //   return UserModel({});
  // }
  UserModel(
    {required super.id, required super.code, required super.name, required super.email, required super.password, required super.mobile, required super.remember_token});
}