import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tumblrrr_app/utils/consts.dart';
import 'package:tumblrrr_app/views/onboarding/auth/login_screen.dart';
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
        ),
        scaffoldBackgroundColor: Colors.white
      ),
      // initialRoute: untuk mendefinisikan kelas apa yang akan tampil pertama kali
      // saat aplikasi dijalankan
      initialRoute: '/login',
      routes: {
        '/onboarding': (context) => OnboardingScreen(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}