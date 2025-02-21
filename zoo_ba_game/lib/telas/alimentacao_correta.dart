import 'package:flutter/material.dart';

class AlimentacaoCorreta extends StatelessWidget {
  const AlimentacaoCorreta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alimentação Correta'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white, // Cor do texto do título
      ),
      body: Center(
        child: Text('Alimentação Correta', style: TextStyle(fontSize: 24, color: Colors.green)),
      ),
    );
  }
}
