var body = document.querySelector("body");
var h1 = document.querySelector("h1");
var itemList = document.querySelectorAll(".item");

function darkTheme(){
	body.classList.toggle("dark-body");
	h1.classList.toggle("h1-dark");
	itemList.forEach(item => {
		item.classList.toggle("item-dark");
		item.classList.toggle("item-textos-dark");
	});
}
