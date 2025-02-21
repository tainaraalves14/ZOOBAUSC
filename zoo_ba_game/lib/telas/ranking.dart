import 'package:flutter/material.dart';

class TelaRanking extends StatelessWidget {
  const TelaRanking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (title: const Text('Ranking'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white, // Cor do texto do título
      ),
      body: const Center(child: Text('Ranking')),
    );
  }
}
