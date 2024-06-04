import 'package:flutter/material.dart';

class AuditReport extends StatelessWidget {
  final String contractCode;

  const AuditReport({super.key, required this.contractCode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audit Report'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your contract suffers from the following:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                Chip(
                  label: Text('access-control'),
                  backgroundColor: Colors.green,
                  deleteIconColor: Colors.white,
                ),
                Chip(
                  label: Text('arithmetic'),
                  backgroundColor: Colors.red,
                  deleteIconColor: Colors.white,
                ),
                Chip(
                  label: Text('reentrancy'),
                  backgroundColor: Colors.red,
                  deleteIconColor: Colors.white,
                ),
                Chip(
                  label: Text('unchecked-calls'),
                  backgroundColor: Colors.green,
                  deleteIconColor: Colors.white,
                ),
                Chip(
                  label: Text('double-spending'),
                  backgroundColor: Colors.red,
                  deleteIconColor: Colors.white,
                ),
                Chip(
                  label: Text('locked ether'),
                  backgroundColor: Colors.red,
                  deleteIconColor: Colors.white,
                ),
                Chip(
                  label: Text('arithmetic'),
                  backgroundColor: Colors.green,
                  deleteIconColor: Colors.white,
                ),
                Chip(
                  label: Text('incorrect-shift'),
                  backgroundColor: Colors.red,
                  deleteIconColor: Colors.white,
                ),
                Chip(
                  label: Text('bad-randomness'),
                  backgroundColor: Colors.red,
                  deleteIconColor: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
