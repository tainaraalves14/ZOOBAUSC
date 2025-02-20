import 'package:flutter/material.dart';

class TelaRegras extends StatelessWidget {
  const TelaRegras({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Regras')),
      body: const Center(child: Text('Aqui estarão as regras do jogo!')),
    );
  }
}
