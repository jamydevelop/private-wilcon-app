import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:go_router/go_router.dart";

import "../domain/cubit/user_login_cubit.dart";
import "../domain/entity/user_login.entity.dart";
import "widgets/auth_img_background.widget.dart";
import "widgets/auth_img_inventi.widget.dart";
import "widgets/auth_login_button.widget.dart";
import "widgets/auth_login_textfield.widget.dart";
import "widgets/auth_signed_in_text.widget.dart";

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SizedBox(
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  const AuthImgBackgroundWidget(),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 12, right: 12, bottom: 16),
                          child: Form(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const SizedBox(height: 24),
                                const AuthSignedInTextWidget(),
                                const SizedBox(height: 24),
                                AuthLoginTextfieldWidget(
                                  controller: emailController,
                                  labelText: "Email Address",
                                ),
                                const SizedBox(height: 24),
                                AuthLoginTextfieldWidget(
                                    isObscure: true,
                                    controller: passwordController,
                                    labelText: "Password"),
                                const SizedBox(height: 24),
                                AuthLoginButtonWidget(onPress: () {
                                  final String email =
                                      emailController.text.trim();
                                  final String password =
                                      passwordController.text.trim();

                                  // Create UserLoginModel and pass it to the login method
                                  final UserLoginEntity userLoginEntity =
                                      UserLoginEntity(
                                    emailValue: email,
                                    passwordValue: password,
                                  );

                                  context
                                      .read<UserLoginCubit>()
                                      .login(userLoginEntity)
                                      .then((bool res) {
                                    if (res) {
                                      //print("responding ${res}");
                                      // ignore: use_build_context_synchronously
                                      GoRouter.of(context).go("/home-page");
                                    }
                                  });
                                }),
                                const SizedBox(height: 24),
                                const SizedBox(width: 99, height: 16),
                                const AuthImgInventiWidget(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    // NOTE: Calling this function here would crash the app.
    context.read<UserLoginCubit>().getUserID().then((int res) {
      if (res > -1) {
        debugPrint("reriuting");
        // ignore: use_build_context_synchronously
        GoRouter.of(context).go("/home-page");
      }
    });
  }
}
