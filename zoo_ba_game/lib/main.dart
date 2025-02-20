import 'package:flutter/material.dart';
import 'telas/tela_splash.dart';

void main() {
  runApp(const ZooBauruApp());
}

class ZooBauruApp extends StatelessWidget {
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
