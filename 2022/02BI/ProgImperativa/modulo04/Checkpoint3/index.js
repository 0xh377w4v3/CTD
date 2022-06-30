//  Programação Imperativa
//  Checkpoint 3 - Avaliação Final

//  Objetivos
/*  Vamos realizar uma série de exercícios conectados entre si. 
	  O objetivo é trabalhar um pouco com exercícios que dependem da etapa anterior para manter uma linha de trabalho.
    Importante: Ao final, lembre-se de enviar o código completo para o Github, compartilhando o link do projeto com seus professores. */

//  Passo 1.
//  Crie uma função construtora que tenha como atributos: nome (string), notas (array de números) e quantidade de faltas (number).
function Aluno(nome, notas, qtdFaltas){
  this.nome = nome;
  this.notas = notas;
  this.qtdFaltas = qtdFaltas;
  this.faltas = function(){
    this.qtdFaltas++;
    console.log(`${this.nome} faltou e está com ${this.qtdFaltas} faltas.`);
  },

  //  Passo 2.
  /*  Na função construtora crie o método calcularMedia que retorna a média de suas notas. 
      Também terá um método chamado faltas, que simplesmente aumenta o número de faltas em 1. 
      Crie alguns alunos para testar a sua função construtora. */    
  this.calcularMedia = function(){
    let soma = 0;
    let media = 0;
    for(let x = 0; x < this.notas.length; x++){
        soma += this.notas[x];
    }
    media = (soma / notas.length).toFixed(2);
    console.log('-------------------------------------------------------');
    console.log(`Aluno(a): ${this.nome} -> Média: ${media} | Faltas: ${qtdFaltas}`);
    return media;
  }
}

/*  Crie alguns alunos para testar a sua função construtora. */
const Estudantes = [];
Estudantes.push(
	new Aluno('Elliot', [ 7, 9, 10, 6 ], 5),
	new Aluno('Darlene', [ 6.2, 3, 7, 10 ], 5),
	new Aluno('Angela', [ 3.5, 5, 6.4, 2.3 ], 3),
	new Aluno('Tyrell', [ 8.5, 7, 6, 9.5 ], 2),
	new Aluno('Cisco', [ 4, 6, 4, 7, 6 ], 7),
	new Aluno('Mobley', [ 9, 4, 7, 3 ], 5),
	new Aluno('Trenton', [ 10, 8, 10, 9.3 ], 2)
);

//  Passo 3.
/*  crie o objeto literal curso que tem como atributos:   
    (string), nota de aprovação (number), faltas máximas (number) e uma (um array composto pelos alunos criados no passo 2). */
const curso = {
  cursoNome: 'Programação Imperativa',
  aprovaNota: 7,
  maxFaltas: 5,
  Estudantes: Estudantes,

  //  Passo 4.
  /*  Crie o método que permite adicionar alunos à lista do curso, ou seja, quando chamamos nosso método em nosso objeto curso, deverá adicionar um aluno a mais na propriedade lista de estudantes do objeto curso. */
  adicionaAluno(nome, notas, qtdFaltas){
    let aluno = new Aluno(nome, notas, qtdFaltas);
    this.Estudantes.push(aluno);
  },

  //  Passo 5.
  /*  Crie um método para o objeto curso que receba um aluno (como parâmetro) e retorne true se ele aprovou no curso ou false em caso de reprovação. 
      Para ser aprovado, o aluno tem que ter uma média igual ou acima da nota de aprovação e ter menos faltas que faltas máximas. 
      Se tiver a mesma quantidade, tem que estar 10% acima da nota de aprovação. */
  aprovaReprova(aluno){
    let media = aluno.calcularMedia();
    let resultado;
    if(aluno.qtdFaltas < this.maxFaltas && media >= this.aprovaNota){
      resultado = console.log(`Status: [ ${aluno.nome} ] -> Aprovado por Nota e Presença.`);
    }else if(aluno.qtdFaltas == this.maxFaltas && media >= (this.aprovaNota * 1.1)){
      resultado = console.log(`Status: [ ${aluno.nome} ] -> Aprovado por Nota maior que 10%.`);
    }else if(aluno.qtdFaltas < this.maxFaltas && media < this.aprovaNota){
      resultado = console.log(`Status: [ ${aluno.nome} ] -> Reprovado por Nota.`);
    }else {
      resultado = console.log(`Status: [ ${aluno.nome} ] -> Reprovado por Nota e Faltas.`);
    }
    return resultado;
  },

  //  Passo 6.
  /*  Crie um método para o objeto curso que percorra a lista de estudantes e retorne um array de booleanos com os resultados se os alunos aprovaram ou não. */
  listaResultados(){
    let finalResultado = [];
    for(let x = 0;x < this.Estudantes.length; x++){
        finalResultado.push(this.aprovaReprova(this.Estudantes[x]));
    }
    return finalResultado;
  }
}

// Testando adicionaAluno()
// curso.adicionaAluno('AlunoTeste', [ 10, 10, 10 , 10 ], 8);

curso.listaResultados();
console.log('-------------------------------------------------------');
