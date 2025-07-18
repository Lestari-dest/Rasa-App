import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:rasa_app/core/helpers/widgets/buttons.dart';
import 'package:rasa_app/core/routers/router_name.dart';
import 'package:rasa_app/core/utils/assets.gen.dart';
import 'package:rasa_app/core/utils/constant/app_colors.dart';
import 'package:rasa_app/core/utils/extensions/build_context_ext.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: <Widget>[
              Gap(context.deviceHeight * 0.1),
              Image.asset(
                Assets.images.imgRasa.path,
              ),
              Gap(context.deviceHeight * 0.02),
              Text(
                'Halo,',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 40,
                    ),
              ),
              Text(
                'Rasa Di sini!',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 40,
                    ),
              ),
              Gap(context.deviceHeight * 0.08),
              Button.filled(
                onPressed: () => context.pushNamed(RouteName.login),
                label: 'Log In',
              ),
              Gap(context.deviceHeight * 0.02),
              Button.filled(
                onPressed: () => context.pushNamed(RouteName.register),
                label: 'Sign Up',
                color: AppColor.buttonSecondaryColor,
                textColor: AppColor.buttonColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
