const listaDeFelinos = [
  {
    title: 'Tigre',
    imgUrl: '/imagens/tiger.jpg',
    description:
      'O tigre (Panthera tigris) é uma das espécies da subfamília pantherine (família Felidae) pertencente ao gênero Panthera. Encontra-se apenas no continente asiático; É um predador carnívoro e é a maior espécie de felídeo do mundo, juntamente com o leão, ambos podem atingir um tamanho comparável ao de fósseis de felinos maiores.',
    createdAt: '\n2021-06-01T23:12:11.837Z',
  },
  {
    title: 'Leão',
    imgUrl: '/imagens/leon.jpg',
    description:
      'O leão (Panthera leo) é um mamífero carnívoro da família Felidae e uma das cinco espécies do gênero Panthera. Os leões selvagens vivem em populações cada vez mais dispersas e fragmentadas na África subsaariana (exceto nas regiões de selva da costa atlântica e na bacia do Congo) e em uma pequena área do noroeste da Índia.',
    createdAt: '\n2021-05-05T23:12:11.837Z',
  },
  {
    title: 'Leopardo',
    imgUrl: '/imagens/leopardo.jpg',
    description:
      'O leopardo (Panthera pardus) é um mamífero carnívoro da família Felidae. Como três dos outros felinos do gênero Panthera: o leão, o tigre e a onça, eles são caracterizados por uma modificação no osso hióide que lhes permite rugir. Também é conhecida como a pantera marrom e, quando tem a pelagem completamente escura, como a pantera negra (melanística).',
    createdAt: '\n2021-05-05T23:12:11.837Z',
  },
  {
    title: 'Pantera negra',
    imgUrl: '/imagens/pantera-negra.jpg',
    description:
      'A pantera negra é uma variação negra (melanismo) de várias espécies de grandes felinos, especialmente o leopardo (Panthera pardus) e a onça (Panthera onca). Mas deve-se ressaltar que não é uma espécie nova, nem mesmo uma subespécie, é simplesmente uma variação negra desses animais.',
    createdAt: '\n2021-04-09T23:12:11.837Z',
  },
  {
    title: 'Jaguar',
    imgUrl: '/imagens/jaguar.jpg',
    description:
      'A onça, onça ou yaguareté (Panthera onca) é um felino carnívoro da subfamília Panterine e do gênero Panthera. É a única das cinco espécies atuais deste gênero que se encontra na América. É também o maior felino da América e o terceiro maior do mundo, depois do tigre (Panthera tigris) e do leão (Panthera leo).',
    createdAt: '\n2021-05-18T23:12:11.837Z',
  },
  {
    title: 'Guepardo',
    imgUrl: '/imagens/chita.jpg',
    description:
      'A chita ou chita (Acinonyx jubatus)1 é um membro atípico da família Felidae. É o único representante vivo do gênero Acinonyx. Ele caça graças à sua visão e sua grande velocidade. É o animal terrestre mais rápido, pois atinge a velocidade máxima de 115 km/h em corridas de até quatrocentos ou quinhentos metros.',
    createdAt: '\n2021-05-22T23:12:11.837Z',
  },
];

function createPage(){
  let h1 = document.createElement("h1");
  document.body.appendChild(h1).innerText = "A família dos felinos"

  let botao = document.createElement("label");
  botao.className = "switch";
  document.body.appendChild(botao);

  let input = document.createElement("input");
  botao.appendChild(input);
  input.setAttribute("id", "troca");
  input.setAttribute("type", "checkbox");
  input.setAttribute("onchange", "darkTheme()");

  let span = document.createElement("span");
  span.className = "slider round";
  botao.appendChild(span);

  let divContainer = document.createElement("div");
  document.body.appendChild(divContainer);
  divContainer.className = "container";
  
  for(let i in listaDeFelinos){
    let divCard = document.createElement("div");
    divContainer.appendChild(divCard);
    divCard.className = "item";

    let imgCard = document.createElement("img");
    divCard.appendChild(imgCard);
    imgCard.setAttribute("src", listaDeFelinos[i].imgUrl);
    
    let h2 = document.createElement("h2");
    divCard.appendChild(h2).innerText = listaDeFelinos[i].title;
  
    let pCard = document.createElement("p");
    divCard.appendChild(pCard).innerText = listaDeFelinos[i].description;

    let dataCard = document.createElement("p");
    divCard.appendChild(dataCard).innerText = listaDeFelinos[i].createdAt
  }
  
}

createPage();