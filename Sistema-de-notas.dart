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
  final double notaRecuperacao= 50;

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

    if (notaAlunoDouble >= notaRecuperacao) {

      print("O aluno $nomeAluno obteve frequência de $frequenciaAluno horas e nota de $notaAluno pontos. Portanto está de RECUPERAÇÃO!");
      print("Estude pois a recuperação começará em breve.");

    }else {

      print("O aluno $nomeAluno obteve frequência de $frequenciaAluno horas e nota de $notaAluno pontos. Devido a nota do aluno $nomeAluno ser menor que a nota mínima de $notaRecuperacao pontos, o aluno está REPROVADO(A)!");
    }
    
  }
  
}
