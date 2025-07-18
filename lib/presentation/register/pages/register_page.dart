import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:rasa_app/core/helpers/widgets/buttons.dart';
import 'package:rasa_app/core/helpers/widgets/custom_text_field.dart';
import 'package:rasa_app/core/routers/router_name.dart';
import 'package:rasa_app/core/utils/constant/app_colors.dart';

final passwordVisibleProvider = StateProvider<bool>((ref) => false);

class RegisterPage extends ConsumerWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPasswordVisible = ref.watch(passwordVisibleProvider);
    final fullNameController = TextEditingController();
    final passwordController = TextEditingController();
    final emailController = TextEditingController();

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
                    'Create your',
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
                controller: fullNameController,
                hintText: 'Full Name',
                prefixIcon: const Icon(
                  Icons.person_outline,
                  color: AppColor.prefixColor,
                ),
              ),
              const Gap(20),
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
              const Gap(20),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Already Have An Account? ',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColor.textSecondaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    GestureDetector(
                      onTap: () => context.pushNamed(RouteName.login),
                      child: Text(
                        'Sign In',
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
