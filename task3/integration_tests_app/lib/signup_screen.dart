import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Signup")),

      body: Column(
        children: [

          TextField(
            key: const Key("signupName"),
            controller: name,
          ),

          ElevatedButton(
            key: const Key("signupButton"),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Signup Success"),
                ),
              );
            },
            child: const Text("Create Account"),
          ),
        ],
      ),
    );
  }
}