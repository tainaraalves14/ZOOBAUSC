import 'package:flutter/material.dart';

class QuizAnimal extends StatelessWidget {
  const QuizAnimal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Animal'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white, // Cor do texto do título
      ),
      body: Center(
        child: Text('Quiz Animal', style: TextStyle(fontSize: 24, color: Colors.green)),
      ),
    );
  }
}
