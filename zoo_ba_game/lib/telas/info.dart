import 'package:flutter/material.dart';

class TelaInfo extends StatelessWidget {
  const TelaInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (title: const Text('Informações'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white, // Cor do texto do título
      ),
      body: const Center(child: Text('Informações')),
    );
  }
}
