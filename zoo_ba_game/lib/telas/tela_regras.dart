import 'package:flutter/material.dart';

class TelaRegras extends StatelessWidget {
  const TelaRegras({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (title: const Text('Regras'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white, // Cor do texto do título
      ),
      body: const Center(child: Text('Aqui estarão as regras do jogo!')),
    );
  }
}
