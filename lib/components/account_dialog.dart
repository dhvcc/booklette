import 'package:flutter/material.dart';

class AccountDialog extends StatelessWidget {
  const AccountDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
            SizedBox(
              width: 300,
              height: 300,
              child: ListView(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {},
                    child: const ListTile(
                      leading: Icon(Icons.account_circle_outlined),
                      title: Text("Sign In"),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {},
                    child: const ListTile(
                      leading: Icon(Icons.download),
                      title: Text("Downloads"),
                    ),
                  ),
                ],
              ),
            )
            // Center(
            //   widthFactor: 3,
            //   child: Column(
            //     children: [
            //       const Row(
            //         mainAxisSize: MainAxisSize.min,
            //         children: [
            //           Icon(Icons.account_circle_outlined),
            //           Center(
            //             widthFactor: 3,
            //             child: Text("Sign in"),
            //           ),
            //         ],
            //       ),
            //       const Row(
            //         mainAxisSize: MainAxisSize.min,
            //         children: [
            //           Icon(Icons.close),
            //           Center(
            //             widthFactor: 3,
            //             child: Text("Settings"),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
