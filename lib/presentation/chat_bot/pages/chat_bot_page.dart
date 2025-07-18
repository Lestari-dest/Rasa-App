import 'package:flutter/material.dart';

class ChatBotPage extends StatelessWidget {
  const ChatBotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Bot Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Welcome to the Chat Bot Page!'),
            ElevatedButton(
              onPressed: () {
                // Handle chat bot page logic here
              },
              child: const Text('Go to Next Page'),
            ),
          ],
        ),
      ),
    );
  }
}