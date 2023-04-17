/**
 * 
 */

var listWrap = $('.ui-accordion').children('.ui-accordion-list'),
	click = listWrap.children('li').find('.ui-accordion-click');

click.on('click', function() {
	var view = $(this).next('.ui-accordion-view'),
		list = $(this).parent('li');

	if (!list.hasClass('active')) {
		list.addClass('active').siblings('li').removeClass('active').find('.ui-accordion-view').addClass('hide');
		view.removeClass('hide')
		$(this).next('.ui-accordion-view').toggle();

	} else if (list.hasClass('active')) {
		list.removeClass('active');
		view.addClass('hide')
		$(this).next('.ui-accordion-view').toggle();
	}
});