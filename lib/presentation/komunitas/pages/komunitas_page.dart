import 'package:flutter/material.dart';

class KomunitasPage extends StatelessWidget {
  const KomunitasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Komunitas Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Welcome to the Komunitas Page!'),
            ElevatedButton(
              onPressed: () {
                // Handle komunitas page logic here
              },
              child: const Text('Go to Next Page'),
            ),
          ],
        ),
      ),
    );
  }
}