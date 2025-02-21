import 'package:flutter/material.dart';

class CicloVidaAnimais extends StatelessWidget {
  const CicloVidaAnimais({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ciclo de Vida dos Animais'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text('Ciclo de Vida dos Animais', style: TextStyle(fontSize: 24, color: Colors.green)),
      ),
    );
  }
}
