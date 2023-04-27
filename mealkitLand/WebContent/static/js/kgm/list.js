/**
 * 
 */

//게시글 목록 
showList();

function showList(){
	boards = JSON.parse(boards);
	const $ul = $("#content-wrap ul")
	let text = "";
	//location.href='${contextPath}/detailOk.board'
	boards.forEach(board =>{
		text += `
			<li class="liTag">
				<a href="javascript:;" class="title-div ui-accordion-click">
					<div class="subject">
						<span class="category">${board.boardCategory}</span>
						<span class="classify">Q</span>
						<p class="txt">${board.boardTitle}</p>
					</div>
					<div class="right">
						<i class="ico-arr-toggle"> 
							<span class="blind">내용보기</span>
						</i>
					</div>
				</a>
				
				<div class="ui-accordion-view">
					<div class="answer">
						<p class= "txt">2023년 4월 1일부터 새로워진 멤버십을 만나볼 수 있습니다.</p>
					</div>
				</div>
			</li>
		`;
		
	});
	if(boards.length == 0){
		text += `
		<li>
			<div style="font-size:16px;">
				현재 문의 게시글이 없습니다. 문의 글을 작성해보세요 !
			</div>
		</li>
	`
	}
	$ul.append(text);
}


									
