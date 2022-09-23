import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  // const Resultado({super.key});

  final int pontuacao;
  final void Function() reiniciarQuestionario;

  Resultado(this.pontuacao, this.reiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabens!';
    } else if (pontuacao < 12) {
      return 'Você é Fera!';
    } else if (pontuacao < 16) {
      return 'Impressionante Meu!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 30),
          ),
        ),
        TextButton(
          child: Text(
            'Deseja Reiniciar?',
            style: TextStyle(fontSize: 20),
          ),
          style: TextButton.styleFrom(
            foregroundColor: Colors.blue,
            //backgroundColor: Colors.blue, // foreground
          ),
          onPressed: reiniciarQuestionario,
        )
      ],
    );
  }
}
