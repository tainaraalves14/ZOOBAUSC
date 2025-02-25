import 'package:flutter/material.dart';
import 'tela_jogo.dart';
import 'tela_regras.dart';
import 'tela_creditos.dart';

class TelaMenu extends StatelessWidget {
  const TelaMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity, // Garante que ocupe a largura inteira
        height: double.infinity, // Garante que ocupe a altura inteira
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fundo.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center( // Mantém os elementos centralizados
          child: SingleChildScrollView( // Evita cortes em telas menores
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/logo.png', width: 300),
                const SizedBox(height: 30),
                _criarBotaoMenu(context, 'Entrar', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TelaJogo()),
                  );
                }),
                _criarBotaoMenu(context, 'Regras', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TelaRegras()),
                  );
                }),
                _criarBotaoMenu(context, 'Créditos', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TelaCreditos()),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _criarBotaoMenu(BuildContext context, String texto, VoidCallback aoPressionar) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        width: 200, // Define um tamanho fixo para os botões
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 15),
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
      ),
    );
  }
}
