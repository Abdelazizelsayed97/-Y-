import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yadlo/cache/colors/colors.dart';
import 'package:yadlo/cache/text_styles/text_styles.dart';
import 'package:yadlo/core/buttons/general_button.dart';
import 'package:yadlo/core/di/dependency_injection.dart';
import 'package:yadlo/core/helper/spacing.dart';
import 'package:yadlo/features/auth/domain/entities/login_entites/login_input.dart';
import 'package:yadlo/features/auth/ui/pages/registration_page.dart';
import 'package:yadlo/features/auth/ui/widgets/login_widgets/divider.dart';
import 'package:yadlo/features/auth/ui/widgets/login_widgets/email_and_password_widget.dart';
import 'package:yadlo/features/auth/ui/widgets/login_widgets/login_bloc_listener.dart';
import 'package:yadlo/features/auth/ui/widgets/login_widgets/login_methodes.dart';

import '../../../../../cache/themData/them_data.dart';
import '../../cubit/login_cubit/login_cubit.dart';
import '../../cubit/login_cubit/login_state.dart';
import 'forget_password.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(
        getIt(),
      ),
      child: _LoginPageBody(),
    );
  }
}

class _LoginPageBody extends StatefulWidget {
  @override
  State<_LoginPageBody> createState() => _LoginPageBodyState();
}

class _LoginPageBodyState extends State<_LoginPageBody> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return LoginBlocListener(
      child: Scaffold(
        body: Stack(
          children: [
            const AppThemeData(),
            SafeArea(
              left: false,
              child: Padding(
                padding:  EdgeInsets.all(25.0.h),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 40.h,
                        alignment: Alignment.topLeft,
                        child: const CustomStyle24(
                          text: 'Welcome back',
                          family: 'Somar Sans',
                          color: Color(0xFF0B1A51),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      verticalSpace(40),
                      EmailAndPassword(
                        email: _email,
                        password: _password,
                      ),
                      verticalSpace(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgetPassword()));
                              },
                              child: Text(
                                'Forgot password ?',
                                style: normal10,
                              )),
                        ],
                      ),
                      verticalSpace(20),
                      GeneralButton1(
                          colors: ig3,
                          text: 'Login',
                          width: 180.w,
                          onTap: () {
                            login(context);
                            Center(
                              child: BlocBuilder<LoginCubit, LoginState>(
                                  buildWhen: (previous, current) =>
                                      current is LoadingState,
                                  builder: (context, state) {
                                    return CircularProgressIndicator(
                                      color: ColorsManger.primary,
                                    );
                                  }),
                            );
                          }),
                      verticalSpace(30),
                      const Center(child: CustomDivider()),
                      verticalSpace(30),
                      const CustomStyle24(
                        text: 'Login',
                        fontWeight: FontWeight.w700,
                        family: 'Somar Sans',
                        color: Color(0xFF0B1A51),
                      ),
                      verticalSpace(5),
                      const StyleFont14(
                        text: "Log in with one of the following options",
                        fontWeight: FontWeight.w400,
                        family: 'Somar Sans',
                        color: Color(0x9B0B1A51),
                      ),
                      verticalSpace(30),
                      const LoginMethods(),
                      verticalSpace(37),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account",style: normal14),
                          horizontalSpace(10),
                          InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const RegistrationPage()));
                              },
                              child: Text('Create account',style: bold14underLine,)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void login(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
              input: LoginInput(
            email: _email.text,
            password: _password.text,
          ));
    } else if (!context.read<LoginCubit>().formKey.currentState!.validate()) {
      throw Exception();
    }
    // Navigator.pop(context);
  }
}