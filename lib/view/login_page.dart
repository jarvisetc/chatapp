import 'package:dating_app/core/constants/images_const.dart';
import 'package:dating_app/core/theme/custom_colors.dart';
import 'package:dating_app/core/theme/custom_textstyle.dart';
import 'package:dating_app/view/widget/divider_or.dart';
import 'package:dating_app/view/widget/social_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: Center(
          child: Column(children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
            const SizedBox(
              height: 50,
            ),
            Text("Log in to Chatbox"),
            RichText(
              text: TextSpan(
                  text: "Log in",
                  style: CustomTextstyle.title.copyWith(
                    decoration: TextDecoration.underline,
                    decorationThickness: 5,
                    decorationColor: CustomColors.primaryColor,
                    color: CustomColors.black,
                  ),
                  children: [
                    TextSpan(
                        text: "to Chatbox",
                        style: CustomTextstyle.title.copyWith(
                          decoration: TextDecoration.none,
                          decorationThickness: 5,
                          decorationColor: CustomColors.primaryColor,
                        ))
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                  "Welcome back! Sign in using your social account or email to continue us",
                  textAlign: TextAlign.center,
                  style: CustomTextstyle.caption.copyWith(
                    decoration: TextDecoration.none,
                    decorationThickness: 5,
                    decorationColor: CustomColors.primaryColor,
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                SocialButton(
                  imagePath: ImagesConst.facebook,
                  borderColor: CustomColors.black,
                ),
                SocialButton(
                  imagePath: ImagesConst.google,
                  borderColor: CustomColors.black,
                ),
                SocialButton(
                    imagePath: ImagesConst.apple,
                    borderColor: CustomColors.black,
                    imageColor: CustomColors.black),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            DividerOr(
              textColor: Colors.black,
            ),
            Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Text("Email"),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email is required";
                        } else if (!value.contains(".") &&
                            value.contains("0")) {
                          return "Enter a valid email";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Enter Your Email",
                      ),
                    ),
                    Text("Password"),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password is required";
                        } else if (value.length < 6) {
                          return "Password must be greater than 6";
                        } else {
                          return null;
                        }
                      },
                      decoration:
                          InputDecoration(hintText: "Enter Your Password"),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  print("validate");
                }
              },
              child: Text(
                "Log in",
                style: CustomTextstyle.body.copyWith(color: CustomColors.white),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Forget Password?",
              style: CustomTextstyle.body.copyWith(
                color: CustomColors.primaryColor,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
