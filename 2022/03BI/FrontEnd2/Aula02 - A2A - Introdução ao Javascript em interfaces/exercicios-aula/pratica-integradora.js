let lista = [1, 2, 4, 8];

function somaLista(lista){
	let contador = 0;
	for(let i = 0; i < lista.length; i++) {
		contador = contador + lista[i]
		console.log(contador);
	}
}
somaLista(lista);