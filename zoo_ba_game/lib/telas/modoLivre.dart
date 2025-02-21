import 'package:flutter/material.dart';

class TelaModo extends StatelessWidget {
  const TelaModo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (title: const Text('Modo Livre'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white, // Cor do texto do título
      ),
      body: const Center(child: Text('Modo Livre')),
    );
  }
}
