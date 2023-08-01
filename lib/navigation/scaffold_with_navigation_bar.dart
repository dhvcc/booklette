import 'package:flutter/material.dart';
import 'package:booklette/pages/home.dart';
import 'package:booklette/settings.dart';

class ScaffoldWithNavigationBar extends StatelessWidget {
  const ScaffoldWithNavigationBar({
    super.key,
    required this.body,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });
  final Widget body;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        destinations: const [
          NavigationDestination(
            label: homeRouteName,
            icon: Icon(homeRouteIcon),
          ),
          NavigationDestination(
            label: settingsRouteName,
            icon: Icon(settingsRouteIcon),
          ),
        ],
        onDestinationSelected: onDestinationSelected,
      ),
    );
  }
}
