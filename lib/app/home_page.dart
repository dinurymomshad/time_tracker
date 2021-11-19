import 'package:flutter/material.dart';
import 'package:time_tracker/services/auth.dart';

class HomePage extends StatelessWidget {
  final VoidCallback? onSignOut;
  final AuthBase? auth;
  const HomePage({
    Key? key,
    @required this.auth,
    @required this.onSignOut,
  }) : super(key: key);

  Future<void> _signOut() async {
    try {
      await auth?.signOut();
      onSignOut!();
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: false,
        actions: [
          TextButton(
            onPressed: _signOut,
            child: const Text(
              "Logout",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
