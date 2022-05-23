// Olá, você foi contratado para executar este projeto. É importante que você analise, entenda o pedido do cliente e desenvolva conforme solicitado. Veja abaixo os requisitos do projeto:

// - Precisamos desenvolver um menu para um microondas super veloz, onde teremos 5 opções de comida com seus respectivos tempos pré-definidos. 

//       1 - Pipoca – 10 segundos (padrão);
//       2 - Macarrão – 8 segundos (padrão);
//       3 - Carne – 15 segundos (padrão);
//       4 - Feijão – 12 segundos (padrão);
//       5 - Brigadeiro – 8 segundos (padrão); 

// - O usuário poderá alterar o tempo padrão, aumentando ou diminuindo de acordo com sua vontade. Se o tempo informado for maior que 2x o necessário, exibir mensagem que a comida queimou.
// - Se o tempo for menor que o padrão, exibir a mensagem: "tempo insuficiente"; 
// - Opções não listadas no menu, devem exibir uma mensagem de erro: "Prato inexistente";
// - Se o tempo for 3x maior que o necessário para o prato, o microondas deve exibir a mensagem: "kabumm";
// - No final de cada tarefa, o microondas deverá exibir a mensagem: "Prato pronto, bom apetite!!!".

// Imprime o menu
console.log(`
	Menu:
	1 - Pipoca [ tempo ideal: 10 ]
	2 - Macarrão [ tempo ideal: 8 ]
	3 - Carne [ tempo ideal: 15 ]
	4 - Feijão [ tempo ideal: 12 ]
	5 - Brigadeiro [ tempo ideal: 8 ]
`)

// Tabela de pratos
var menu = [
	{nome: "Pipoca", tempo: 10},
	{nome: "Macarrão", tempo: 8},
	{nome: "Carne", tempo: 15},
	{nome: "Feijão", tempo: 12},
	{nome: "Brigadeiro", tempo: 8},
];

// Função para esquentar a comida
function comida(numeroComida, tempo) {
	var pratoComida = menu[numeroComida];

	if(!pratoComida) {
		console.log("Prato inexistente");
	}

	let mensagem;

	var tempoIdeal = pratoComida.tempo;

	if(tempo < tempoIdeal) {
		mensagem = "tempo insuficiente";
	} else if(tempo > tempoIdeal * 2 && tempo <= tempoIdeal * 3) {
		mensagem = "A comida queimou";
	} else if(tempo > tempoIdeal * 3) {
		mensagem = "kabumm";
	} else {
		mensagem = "Prato pronto, bom apetite!!!";
	}
	// Imprime mensagem relacionada à comida
	console.log(mensagem);
}

comida(0, 60);