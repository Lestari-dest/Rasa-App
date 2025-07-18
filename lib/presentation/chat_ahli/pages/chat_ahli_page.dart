import 'package:flutter/material.dart';

class ChatAhliPage extends StatelessWidget {
  const ChatAhliPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Ahli Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Welcome to the Chat Ahli Page!'),
            ElevatedButton(
              onPressed: () {
                // Handle chat ahli page logic here
              },
              child: const Text('Go to Next Page'),
            ),
          ],
        ),
      ),
    );
  }
}