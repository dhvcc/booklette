import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AccountDialog extends StatelessWidget {
  const AccountDialog({super.key});

  void signInWithGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    try {
      final GoogleSignInAccount? account = await googleSignIn.signIn();
      print("Authenticated!!! $account");
      // onSignInSuccessful(account!); // Replace this with your desired logic after successful sign in
    } catch (error) {
      print("Failed to sign in with Google: $error");
    }
  }

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
                    // onTap: _handleSignIn,
                    onTap: signInWithGoogle,
                    child: ListTile(
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
          ],
        ),
      ),
    );
  }
}
