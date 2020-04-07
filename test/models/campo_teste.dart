import 'package:campo_minado/models/campo.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Campo", () {

    test("Abrir campo COM Explosão", () {
      Campo c = new Campo(linha: 0, coluna: 0);
      c.minar();

      expect(c.abrir, throwsException);
    });

    test("Abrir campo SEM Explosão", () {
      Campo c = new Campo(linha: 0, coluna: 0);
      c.abrir();

      expect(c.aberto, true);
    });

    test("Adicionar NÃO vizinho", () {
      Campo c1 = new Campo(linha: 0, coluna: 0);
      Campo c2 = new Campo(linha: 1, coluna: 3);

      c1.addVizinho(c2);

      expect(c1.vizinhos.isEmpty, true);
    });

    test("Adicionar vizinho", () {
      Campo c1 = new Campo(linha: 3, coluna: 3);
      Campo c2 = new Campo(linha: 3, coluna: 4);
      Campo c3 = new Campo(linha: 2, coluna: 2);
      Campo c4 = new Campo(linha: 4, coluna: 4);

      c1.addVizinho(c2);
      c1.addVizinho(c3);
      c1.addVizinho(c4);

      expect(c1.vizinhos.length, 3);
    });

    test("MInas na vizinhaça", () {
      Campo c1 = new Campo(linha: 3, coluna: 3);
      Campo c2 = new Campo(linha: 3, coluna: 4);
      c2.minar();
      Campo c3 = new Campo(linha: 2, coluna: 2);
      Campo c4 = new Campo(linha: 4, coluna: 4);
      c4.minar();

      c1.addVizinho(c2);
      c1.addVizinho(c3);
      c1.addVizinho(c4);

      expect(c1.qtdMinasNaVizinhaca, 2);
    });
  });
}
