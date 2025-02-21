import 'package:flutter/material.dart';

class TelaSuporte extends StatelessWidget {
  const TelaRegras({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (title: const Text('Suporte'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white, // Cor do texto do título
      ),
      body: const Center(child: Text('Suporte')),
    );
  }
}
