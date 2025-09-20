import 'package:coding_task/gen/assets.gen.dart';
import 'package:coding_task/theme/colors.dart';
import 'package:coding_task/widgets/button.dart';
import 'package:coding_task/widgets/language.dart';
import 'package:coding_task/widgets/space.dart';
import 'package:flutter/material.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Assets.images.onboardingImage.image(fit: BoxFit.cover),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VerticalSpacing(4.0),
                  LanguageSelector(),
                  Spacer(),
                  Text(
                    'Connect with\nyour community\nwherever you are',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  VerticalSpacing(24.0),
                  Column(
                    spacing: 8.0,
                    children: [
                      Button(
                        backgroundColor: AppColors.primary,
                        icon: Assets.images.icons.apple,
                        text: 'Continue with Apple ID',
                      ),
                      Button(
                        backgroundColor: AppColors.blue,
                        icon: Assets.images.icons.google,
                        text: 'Continue with Google',
                      ),
                      Button(
                        backgroundColor: Colors.transparent,
                        icon: Assets.images.icons.email,
                        text: 'Continue with E-mail',
                        hasBorder: true,
                      ),
                    ],
                  ),
                  VerticalSpacing(22.0),
                  Center(
                    child: Text(
                      "By signing up, you accept the Terms of Use and\nPrivacy Policy of how we process your data.",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  VerticalSpacing(8.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
