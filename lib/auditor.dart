import 'package:flutter/material.dart';
import 'dart:async';
import 'audit_report.dart';

class Auditor extends StatefulWidget {
  const Auditor({super.key});
  @override
  _AuditorState createState() => _AuditorState();
}

class _AuditorState extends State<Auditor> {
  final _contractController = TextEditingController();
  bool _isLoading = false;

  Future<void> _showLoadingAndNavigate() async {
    setState(() {
      _isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 5));

    if (!mounted) return;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AuditReport(
          contractCode: _contractController.text,
        ),
      ),
    );
  }

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
            padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 16.0),
            child: TextField(
              controller: _contractController,
              maxLines: null,
              expands: true,
              decoration: const InputDecoration(
                hintText: 'Enter smart contract code',
                border: OutlineInputBorder(),
                fillColor: Color.fromARGB(255, 255, 255, 255),
                filled: true,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Container(
            height: MediaQuery.of(context).size.height / 2 - 300.0,
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: ElevatedButton(
                onPressed: _isLoading ? null : _showLoadingAndNavigate,
                child: _isLoading
                    ? const CircularProgressIndicator()
                    : const Text('Audit'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
