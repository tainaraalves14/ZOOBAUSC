import 'package:flutter/material.dart';

class TelaDesafios extends StatelessWidget {
  const TelaDesafios({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (title: const Text('Desafios'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white, // Cor do texto do título
      ),
      body: const Center(child: Text('Desafios')),
    );
  }
}
