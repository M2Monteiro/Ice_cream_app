import 'package:flutter/material.dart';
import 'package:ice_cream/theme/app_color.dart';
import 'package:ice_cream/theme/app_images.dart';

class PresentationScreen extends StatelessWidget {
  const PresentationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.primaryColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image(
                image: AssetImage(AppImages.logo),
              ),
            ),
            Container(
              width: 280,
              height: 56,
              margin: const EdgeInsets.only(bottom: 24),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/login');
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Continuar",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_right_rounded)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
