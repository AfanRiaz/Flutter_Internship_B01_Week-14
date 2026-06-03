import 'package:flutter/material.dart';
import 'second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController controller = TextEditingController();

  String error = "";
  int counter = 0;

  void validate() {
    setState(() {
      if (controller.text.isEmpty) {
        error = "Field Required";
      } else {
        error = "";
      }
    });
  }

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Testing App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              key: const Key("textField"),
              controller: controller,
            ),

            ElevatedButton(
              key: const Key("validateButton"),
              onPressed: validate,
              child: const Text("Validate"),
            ),

            Text(error),

            const SizedBox(height: 20),

            Text(
              "$counter",
              key: const Key("counterText"),
            ),

            ElevatedButton(
              key: const Key("incrementButton"),
              onPressed: incrementCounter,
              child: const Text("Increment"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              key: const Key("navigateButton"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const SecondScreen(),
                  ),
                );
              },
              child: const Text("Go Next"),
            ),
          ],
        ),
      ),
    );
  }
}