import 'dart:convert';

class User{
  int? id ; 
  String? name ;
  String? email;
  String? mobile;
  int? code;
  String? password;
  String? remember_token;
  User({
    required this.id ,
    required this.code , 
    required this.name , 
    required this.email , 
    required this.password , 
    required this.mobile , 
    required this.remember_token , 


  });
}

