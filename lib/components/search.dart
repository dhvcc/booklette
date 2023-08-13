import 'package:flutter/material.dart';
import 'package:booklette/components/account_dialog.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SearchBar(
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 15),
        ),
        trailing: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const Icon(Icons.search),
          ),
          GestureDetector(
            onTap: () => _dialogBuilder(context),
            child: const CircleAvatar(
              child: Icon(Icons.account_circle_outlined),
            ),
          )
        ],
      ),
    );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return const AccountDialog();
      },
    );
  }
}
