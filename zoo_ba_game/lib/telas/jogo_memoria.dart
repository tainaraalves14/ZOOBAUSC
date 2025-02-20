import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

class JogoMemoria extends StatefulWidget {
  const JogoMemoria({super.key});

  @override
  _JogoMemoriaState createState() => _JogoMemoriaState();
}

class _JogoMemoriaState extends State<JogoMemoria> {
  List<String> icones = ['🐶', '🐱', '🦁', '🐯', '🐵', '🐼', '🐶', '🐱', '🦁', '🐯', '🐵', '🐼'];
  List<bool> revelado = List.generate(12, (index) => false);
  List<int> selecionados = [];

  @override
  void initState() {
    super.initState();
    icones.shuffle(Random());
  }

  void _selecionarCarta(int index) {
    if (selecionados.length < 2 && !revelado[index]) {
      setState(() {
        revelado[index] = true;
        selecionados.add(index);
      });
      if (selecionados.length == 2) {
        _verificarPar();
      }
    }
  }

  void _verificarPar() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        if (icones[selecionados[0]] != icones[selecionados[1]]) {
          revelado[selecionados[0]] = false;
          revelado[selecionados[1]] = false;
        }
        selecionados.clear();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/fundo.png',
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.white.withOpacity(0.3),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Encontre o Par',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                itemCount: icones.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: GestureDetector(
                      onTap: () => _selecionarCarta(index),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green.shade400,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          revelado[index] ? icones[index] : '',
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
