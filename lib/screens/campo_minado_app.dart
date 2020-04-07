import 'package:campo_minado/components/resultado.dart';
import 'package:flutter/material.dart';

class CampoMinadoApp extends StatelessWidget {

  reiniciar(){
    print('reiniciar...');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: ResultadoWidget(
          venceu: true,
          onReiniciar: reiniciar,
        ),
        body: Container(child: Text("Tabuleiro")),
      ),
    );
  }
}
