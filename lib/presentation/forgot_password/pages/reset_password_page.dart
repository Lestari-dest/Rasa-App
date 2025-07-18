import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:rasa_app/core/helpers/widgets/buttons.dart';
import 'package:rasa_app/core/helpers/widgets/custom_text_field.dart';
import 'package:rasa_app/core/routers/router_name.dart';
import 'package:rasa_app/core/utils/constant/app_colors.dart';

final passwordVisibleProvider = StateProvider<bool>((ref) => false);
final confirmPasswordVisibleProvider = StateProvider<bool>((ref) => false);

class ResetPasswordPage extends ConsumerWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch visibility state for both password fields
    final isPasswordVisible = ref.watch(passwordVisibleProvider);
    final isConfirmPasswordVisible = ref.watch(confirmPasswordVisibleProvider);

    // Controllers for text fields
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back Button
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

              // Page Title
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Reset Password',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 40,
                        ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              const Gap(10),

              // Description text
              Text(
                'Select which contact details should we use to reset your password',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: AppColor.textDesciptionForgotPasswordColor,
                    ),
                textAlign: TextAlign.start,
              ),
              const Gap(40),

              // Password Field
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
                    // Toggle password visibility
                    ref.read(passwordVisibleProvider.notifier).state =
                        !isPasswordVisible;
                  },
                ),
              ),
              Gap(40),

              // Confirm Password Field
              CustomTextField(
                controller: confirmPasswordController,
                hintText: 'Confirm Password',
                prefixIcon: const Icon(
                  Icons.lock_outline,
                  color: AppColor.prefixColor,
                ),
                obscureText: !isConfirmPasswordVisible,
                suffixIcon: IconButton(
                  icon: Icon(
                    isConfirmPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: AppColor.prefixColor,
                  ),
                  onPressed: () {
                    // Toggle confirm password visibility
                    ref.read(confirmPasswordVisibleProvider.notifier).state =
                        !isConfirmPasswordVisible;
                  },
                ),
              ),
              const Gap(40),

              // Reset Password Button
              Button.filled(
                borderRadius: 14,
                onPressed: () {
                  context.goNamed(RouteName.welcome);
                },
                label: 'Reset Password',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
