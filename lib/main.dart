import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/login.dart';
import './pages/about_us.dart';
import 'theme.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme(),
      initialRoute: '/home',
      routes: {
        '/': (context) => const Home(),
        '/home': (context) => const Home(),
        '/login': (context) => const LoginPage(),
        '/about': (context) => const AboutUsPage(),
      },
    );
  }
}
