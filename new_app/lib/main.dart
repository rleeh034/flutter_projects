import 'package:flutter/material.dart';
import 'package:new_app/screens/home.dart';
import 'package:new_app/screens/login.dart';
import 'package:new_app/screens/camera.dart';
import 'package:new_app/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Test App',
        initialRoute: '/home',
        routes: {
          '/home': (context) => const HomePage(),
          '/login': (context) => const LoginPage(),
          '/camera': (context) => const CameraPage(),
          '/profile': (context) => const ProfilePage()
        },
        debugShowCheckedModeBanner: false);
  }
}
