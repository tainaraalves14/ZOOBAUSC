import 'package:flutter/material.dart';

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
class TelaMenu extends StatelessWidget {
  const TelaMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fundo.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', width: 300),
            const SizedBox(height: 20),
            _criarBotaoMenu(context, 'Entrar', () {}),
            _criarBotaoMenu(context, 'Regras', () {}),
            _criarBotaoMenu(context, 'Créditos', () {}),
          ],
        ),
      ),
    );
  }

  Widget _criarBotaoMenu(BuildContext context, String texto, VoidCallback aoPressionar) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: Colors.green),
          ),
        ),
        onPressed: aoPressionar,
        child: Text(
          texto,
          style: const TextStyle(
            color: Colors.green,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
