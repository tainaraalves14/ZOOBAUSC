import 'package:flutter/material.dart';
import 'tela_menu.dart';

class TelaSplash extends StatelessWidget {
  const TelaSplash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const TelaMenu()),
      );
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fundo.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Image.asset('assets/logo.png', width: 300),
        ),
      ),
    );
  }
}
