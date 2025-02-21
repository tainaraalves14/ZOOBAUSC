import 'package:flutter/material.dart';
import 'telas/tela_splash.dart';
import 'telas/quiz_animal.dart';
import 'telas/encontre_animal.dart';
import 'telas/alimentacao_correta.dart';
import 'telas/ciclo_vida_animais.dart';

void main() {

  runApp(const ZooBauruApp());
}

class ZooBauruApp extends StatelessWidget {
  // Construtor
  const ZooBauruApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zoo Bauru',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const TelaSplash(),
    );
  }
}
