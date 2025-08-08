import 'package:flutter/material.dart';
import 'package:navigatorr/screens/details_screen.dart';
import 'package:navigatorr/screens/home_screen.dart';
import 'package:navigatorr/screens/unknown_screen.dart';
import 'package:navigatorr/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Demo',
      theme: AppTheme.appTheme,

      home: HomeScreen(),
      onGenerateRoute: (settings) {
        if (settings.name == '/details') {
          final String itemId = settings.arguments as String;

          return MaterialPageRoute(
            builder: (context) {
              return DetailsScreen(itemId: itemId);
            },
          );
        }
        return null;
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const UnknownScreen());
      },
    );
  }
}
