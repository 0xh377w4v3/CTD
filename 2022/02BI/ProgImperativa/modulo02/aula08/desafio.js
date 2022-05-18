// Exercício "Pode Subir": Desafio

// A pessoa deve medir mais de 1.40m e menos de 2 metros.
// Se a pessoa medir menos de 1.40m, deverá ir acompanhada.
// Se a pessoa medir menos de 1.20m, não poderá subir, nem acompanhada.

function podeSubir(altura, acompanhante) {
	if(altura > 140 && altura < 200) {
		console.log("Acesso autorizado");
	} else if(altura < 120) {
		console.log("Acesso negado.");
	} else if(altura < 140 && altura > 120 && acompanhante === "sim") {
		console.log("Acesso autorizado");
	} else {
		console.log("Acesso negado.")
	}
}
podeSubir(130,"sim")