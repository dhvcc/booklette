import 'package:flutter/material.dart';

import '../components/search.dart';

const homeRouteName = 'Home';
const homeRouteIcon = Icons.home;
const homeRoutePath = '/home';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: const Center(
        child: Column(
          children: [
            Search(),
          ],
        ),
      ),
    );
  }
}
