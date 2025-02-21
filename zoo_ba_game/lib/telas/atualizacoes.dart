import 'package:flutter/material.dart';

class TelaAt extends StatelessWidget {
  const TelaAt ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (title: const Text('Atualizações'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white, // Cor do texto do título
      ),
      body: const Center(child: Text('Atualizações')),
    );
  }
}
