import 'package:booklette/components/book_list/book_list.dart';
import 'package:flutter/material.dart';

import '../components/add_fab.dart';
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
    return const Scaffold(
      floatingActionButton: AddFAB(),
      body: Column(
        children: [
          Center(child: Search()),
          BookList(),
        ],
      ),
    );
  }
}
