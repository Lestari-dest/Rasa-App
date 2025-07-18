import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rasa_app/core/utils/assets.gen.dart';
import 'package:rasa_app/core/utils/constant/app_colors.dart';
import 'package:rasa_app/presentation/chat_ahli/pages/chat_ahli_page.dart';
import 'package:rasa_app/presentation/chat_bot/pages/chat_bot_page.dart';
import 'package:rasa_app/presentation/komunitas/pages/komunitas_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  final List<Widget> pages = const [
    KomunitasPage(),
    ChatBotPage(),
    ChatAhliPage(),
  ];

  final icons = [
    Assets.navbar.icCommunity,
    Assets.navbar.icHome,
    Assets.navbar.icCustomerService,
  ];

  // Create a controller for the AnimatedNotchBottomBar
  NotchBottomBarController notchBottomBarController =
      NotchBottomBarController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: AnimatedNotchBottomBar(
        notchBottomBarController: notchBottomBarController,
        bottomBarItems: [
          BottomBarItem(
            activeItem: SvgPicture.asset(
              icons[0].path,
              width: 24,
              height: 24,
            ),
            inActiveItem: SvgPicture.asset(
              icons[0].path,
              width: 24,
              height: 24,
              color: AppColor.primaryWhite,
            ),
            itemLabel: "Komunitas",
          ),
          BottomBarItem(
            activeItem: SvgPicture.asset(icons[1].path, width: 24, height: 24),
            inActiveItem: SvgPicture.asset(
              icons[1].path,
              width: 24,
              height: 24,
              color: AppColor.primaryWhite,
            ),
            itemLabel: "Chat Bot",
          ),
          BottomBarItem(
            activeItem: SvgPicture.asset(icons[2].path, width: 24, height: 24),
            inActiveItem: SvgPicture.asset(
              icons[2].path,
              color: AppColor.primaryWhite,
            ),
            itemLabel: "Chat Ahli",
          ),
        ],
        kIconSize: 24,
        showLabel: false,
        kBottomRadius: 40,
        onTap: (index) {
          setState(() {
            selectedIndex = index; // Update selectedIndex on tap
          });
          notchBottomBarController
              .jumpTo(index); // Use controller to update the bottom bar
        },
        blurOpacity: 0.5,
        blurFilterX: 5.0,
        blurFilterY: 5.0,
        notchColor: AppColor.buttonOnboardingColor,
        durationInMilliSeconds: 300,
        color: AppColor.buttonColor,
        showShadow: true,
        // Removed floatingIcon parameter as it is not defined in AnimatedNotchBottomBar
      ),
    );
  }
}
