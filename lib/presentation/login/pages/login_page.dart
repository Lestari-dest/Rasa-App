import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:rasa_app/core/helpers/widgets/buttons.dart';
import 'package:rasa_app/core/helpers/widgets/custom_text_field.dart';
import 'package:rasa_app/core/routers/router_name.dart';
import 'package:rasa_app/core/utils/constant/app_colors.dart';

final passwordVisibleProvider = StateProvider<bool>((ref) => false);

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  @override
  void dispose() {
    // Always dispose controllers when they are no longer needed
    passwordController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isPasswordVisible = ref.watch(passwordVisibleProvider);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: AppColor.primaryWhite,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: AppColor.textColor,
                    size: 20,
                  ),
                  onPressed: () => context.pop(),
                ),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Login your',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 40,
                        ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Account',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 40,
                        ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              const Gap(40),
              CustomTextField(
                controller: emailController,
                hintText: 'Enter Your Email',
                prefixIcon: const Icon(
                  Icons.email_outlined,
                  color: AppColor.prefixColor,
                ),
              ),
              const Gap(20),
              CustomTextField(
                controller: passwordController,
                hintText: 'Password',
                prefixIcon: const Icon(
                  Icons.lock_outline,
                  color: AppColor.prefixColor,
                ),
                obscureText: !isPasswordVisible,
                suffixIcon: IconButton(
                  icon: Icon(
                    isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    color: AppColor.prefixColor,
                  ),
                  onPressed: () {
                    // Toggle password visibility state
                    ref.read(passwordVisibleProvider.notifier).state =
                        !isPasswordVisible;
                  },
                ),
              ),
              const Gap(40),
              Button.filled(
                borderRadius: 10,
                onPressed: () {
                  // Handle login action
                },
                label: 'Login',
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () => context.pushNamed(RouteName.forgotPassword),
                  child: Text(
                    'Forgot Password?',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColor.textSecondaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
              const Gap(20),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Create New Account? ',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColor.textSecondaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    GestureDetector(
                      onTap: () => context.pushNamed(RouteName.register),
                      child: Text(
                        'Sign up',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: AppColor.buttonColor,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
