import 'package:flutter/material.dart';

const settingsRouteName = 'Settings';
const settingsRouteIcon = Icons.settings;
const settingsRoutePath = '/settings';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
