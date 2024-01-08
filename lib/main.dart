import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/pages/auth_screen.dart';
import 'package:provider_demo/provider/auth_provider.dart';
// import 'package:provider_demo/pages/dart_theme.dart';
// import 'package:provider_demo/pages/value_notifier_listener.dart';
// import 'package:provider_demo/pages/count_example.dart';
// import 'package:provider_demo/pages/example_one.dart';
import 'package:provider_demo/provider/count_provider.dart';
import 'package:provider_demo/provider/example_one_provider.dart';
import 'package:provider_demo/provider/theme_change_provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CountProvider()),
        ChangeNotifierProvider(create: (context) => ExampleOneProvider()),
        ChangeNotifierProvider(create: (context) => ThemeChangeProvider()),
        ChangeNotifierProvider(create: (context) => AuthProvider()),
      ],
      child: Builder(
        builder: (BuildContext context) {
          return MaterialApp(
            themeMode: Provider.of<ThemeChangeProvider>(context).themeMode,
            theme: ThemeData(brightness: Brightness.light),
            darkTheme: ThemeData(brightness: Brightness.dark),
            home: const Scaffold(
              body: Center(
                child: AuthScreen(),
              ),
            ),
          );
        },
      ),
    );
  }
}
