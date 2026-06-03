import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'product_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),

      body: Column(
        children: [

          TextField(
            key: const Key("loginEmail"),
            controller: email,
          ),

          TextField(
            key: const Key("loginPassword"),
            controller: password,
          ),

          ElevatedButton(
            key: const Key("loginButton"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ProductScreen(),
                ),
              );
            },
            child: const Text("Login"),
          ),

          ElevatedButton(
            key: const Key("signupPage"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => SignupScreen(),
                ),
              );
            },
            child: const Text("Signup"),
          ),
        ],
      ),
    );
  }
}