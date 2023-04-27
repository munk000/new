/**
 * 
 */

/* 모달열기 */
function fnOpen() {
	$('#popup-sample01').css('display', 'block')
}

/* 모달닫기*/
function fnClose() {
	// $('#orderProductPopUp').html('');
	// $('body').removeAttr('style');
	$('#popup-sample01').css('display', 'none')
}


/* 모달 내에서 상품 선택 */
function goChoose() {
	let arr = [];
	const check = $("input:radio[name^='radio_chk']:checked");
	if (check.length == 0) {
		alert("상품을 선택해주세요.");
		return false;
	}
	$.each(check, function(i, v) {
		arr.push(v.dataset);
	});

	fnSetProduct(arr);
	fnClose();
}

/* 게시판 답변 열고 닫기 */
// function selectBox (e) {
$(document).on('click', '.select-value', function(e) {
	if (!$(this).hasClass('disabled')) {
		if ($(this).parent('.ui-select').hasClass('on')) {
			selectBoxClose();
		} else {
			selectBoxClose();
			$(this).parent('.ui-select').addClass('on');
			$('.select-list').css('display', 'block');
		}

		$('body').on('click', function(e) {
			if ($(e.target).closest('.ui-select').length === 0 && $('.ui-select').hasClass('on')) {
				selectBoxClose()
			}
		})
	}
});

$(document).on('click', '.select-list a', function() {
	selectBoxAction(this);
})
// }

function selectBoxAction(el) {
	var listValue = $(el).children('span').text();

	$(el).parents('.select-list').find('ul li a').removeClass('selected');
	$(el).addClass('selected');
	$(el).parents('.ui-select').find('.select-value span').text(listValue);

	var selectedValue = $(el).parent('li').data('name');
	$(el).parents('.ui-select').data('value', selectedValue);

	if ($(el).hasClass('selected')) {
		if (!$(el).parent('li').hasClass('first')) {
			$(el).parents('.select-list').prev('.select-value').removeClass('placeholder');
		} else if ($(el).parent('li').hasClass('first')) {
			$(el).parents('.select-list').prev('.select-value').addClass('placeholder');
			$(el).parents('.ui-select').attr('data-value', '');
		}
	}

	selectBoxClose();
}


function selectBoxClose() {
	$('.ui-select').removeClass('on');
	$('.select-list').css('display', 'none');
	// return false;
}


 
var listWrap = $('.ui-accordion').children('.ui-accordion-list'),
	click = listWrap.children('li').find('.ui-accordion-click');

click.on('click', function() {
	var view = $(this).next('.ui-accordion-view'),
		list = $(this).parent('li');

	if (!list.hasClass('active')) {
		list.addClass('active');
		$(this).next('.ui-accordion-view').toggle();
		list.addClass('active').siblings('li').removeClass('active').find('.ui-accordion-view').addClass('hide');
		view.removeClass('hide')
		$(this).next('.ui-accordion-view').toggle();

	} else if (list.hasClass('active')) {
		list.removeClass('active');
		view.addClass('hide')
		$(this).next('.ui-accordion-view').toggle();
	}
});


