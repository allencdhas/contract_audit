import 'package:flutter/material.dart';
import 'auditor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartContact Audit App',
      theme:
          ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 61, 58, 156)),
      home: Landing(),
    );
  }
}

class Landing extends StatelessWidget {
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
                  MaterialPageRoute(builder: (context) => Auditor()),
                );
              },
              child: Text('Try Out'),
            ),
          ],
        ),
      ),
    );
  }
}
