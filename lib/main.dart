import 'package:flutter/material.dart';
import 'package:todo_app/core/Routing/navigation_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: NavigationScreen.route,
      theme: ThemeData(fontFamily: 'playWrite'),
    );
  }
}
