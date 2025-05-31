import 'package:flutter/material.dart';

class FormAddCardPage extends StatelessWidget{
  const FormAddCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Add Card Page'),
      ),
      body: Center(
        child: const Text(
          'This is the form add card page.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
