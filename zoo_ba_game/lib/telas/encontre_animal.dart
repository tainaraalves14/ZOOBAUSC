import 'package:flutter/material.dart';

class EncontreAnimal extends StatelessWidget {
  const EncontreAnimal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Encontre o Animal'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white, // Cor do texto do título
      ),
      body: Center(
        child: Text('Encontre o Animal', style: TextStyle(fontSize: 24, color: Colors.green)),
      ),
    );
  }
}
