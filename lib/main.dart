import 'package:flutter/material.dart';
import 'package:login_app/pages/about_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:login_app/pages/chatbot_page.dart';
import 'package:login_app/pages/home_page.dart';
import 'package:login_app/pages/intro_page.dart';
import 'package:login_app/pages/profile_page.dart';
import 'package:login_app/pages/setting_page.dart';
import 'package:login_app/pages/slrtce_page.dart';
import 'package:login_app/pages/teachers_page.dart';
import 'package:login_app/pages/timetable_page.dart';
import 'package:login_app/pages/upload_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        '/homepage': (context) => HomePage(),
        '/profilepage': (context) => ProfilePage(),
        '/teacherspage': (context) => TeachersPage(),
        '/ECSSApage': (context) => UploadPage(),
        '/timetablepage': (context) => TimetablePage(),
        '/SLRTCEpage': (context) => SLRTCEPage(),
        '/aboutpage': (context) => AboutPage(),
        '/chatbotpage': (context) => ChatbotPage(),
        '/settingpage': (context) => SettingPage(),
      },
    );
  }
}
