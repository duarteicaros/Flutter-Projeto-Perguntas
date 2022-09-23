import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  // const Resposta({super.key});

  final texto;
  final void Function() onSelected;

  Resposta(this.texto, this.onSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // ElevatedButton(
      //   style: ButtonStyle(backgroundColor:
      //       MaterialStateProperty.resolveWith<Color?>(
      //           (Set<MaterialState> states) {
      //     if (states.contains(MaterialState.disabled)) return Colors.grey ;
      //     return Colors.blue; // Defer to the widget's default.
      //   })),

      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue, // foreground
        ),
        onPressed: onSelected,
        child: Text(texto),
      ),
    );
  }
}
