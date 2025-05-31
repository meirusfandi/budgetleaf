import 'package:flutter/material.dart';

class FormAddTransactionPage extends StatelessWidget {
  const FormAddTransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Add Transaction Page'),
      ),
      body: Center(
        child: const Text(
          'This is the form add transaction page.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );    
  }
}
