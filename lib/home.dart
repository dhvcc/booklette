import 'package:flutter/material.dart';

import 'components/search.dart';

const homeRouteName = 'Home';
const homeRouteIcon = Icons.home;

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: const Column(
        children: [
          Search(),
        ],
      ),
    );
  }
}
