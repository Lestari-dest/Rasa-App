import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:rasa_app/core/routers/router_name.dart';
import 'package:rasa_app/core/utils/assets.gen.dart';
import 'package:rasa_app/core/utils/constant/app_colors.dart';
import 'package:rasa_app/core/utils/extensions/build_context_ext.dart';

class Onboarding1Page extends StatelessWidget {
  const Onboarding1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Gap(context.deviceHeight * 0.05),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Selamat Datang',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.w300,
                      fontSize: 30,
                      letterSpacing: 5,
                    ),
              ),
            ),
            Gap(context.deviceHeight * 0.01),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Rasa',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      letterSpacing: 10,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
            Gap(20),
            Image.asset(
              Assets.images.imgRasa.path,
            ),
            Gap(20),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Tempat Curhat aman',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.w300,
                      fontSize: 30,
                    ),
              ),
            ),
            Gap(10),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Tanpa Dihakimi',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                    ),
              ),
            ),
            Gap(10),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Seperti Sahabat Yang',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.w300,
                      fontSize: 30,
                    ),
              ),
            ),
            Gap(10),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Memahami Hatimus',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.w300,
                      fontSize: 30,
                    ),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () => context.pushNamed(RouteName.onboarding2),
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: AppColor.buttonOnboardingColor,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(
                    Icons.arrow_forward,
                    size: 30,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
