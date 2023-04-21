const openButton = document.querySelectorAll(".open");
const modal = document.querySelector(".modal");
const hide = document.querySelector(".hidden");
const overlay = modal.querySelector(".modal_overlay");
const closeBtn = modal.querySelector(".close");
const plusBtn = document.querySelectorAll(".plus");
const minusBtn = document.querySelectorAll(".minus");
const stuck1 = document.querySelector(".input-qty1");
const stuck2 = document.querySelector(".input-qty2");
const plus1 = document.querySelector(".plus1");
const plus2 = document.querySelector(".plus2");
const minus1 = document.querySelector(".minus1");
const minus2 = document.querySelector(".minus2");
const depth = document.querySelectorAll(".depth2");

depth.forEach((depth, i) => {
	depth.addEventListener("click", () => {
		if(depth.classList.item(1) != current){
		depth.classList.add("current");
			
		}
	});
});

/*.tab-classify-type1 ul>li.current {
	border-bottom: 0;
	z-index: 1;
	background: #fff;
}*/

var stucks1 = 0;
var stucks2 = 0;

openButton.forEach((open, i) => {
	open.addEventListener("click", () => {
		hide.style.display = "block";
	});
});

closeBtn.addEventListener("click", function() {
	hide.style.display = "none";
});


plus1.addEventListener("click", () => {
	stucks1 += 1;
	stuck1.value = stucks1;
});
plus2.addEventListener("click", () => {
	stucks2 += 1;
	stuck2.value = stucks2;
});
minus1.addEventListener("click", () => {
	stucks1 -= 1;
	stuck1.value = stucks1;
});
minus2.addEventListener("click", () => {
	stucks2 -= 1;
	stuck2.value = stucks2;
});




















