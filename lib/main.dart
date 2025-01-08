import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stroll_test_ui/ui/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            // Make status bar transparent
            statusBarIconBrightness: Brightness.light,
            // White icons on status bar
            systemNavigationBarColor: Colors.transparent,
            // Keep system navigation bar transparent
            systemNavigationBarIconBrightness: Brightness.light,
            // Dark icons for system navigation
            statusBarBrightness: Brightness
                .dark, // Ensure dark status bar content (for contrast)
          ),
          scrolledUnderElevation: 0,
          // Remove any elevation if you don't want shadow
          backgroundColor: Colors.transparent, // AppBar background transparent
        ),
      ),
      home: HomeScreen(),
    );
  }
}
