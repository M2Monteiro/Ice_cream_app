import 'package:flutter/material.dart';
import 'package:ice_cream/components/login/outline_text_form_component.dart';

import 'package:ice_cream/theme/app_color.dart';
import 'package:ice_cream/theme/app_images.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF9543c8),
        body: Stack(
          children: [
            Positioned(
              top: 1,
              child: Stack(
                children: [
                  Image(
                    width: 390,
                    height: 280,
                    filterQuality: FilterQuality.high,
                    image: AssetImage(AppImages.banner),
                    fit: BoxFit.cover,
                  ),
                  const Image(
                    alignment: Alignment.topLeft,
                    fit: BoxFit.fitHeight,
                    height: 320,
                    image: AssetImage("assets/ellipse.png"),
                  ),
                  Positioned(
                    top: 1,
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.only(left: 16),
                      width: 200,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sorveteria",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Faça o login para acessar a área administrativa da sorveteria",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.58,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: AppColor.textColor,
                        ),
                      ),
                      Form(
                        child: Column(
                          children: [
                            const SizedBox(height: 16),
                            OutlineTextFormComponent(
                              hintText: "admin@email.com",
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: AppColor.primaryColor,
                              ),
                            ),
                            const SizedBox(height: 16),
                            OutlineTextFormComponent(
                              hintText: "***",
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: AppColor.primaryColor,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                child: const Text("Esqueceu a senha?"),
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(
                              width: 300,
                              height: 52,
                              child: OutlinedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    AppColor.primaryColor,
                                  ),
                                ),
                                child: const Text(
                                  "Entrar",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 1,
                              color: Colors.grey,
                            ),
                          ),
                          Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: const Text("Ou")),
                          Expanded(
                            child: Container(
                              height: 1,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              width: 20,
                              height: 20,
                              image: NetworkImage(
                                "https://cdn4.iconfinder.com/data/icons/logos-brands-7/512/google_logo-google_icongoogle-512.png",
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Google",
                              style: TextStyle(
                                color: Color(0xFF64748B),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
