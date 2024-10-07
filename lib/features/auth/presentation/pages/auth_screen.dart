import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_developer_test/config/routes/routes.dart';
import 'package:mobile_developer_test/core/responsive/responsive.dart';
import 'package:mobile_developer_test/core/widgets/widgets.dart';
import 'package:mobile_developer_test/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:mobile_developer_test/features/auth/presentation/widgets/auth_form.dart';
import 'package:mobile_developer_test/generated/assets.gen.dart';
import 'package:mobile_developer_test/service_locator.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _submitForm(BuildContext context, bool isLogin) async {
    if (_formKey.currentState!.validate()) {
      if (!isLogin &&
          _passwordController.text != _confirmPasswordController.text) {
        CustomSnackBar.errorSnackBar("Passwords don't match");
        return;
      }

      final event = isLogin
          ? LoginSubmitted(
              email: _emailController.text,
              password: _passwordController.text,
            )
          : RegisterSubmitted(
              email: _emailController.text,
              password: _passwordController.text,
            );

      context.read<AuthBloc>().add(event);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Assets.images.authBg.provider(),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top -
                      MediaQuery.of(context).padding.bottom,
                ),
                child: BlocProvider(
                  create: (context) => getIt<AuthBloc>(),
                  child: BlocConsumer<AuthBloc, AuthState>(
                    listener: (context, state) {
                      if (state is AuthSuccess) {
                        CacheHelper.setData(
                          key: CacheKeys.userId,
                          value: state.user.id,
                        );
                        CacheHelper.setData(
                          key: CacheKeys.userExists,
                          value: true,
                        );
                        RouteConfigurations.router.refresh();
                      } else if (state is AuthFailure) {
                        CustomSnackBar.errorSnackBar(state.message);
                      }
                    },
                    builder: (context, state) {
                      var isLogin = state.isLogin;
                      var isLoading = state is AuthLoading;

                      return MaxWidthCenter(
                        maxWidth: 400.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            CustomAnimateTo(
                              direction: AnimateDirectionsValues.down,
                              duration: const Duration(milliseconds: 1500),
                              opacityCurve: Curves.easeInOutCubic,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 0.2.sh,
                                    child:
                                        Assets.images.logo.image(width: 300.w),
                                  ),
                                  Text(
                                    isLogin ? 'Welcome Back' : 'Create Account',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            CustomAnimateTo(
                              direction: AnimateDirectionsValues.up,
                              duration: const Duration(milliseconds: 1500),
                              opacityCurve: Curves.easeInOutCubic,
                              child: Column(
                                children: [
                                  SizedBox(height: 32.h),
                                  AuthForm(
                                    formKey: _formKey,
                                    emailController: _emailController,
                                    passwordController: _passwordController,
                                    confirmPasswordController:
                                        _confirmPasswordController,
                                    isLogin: isLogin,
                                  ),
                                  SizedBox(height: 18.h),
                                  CustomButtonText(
                                    title: isLogin ? 'Login' : 'Register',
                                    onPressed: () =>
                                        _submitForm(context, isLogin),
                                    loading: isLoading,
                                    width: double.infinity,
                                  ),
                                  SizedBox(height: 8.h),
                                  TextButton(
                                    onPressed: () {
                                      context
                                          .read<AuthBloc>()
                                          .add(const AuthModeToggled());
                                    },
                                    child: Text(
                                      isLogin
                                          ? 'Don\'t have an account? Register'
                                          : 'Already have an account? Login',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
