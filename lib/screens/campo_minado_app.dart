import 'package:campo_minado/components/resultado_widget.dart';
import 'package:campo_minado/components/campo_widget.dart';
import '../models/campo.dart';
import 'package:flutter/material.dart';
import '../models/explosao_exception.dart';

class CampoMinadoApp extends StatelessWidget {

  final Campo campo = Campo(linha: 0, coluna: 0);

  void reiniciar(){
    print('reiniciar...');
  }

  void _abrir(Campo campo){
    print('abrir...');
  }

  void _alternarMarcacao(Campo campo){
    print('alternarMarcacao...');
  }

  @override
  Widget build(BuildContext context) {
    try {
    campo.minar();
    campo.abrir();
  } on ExplosaoException{}

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: ResultadoWidget(
          venceu: true,
          onReiniciar: reiniciar,
        ),
        body: Container(child: CampoWidget(
          campo: campo,
          onAbrir: _abrir,
          onAlternarMarcacao: _alternarMarcacao,
        )),
      ),
    );
  }
}
