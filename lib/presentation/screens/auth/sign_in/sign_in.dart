// ignore_for_file: prefer_const_constructors
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:interview/components/text.dart';
import 'package:interview/presentation/resources/resources.dart';
import 'package:interview/services/extensions.dart';
import '../../../../components/auth_textfield.dart';
import '../../../resources/app_textstyle.dart';
import 'controller/auth_controller.dart';

class SignIn extends StatefulWidget {
  final bool? isFacility;
  final String? accountType;
  final String? facilityType;
  const SignIn({Key? key, this.isFacility, this.accountType, this.facilityType})
      : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  bool _loading = false;

  var authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var authController = Get.find<AuthController>();

    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(22.0),
          child: LayoutBuilder(builder: (context, constraints) {
            return Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: Stack(
                children: [
                  SafeArea(
                    child: Container(
                      width: size.width,
                      height: size.height * 1.0,
                      margin: EdgeInsets.only(top: size.height * 0.034),
                      //padding: const EdgeInsets.all(18),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                                'assets/svg/Icon ionic-ios-arrow-round-back.svg'),
                            kLargeVerticalSpacing,
                            Text("Login",
                                style: heading1(context).copyWith(
                                  color: kTextColor,
                                  fontSize: 25,
                                )),
                            SizedBox(height: size.height * 0.04),
                            AuthTextField(
                              hint: "Email /Username / Phone",
                              prefixIcon: Icons.lock,
                              controller: authController.emailController,
                              inputType: TextInputType.emailAddress,
                              // error: authController.error.value,
                              validFunction: (value) {
                                if (!value!.isValidUsername()) {
                                  authController.email.value = value;
                                  return 'Not valid';
                                } else {
                                  return null;
                                }
                              },
                              onSavedFunction: (s) => {
                                if (s.isValidEmail())
                                  {
                                    authController.email.value = s,
                                  }
                                else
                                  {
                                    authController.email.value = s,
                                  }
                              },
                            ),
                            SizedBox(height: size.height * 0.01),
                            AuthTextField(
                              hint: "Password",
                              prefixIcon: Icons.lock,
                              controller: authController.passwordController,
                              inputType: TextInputType.visiblePassword,
                              // error: authController.error1.value,
                              isPassword: true,
                              validFunction: (value) {
                                if (!value!.isValidPassword()) {
                                  return 'Password not less than 8 characters in length';
                                } else {
                                  return null;
                                }
                              },
                              onSavedFunction: (s) => {
                                if (s.isValidPassword())
                                  {
                                    authController.password.value = s,
                                  }
                                else
                                  {
                                    authController.password.value = s,
                                  }
                              },
                            ),
                            SizedBox(height: size.height * 0.04),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (ctx) => SignIn()));
                              },
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Forgot password?",
                                  style: bodySmallText(context).copyWith(),
                                ),
                              ),
                            ),
                            //const Spacer(),

                            kLargeVerticalSpacing,
                            SizedBox(height: size.height * 0.05),
                            GestureDetector(
                              onTap: () async {
                                if (_formKey.currentState!.validate()) {
                                  setState(() {
                                    _loading = true;
                                  });
                                  await Future.value(authController.signIn());
                                  setState(() {
                                    _loading = false;
                                  });
                                }
                              },
                              child: Container(
                                height: 60,
                                width: size.width,
                                decoration: BoxDecoration(
                                    color: _loading == true
                                        ? kPrimaryColor.withOpacity(0.4)
                                        : kPrimaryColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: _loading == true
                                      ? SizedBox(
                                          height: 30,
                                          width: 30,
                                          child:
                                              const CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                                    kWhiteColor),
                                            strokeWidth: 1,
                                          ),
                                        )
                                      : const CText(
                                          text: "Sign in My Account",
                                          // fontWeight: FontWeight.w400,
                                          size: 16,
                                          color: kWhiteColor,
                                        ),
                                ),
                              ),
                            ),
                            kSmallVerticalSpacing,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                CText(
                                  text: "Don't have an account?",
                                  fontWeight: FontWeight.w500,
                                  size: 12,
                                  color: kTextColor,
                                ),
                                CText(
                                  text: "- Sign up",
                                  fontWeight: FontWeight.w500,
                                  size: 14,
                                  color: kTextColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          })),
    );
  }
}
