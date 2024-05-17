import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.switchScreen, {super.key});

  final Function()? switchScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/images/brain.png",
            height: 200,
            width: 200,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          child: const Text(
            "Lets Start with the quiz!",
            style: TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton.icon(
          icon: const Icon(Icons.arrow_right_alt),
          onPressed: switchScreen,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 65, 43, 126),
            foregroundColor: Colors.white,
          ),
          label: const Text("Start"),
        ),
      ],
    );
  }
}
