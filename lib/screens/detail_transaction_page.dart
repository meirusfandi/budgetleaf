import 'package:flutter/material.dart';

class DetailTransactionPage extends StatelessWidget {
  final String? id;
  const DetailTransactionPage({super.key, this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Transaction Page'),
      ),
      body: Center(
        child: Text(
          'This is the detail transaction page.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );  
  }
}
