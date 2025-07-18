import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rasa_app/core/routers/go_router_provider.dart';
import 'package:rasa_app/core/utils/constant/app_theme.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await dotenv.load(fileName: ".env");
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(ProviderScope(child: const MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Rasa App',
      theme: AppTheme.lightTheme,
      routeInformationParser: ref.watch(routerProvider).routeInformationParser,
      routeInformationProvider:
          ref.watch(routerProvider).routeInformationProvider,
      routerDelegate: ref.watch(routerProvider).routerDelegate,
    );
  }
}
