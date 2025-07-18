import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:rasa_app/core/helpers/widgets/buttons.dart';
import 'package:rasa_app/core/helpers/widgets/custom_text_field.dart';
import 'package:rasa_app/core/routers/router_name.dart';
import 'package:rasa_app/core/utils/constant/app_colors.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Forget Password',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 40,
                        ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              const Gap(10),
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
              CustomTextField(
                controller: emailController,
                hintText: 'Enter Your Email',
                prefixIcon: const Icon(
                  Icons.email_outlined,
                  color: AppColor.prefixColor,
                ),
              ),
              const Gap(40),
              Button.filled(
                borderRadius: 14,
                onPressed: () {
                  context.goNamed(RouteName.resetPassword);
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
