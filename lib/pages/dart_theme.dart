import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider/theme_change_provider.dart';

class DartThemeScreen extends StatefulWidget {
  const DartThemeScreen({super.key});

  @override
  State<DartThemeScreen> createState() => _DartThemeScreenState();
}

class _DartThemeScreenState extends State<DartThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeChangeProvider>(context);

    return Container(
      child: Column(children: [
        RadioListTile<ThemeMode>(
            title: const Text('Light Mode'),
            value: ThemeMode.light,
            groupValue: provider.themeMode,
            onChanged: provider.setTheme),
        RadioListTile<ThemeMode>(
            title: const Text(' Dark Mode'),
            value: ThemeMode.dark,
            groupValue: provider.themeMode,
            onChanged: provider.setTheme),
        RadioListTile<ThemeMode>(
            title: const Text('System Mode'),
            value: ThemeMode.system,
            groupValue: provider.themeMode,
            onChanged: provider.setTheme)
      ]),
    );
  }
}
