// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../presentation/resources/app_textstyle.dart';
import '../presentation/resources/resources.dart';

class AuthTextField extends StatefulWidget {
  final TextEditingController controller;
  final TextCapitalization? capitalize;
  final TextInputType inputType;
  final String hint;
  final IconData prefixIcon;
  final String? error;
  final String? Function(String?)? validFunction;
  final Function(String)? onSavedFunction;
  final bool? isPassword;
  const AuthTextField({
    Key? key,
    this.capitalize = TextCapitalization.sentences,
    required this.hint,
    required this.prefixIcon,
    required this.controller,
    required this.inputType,
    this.error,
    required this.validFunction,
    this.onSavedFunction,
    this.isPassword = false,
    //required this.validator,
  }) : super(key: key);

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  late bool obscureText;
  @override
  void initState() {
    obscureText = widget.isPassword == true ? true : false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kTextFieldFillColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: TextFormField(
        textCapitalization: widget.capitalize ?? TextCapitalization.sentences,
        controller: widget.controller,
        validator: widget.validFunction,
        onChanged: widget.onSavedFunction,
        keyboardType: widget.inputType,
        showCursor: true,
        cursorColor: kPrimaryColor,
        obscureText: obscureText,
        //validator: validator,
        style: const TextStyle(
          color: kBlackColor,
          fontSize: 14,
        ),
        decoration: InputDecoration(
          filled: false,
          fillColor: kPrimaryColor,
          hintText: widget.hint,
          hintStyle:
              const TextStyle(color: Colors.black54, fontWeight: FontWeight.normal
                  // fontFamily: "Booing",
                  ),
          errorStyle: TextStyle(
            fontSize: 10,
          ),
          suffix: widget.isPassword == true
              ? InkWell(
                  onTap: () {
                    obscureText = !obscureText;
                    setState(() {});
                    FocusScope.of(context).unfocus();
                  },
                  child: Text(
                    obscureText == true ? 'Show' : 'Hide',
                    style: bodySmallText(context)
                        .copyWith(color: kTextColor),
                  ),
                )
              : const SizedBox(),
          // prefixIcon: Icon(
          //   prefixIcon,
          //   color: kBlackColor,
          // ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20 - 10),
              borderSide: BorderSide(color: kTextFieldFillColor)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20 - 10),
              borderSide: BorderSide(color: kTextFieldFillColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20 - 10),
              borderSide: const BorderSide(color: kPrimaryColor)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20 - 10),
              borderSide: BorderSide(color: kTextFieldFillColor)),
        ),
      ),
    );
  }
}
