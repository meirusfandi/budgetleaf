import 'package:flutter/material.dart';

class DetailCardPage extends StatelessWidget {
  final String? cardId;
  const DetailCardPage({super.key, this.cardId});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Card Page'),
      ),
      body: Center(
        child: Text(
          'This is the detail card page.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
