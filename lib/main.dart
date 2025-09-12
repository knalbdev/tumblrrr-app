import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tumblrrr_app/utils/consts.dart';
import 'package:tumblrrr_app/views/onboarding/onboarding_screen.dart';

void main() {
  runApp(TumblrrrApp());
}

class TumblrrrApp extends StatefulWidget {
  const TumblrrrApp({super.key});

  @override
  State<TumblrrrApp> createState() => _TumblrrrAppState();
}

class _TumblrrrAppState extends State<TumblrrrApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tumblrrr App",
      theme: ThemeData(
        fontFamily: 'Plus Jakarta Sans',
        visualDensity: VisualDensity.adaptivePlatformDensity, // mengatur kepadatan di setiap platform
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: textColor),
          bodySmall: TextStyle(color: textColor),
        )
      ),
      home: OnboardingScreen(),
    );
  }
}