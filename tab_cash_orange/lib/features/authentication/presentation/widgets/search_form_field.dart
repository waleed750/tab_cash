import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hexcolor/hexcolor.dart';

class SearchFormField extends StatelessWidget {
  final TextEditingController controller;
  bool obscureText;
  // final Function validator;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final double? width;
  final double? height;
  final String hintText; 
  final TextInputType type;

   SearchFormField({
    super.key,
     this.obscureText = false,
      this.height,
      this.type = TextInputType.text,
      this.width,
      // required this.validator,
      this.prefixIcon = const Icon(Icons.person),
      this.suffixIcon,
      this.hintText = '', 
      required this.controller,
    });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: height,
        width: width,
        child: TextFormField(
          maxLines: 1,
          controller: controller,
          obscureText: obscureText,
          cursorColor: HexColor("#5A5A5A"),
          keyboardType: type,
          // validator: (value) => validator(value),
          decoration: InputDecoration(
            fillColor: Colors.white,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            hintText: hintText,
            hintStyle: TextStyle(
                color: HexColor("#5A5A5A"),
                 fontSize: 15,
                  fontWeight: FontWeight.w500,
                  height: 3
                  ),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}