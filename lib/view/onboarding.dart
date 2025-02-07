import 'package:dating_app/core/theme/custom_textstyle.dart';
import 'package:dating_app/view/login_page.dart';
import 'package:dating_app/view/widget/social_button.dart';
import 'package:flutter/material.dart';
import 'package:dating_app/core/constants/images_const.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/theme/custom_colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.black,
      body: Center(
          child: Container(
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                      top: 0,
                      child: Image.asset(
                        ImagesConst.onboarding1,
                      )),
                  Column(
                    spacing: 10,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 10,
                        children: [
                          SvgPicture.asset(
                            ImagesConst.logo,
                            width: 20,
                            color: CustomColors.white,
                          ),
                          Text("Chatbox",
                              style: CustomTextstyle.subtitle.copyWith(
                                color: CustomColors.white,
                              ))
                        ],
                      ),
                      Text(
                        "Connect friends",
                        style: CustomTextstyle.subtitle.copyWith(
                          color: CustomColors.white,
                          fontSize: 60,
                        ),
                      ),
                      Text(
                        "easily & quickly",
                        style: CustomTextstyle.subtitle.copyWith(
                          color: CustomColors.white,
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                          "Our chat app is the perfect way to stay connected with friends and family",
                          style: CustomTextstyle.caption.copyWith(
                            fontSize: 18,
                            color: CustomColors.text,
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 20,
                        children: [
                          SocialButton(
                            imagePath: ImagesConst.facebook,
                          ),
                          SocialButton(
                            imagePath: ImagesConst.google,
                          ),
                          SocialButton(imagePath: ImagesConst.apple)
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(child: Divider()),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Or",
                              style: CustomTextstyle.subtitle.copyWith(
                                color: CustomColors.white,
                              ),
                            ),
                          ),
                          Expanded(child: Divider()),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          child: Text(
                            "Sign Up With Mail",
                            style: CustomTextstyle.subtitle.copyWith(
                              color: CustomColors.white,
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Existing Account?",
                            style: CustomTextstyle.subtitle.copyWith(
                              color: CustomColors.white,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            },
                            child: Text(
                              "Log In",
                              style: CustomTextstyle.subtitle.copyWith(
                                color: CustomColors.primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ))),
    );
  }
}
