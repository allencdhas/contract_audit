import 'package:flutter/material.dart';

class Auditor extends StatefulWidget {
  const Auditor({super.key});
  @override
  _AuditorState createState() => _AuditorState();
}

class _AuditorState extends State<Auditor> {
  final _contractController = TextEditingController();

  @override
  void dispose() {
    _contractController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audit Smart Contract'),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            padding: const EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 16.0),
            child: TextField(
              controller: _contractController,
              maxLines: null,
              expands: true,
              decoration: const InputDecoration(
                hintText: 'Enter smart contract code',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 8.0), // Added a spacing
          Container(
            height: MediaQuery.of(context).size.height / 2 -
                300.0, // Adjusted height
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  // Perform audit logic here
                  print(_contractController.text);
                },
                child: const Text('Audit'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
