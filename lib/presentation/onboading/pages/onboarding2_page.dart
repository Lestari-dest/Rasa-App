import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:rasa_app/core/routers/router_name.dart';
import 'package:rasa_app/core/utils/assets.gen.dart';
import 'package:rasa_app/core/utils/constant/app_colors.dart';
import 'package:rasa_app/core/utils/extensions/build_context_ext.dart';

class Onboarding2Page extends StatelessWidget {
  const Onboarding2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Stack(
        children: [
          Column(
            children: [
              Gap(context.deviceHeight * 0.05),
              Center(
                child: Image.asset(
                  Assets.images.imgRasa.path,
                  height: 40,
                  width: 40,
                ),
              ),
              Gap(20),
              Text(
                'Saat Emosi',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      letterSpacing: 5,
                    ),
              ),
              Text(
                'Butuh Ruang',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      letterSpacing: 5,
                    ),
              ),
              Gap(context.deviceHeight * 0.3),
              Expanded(
                child: ClipPath(
                  clipper: CurvedTopClipper(),
                  child: Container(
                    width: double.infinity,
                    color: AppColor.buttonColor,
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Gap(context.deviceHeight * 0.08),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Anonim, Aman, Dan',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30,
                                  color: Colors.white,
                                ),
                          ),
                        ),
                        Gap(10),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Semua Perasaan',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30,
                                  color: Colors.white,
                                ),
                          ),
                        ),
                        Gap(10),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Valid Untuk',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30,
                                  color: Colors.white,
                                ),
                          ),
                        ),
                        Gap(10),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Dipahami',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30,
                                  color: Colors.white,
                                ),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () => context.pushNamed(RouteName.onboarding3),
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
                ),
              ),
            ],
          ),
          Positioned(
            top: context.deviceHeight * 0.2,
            left: 0,
            right: 0,
            child: Image.asset(
              Assets.images.onboarding2.path,
            ),
          ),
        ],
      ),
    );
  }
}

class CurvedTopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, 80); // dari kiri atas ke bawah dikit
    path.quadraticBezierTo(
      size.width / 2, 0, // titik kontrol lengkungan di tengah
      size.width, 80, // ke kanan bawah
    );
    path.lineTo(size.width, size.height); // ke bawah
    path.lineTo(0, size.height); // ke kiri bawah
    path.close(); // tutup path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
