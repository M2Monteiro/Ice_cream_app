import 'package:flutter/material.dart';
import 'package:ice_cream/screens/login_screen.dart';
import 'package:ice_cream/screens/presentation_screen.dart';
import 'package:ice_cream/theme/app_color.dart';

class IceCreamApp extends StatelessWidget {
  const IceCreamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Suck Ice Cream',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
        useMaterial3: true,
      ),
      initialRoute: '/login',
      routes: {
        '/': (context) => const PresentationScreen(),
        '/login': (context) => const LoginScreen()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
