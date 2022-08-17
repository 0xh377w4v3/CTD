let input1 = document.getElementById("urlImagem1")
let input2 = document.getElementById("urlImagem2")
let input3 = document.getElementById("urlImagem3")
let divGaleria = document.getElementById("galeria")

//TODO: após exibir a imagem deverá ser limpo o input

function cliqueiEnviar(){
	//console.log("cliquei");
	// console.log(`
	// ${input1.value} 
	// ${input2.value} 
	// ${input3.value}
	// `);
	//console.log(input1.value)
	ganhouFocoInput1()
	
	let img = document.createElement("img")
	img.src = input1.value

	divGaleria.appendChild(img)

	//console.log(divGaleria);
}

function perdeuFocoInput1(){
	// console.log("perdeu foco")
	input1.setAttribute("disabled", true)
}

function ganhouFocoInput1(){
	// console.log("ganhou foco")
	input1.removeAttribute("disabled")
}
