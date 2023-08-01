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
              // NetworkImage("https://avatars.githubusercontent.com/u/18076967?s=400&u=08866517cccf3561cdc31f0328b3ca7ab8d4add8&v=4"),
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
        return AccountDialog();
      },
    );
  }
}
