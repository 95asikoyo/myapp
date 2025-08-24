import 'package:flutter/material.dart';
import 'core/app_theme.dart';
import 'pages/home/home_page.dart';
import 'pages/comparison/comparison_page.dart';
import 'pages/cart/cart_page.dart';
import 'pages/account/account_page.dart';
import 'pages/services/services_page.dart';

void main() {
  runApp(const StreetwiseApp());
}

class StreetwiseApp extends StatefulWidget {
  const StreetwiseApp({super.key});

  @override
  State<StreetwiseApp> createState() => _StreetwiseAppState();
}

class _StreetwiseAppState extends State<StreetwiseApp> {
  bool _isDark = false;

  void _toggleTheme() {
    setState(() {
      _isDark = !_isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Streetwise',
      debugShowCheckedModeBanner: false,
      theme: _isDark ? AppTheme.darkTheme : AppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(toggleTheme: _toggleTheme),
        '/comparison': (context) => const ComparisonPage(),
        '/cart': (context) => const CartPage(),
        '/account': (context) => const AccountPage(),
        '/services': (context) => const ServicesPage(),
      },
    );
  }
}
