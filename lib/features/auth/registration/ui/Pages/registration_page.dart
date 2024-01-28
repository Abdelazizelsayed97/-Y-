import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yadlo/cache/text_styles/text_styles.dart';
import 'package:yadlo/cache/themData/them_data.dart';
import 'package:yadlo/core/helper/spacing.dart';

import '../../../../../cache/colors/colors.dart';
import '../../../../../core/buttons/general_button.dart';
import '../../../../../core/helper/app_regex.dart';
import '../../../../../core/textForm/custom_textform.dart';
import '../../../login/presentation/pages/auth_accout.dart';
import '../../../login/presentation/pages/login_page.dart';
import '../../../login/presentation/widgets/divider.dart';
import '../../../login/presentation/widgets/login_methodes.dart';
import '../widgets/term_condations.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool value = false;
  bool opsCureText = true;

  late String image = 'assets/images/avatar.png';

  @override
  void initState() {
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: .050,
            child: ThemeDataApp(),
          ),
          Padding(
            padding: EdgeInsets.all(25.h),
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                      height: 40.h,
                      alignment: Alignment.topLeft,
                      child: const CustomStyle24(
                        text: 'Join Yodly',
                        fontWeight: FontWeight.w700,
                        family: 'Somar Sans',
                        color: Color(0xFF0B1A51),
                      )),
                  SizedBox(
                    height: 70.h,
                    width: 70.w,
                    child: CircleAvatar(
                      backgroundImage: const AssetImage(
                        'assets/images/avatar.png',
                      ),
                      child: Image.asset(image),
                    ),
                  ),
                  verticalSpace(40),
                  TextForm(
                    controller: _userName,
                    textHint: 'User name*',
                    icon: const Icon(Icons.mail_outline),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your User Name';
                      }
                      return null;
                    },
                  ),
                  verticalSpace(15.h),
                  TextForm(
                    textHint: 'JohnDeo@gmail.com',
                    icon: const Icon(Icons.mail_outline),
                    controller: _emailController,
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !AppRegex.isEmailValid(value)) {
                        return "Enter a valid Email";
                      }
                      return null;
                    },
                  ),
                  verticalSpace(15.h),
                  TextForm(
                    opsCureText: opsCureText,
                    textHint: 'Password* ',
                    icon: const Icon(Icons.lock_outline),
                    controller: _passwordController,
                    validator: (value) {
                      if (value!.isEmpty||value == null) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            opsCureText = !opsCureText;
                          });
                        },
                        child: Icon(opsCureText
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined)),
                  ),
                  verticalSpace(20),
                  const StyleFont10(
                    text: 'Privacy policy',
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Somar Sans',
                    color: Color(0xFF374053),
                  ),
                  const TermsAndConditions(),
                  verticalSpace(20),
                  GeneralButton1(
                      colors: ig3,
                      text: 'Agree & Register',
                      width: 300.w,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Otp()));
                      }),
                  verticalSpace(30),
                  const CustomDivider(),
                  verticalSpace(20),
                  const CustomStyle12(
                    fontWeight: FontWeight.w400,
                    text: 'Sign up with one of the following options',
                    fontFamily: 'Somar Sans',
                  ),
                  verticalSpace(15),
                  const LoginMethods(),
                  verticalSpace(37),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const StyleFont14(
                        text: 'Aleardy ave an account',
                        family: 'Somar Sans',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF0B1A51),
                      ),
                      horizontalSpace(10),
                      InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                          },
                          child: const StyleFont14(
                            text: 'Login',
                            family: 'Somar Sans',
                            color: Color(0xFF0B1A51),
                            fontWeight: FontWeight.w700,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

