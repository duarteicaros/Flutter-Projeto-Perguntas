import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  // const Questionario({super.key});

  final List<Map<String, dynamic>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
        : [];

    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto']),
        ...respostas.map((resp) {
          return Resposta(
            resp['texto'],
            () => responder(resp['pontuacao']),
          );
        }).toList(),
      ],
    );
  }
}
