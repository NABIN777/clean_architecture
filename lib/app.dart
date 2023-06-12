import 'package:flutter/material.dart';
import 'package:student_clean_arch/features/auth/presentation/view/spalsh_view.dart';
import 'package:student_clean_arch/view/login.dart';
import 'package:student_clean_arch/view/signup.dart';
import 'package:student_clean_arch/view/student_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashView(),
        '/login': (context) => const Login(),
        '/signupRoute': (context) => const Signup(),
        '/dashRoute': (context) => const StudentView()
      },
    );
  }
}
