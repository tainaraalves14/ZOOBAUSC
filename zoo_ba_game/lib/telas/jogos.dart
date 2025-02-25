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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Escolha um Jogo:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // Define duas colunas no grid
                crossAxisSpacing: 16, // Espaço horizontal entre os quadrados
                mainAxisSpacing: 16, // Espaço vertical entre os quadrados
                childAspectRatio: 1, // Mantém os botões quadrados
                children: [
                  _buildGameTile(context, 'Jogo Pares', const JogoMemoria()),
                  _buildGameTile(context, 'Quiz Animal', const QuizAnimal()),
                  _buildGameTile(context, 'Encontre o Animal', const EncontreAnimal()),
                  _buildGameTile(context, 'Alimentação Correta', const AlimentacaoCorreta()),
                  _buildGameTile(context, 'Ciclo de Vida', const CicloVidaAnimais()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGameTile(BuildContext context, String title, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(2, 2)),
          ],
        ),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
