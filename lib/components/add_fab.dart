import 'package:flutter/material.dart';

class AddFAB extends StatelessWidget {
  const AddFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      shape: const RoundedRectangleBorder(),
      child: const Icon(Icons.add),
    );
  }
}
