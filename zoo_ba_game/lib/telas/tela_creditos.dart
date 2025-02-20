import 'package:flutter/material.dart';

class TelaCreditos extends StatelessWidget {
  const TelaCreditos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Créditos')),
      body: const Center(child: Text('Aqui estarão os créditos do jogo!')),
    );
  }
}
