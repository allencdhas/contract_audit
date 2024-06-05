import 'package:flutter/material.dart';
import 'auditor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartContact Audit App',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 132, 128, 246)),
      home: const Landing(),
    );
  }
}

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/eth.png'),
              height: 200,
            ),
            const SizedBox(height: 55),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Auditor()),
                );
              },
              child: const Text('Try Out'),
            ),
          ],
        ),
      ),
    );
  }
}
