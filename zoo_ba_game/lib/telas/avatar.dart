import 'package:flutter/material.dart';

class TelaAvatar extends StatelessWidget {
  const TelaAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (title: const Text('Avatar'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white, // Cor do texto do título
      ),
      body: const Center(child: Text('Avatar')),
    );
  }
}
