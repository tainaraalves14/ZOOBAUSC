import 'package:flutter/material.dart';

class Conquistas extends StatelessWidget {
  const Conquistas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (title: const Text('Conquistas'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white, // Cor do texto do título
      ),
      body: const Center(child: Text('Conquistas jogo!')),
    );
  }
}
