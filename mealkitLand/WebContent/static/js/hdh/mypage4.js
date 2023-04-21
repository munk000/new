const $message = $(".message");
const $month = $(".custom-radio label");
const $search = $(".dis-inb span");
let text = "1개월";

$month.on("click", function(){
	text = $(this).text();
});

$search.on("click", function(){
	$message.text("최근 "+text+ " 내에 주문내역이 없습니다.");
});

