import 'package:flutter/material.dart';
import 'package:mobile_developer_test/core/widgets/widgets.dart';

class AuthForm extends StatelessWidget {
  const AuthForm({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
    required this.isLogin,
  });
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: emailController,
            hintText: "Email",
            validateText: 'email',
            suffixIcon: Icons.person_2_outlined,
            keyboardType: TextInputType.emailAddress,
            suffixIconSize: 24,
            isFilled: true,
          ),
          CustomTextFormField(
            controller: passwordController,
            hintText: "Password",
            isSecured: true,
            isFilled: true,
            keyboardType: TextInputType.visiblePassword,
          ),
          if (!isLogin)
            CustomTextFormField(
              controller: confirmPasswordController,
              hintText: "Password",
              isSecured: true,
              isFilled: true,
              keyboardType: TextInputType.visiblePassword,
            ),
        ],
      ),
    );
  }
}
