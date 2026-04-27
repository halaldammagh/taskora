import 'package:flutter/material.dart';
import 'package:taskora/core/config/constants/image_path.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [Image.asset(ImagePath.logo)],
      ),
    );
  }
}
