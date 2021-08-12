import 'dart:io';
import 'dart:core';
main() {

  String? nomeAluno = "";
  var frequenciaAluno = "";
  double frequenciaAlunoDouble = 0.0;
  var notaAluno = "";
  double notaAlunoDouble = 0.0;
  final double frequenciaMin = 75;
  final double notaMin = 70;

  // Pergunta e armazena o nome do aluno.
  stdout.write("Digite o nome do aluno: ");
  nomeAluno = stdin.readLineSync();

  //Pergunta e armazena a frequencia do aluno, após isso converte para double.
  stdout.write("Digite a frequência de $nomeAluno: ");
  frequenciaAluno = stdin.readLineSync()!;
  frequenciaAlunoDouble = double.parse(frequenciaAluno); 

  //Pergunta e armazena a nota do aluno, após isso converte para double.
  stdout.write("Digite a nota do aluno: $nomeAluno: ");
  notaAluno = stdin.readLineSync()!;
  notaAlunoDouble = double.parse(notaAluno);

  if ((frequenciaAlunoDouble >= frequenciaMin) && (notaAlunoDouble >= notaMin)) {

    print("O aluno $nomeAluno obteve frequência de $frequenciaAluno horas e nota de $notaAluno pontos. Portanto está APROVADO(A)!");
    print("Parabéns pelo seu desempenho.");

  } else {

      print("O aluno $nomeAluno obteve frequência de $frequenciaAluno horas e nota de $notaAluno pontos. Portanto está REPROVADO(A)!");
      print("Infelizmente você foi reprovado.");

    }
    
  }
  