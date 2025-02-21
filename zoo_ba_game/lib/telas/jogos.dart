import 'package:flutter/material.dart';
import 'package:zoo_ba_game/telas/jogo_memoria.dart';
import 'package:zoo_ba_game/telas/quiz_animal.dart';
import 'package:zoo_ba_game/telas/encontre_animal.dart';
import 'package:zoo_ba_game/telas/alimentacao_correta.dart';
import 'package:zoo_ba_game/telas/ciclo_vida_animais.dart';

class JogosPage extends StatelessWidget {
  const JogosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jogos Educativos'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white, // Cor do texto do título
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Escolha um Jogo:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            const SizedBox(height: 30),
            _buildMenuButton(context, 'Quiz Animal', const QuizAnimal()),
            const SizedBox(height: 10),
            _buildMenuButton(context, 'Encontre o Animal', const EncontreAnimal()),
            const SizedBox(height: 10),
            _buildMenuButton(context, 'Alimentação Correta', const AlimentacaoCorreta()),
            const SizedBox(height: 10),
            _buildMenuButton(context, 'Ciclo de Vida dos Animais', const CicloVidaAnimais()),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuButton(BuildContext context, String title, Widget page) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green), // Alterado para 'backgroundColor'
      child: Text(title, style: TextStyle(fontSize: 18, color: Colors.white)),
    );
  }
}
