import 'package:dating_app/core/theme/custom_colors.dart';
import 'package:dating_app/core/theme/custom_textstyle.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
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
            RichText(
              text: TextSpan(
                  text: "Sign up with ",
                  style: CustomTextstyle.title.copyWith(
                    decoration: TextDecoration.none,
                    decorationThickness: 5,
                    decorationColor: CustomColors.primaryColor,
                    color: CustomColors.black,
                  ),
                  children: [
                    TextSpan(
                        text: "Email",
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
                  "Get chatting with friends and family today by signing up for our chat app!",
                  textAlign: TextAlign.center,
                  style: CustomTextstyle.caption.copyWith(
                    decoration: TextDecoration.none,
                    decorationThickness: 5,
                    decorationColor: CustomColors.primaryColor,
                  )),
            ),
            Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Text("Name"),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Name is required";
                        } else if (value.length < 3) {
                          return "Enter a valid name";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Enter Your Email",
                      ),
                    ),
                    Text("Email"),
                    TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Confirm Password is required";
                        } else if (value != passwordController.text) {
                          return "Password must be Equal Confirm password";
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
