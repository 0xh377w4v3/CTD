// Botão dark theme
const body = document.querySelector("body");
const h1 = document.querySelector("h1");
const itemList = document.querySelectorAll(".item");

function darkTheme() {
  body.classList.toggle("dark-body");
  h1.classList.toggle("h1-dark");
  itemList.forEach(item => {
    item.classList.toggle("item-dark");
    item.classList.toggle("item-dark-texto");
  });
}