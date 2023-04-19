<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="main.css">
<title>mealkitLand</title>
</head>
<body>

<article class="main-article">
    <div class="frame-sm">
        <h2 class="blind">상품 카테고리</h2>
        <div class="swiper main-category-btn-wrapper">
            <div class="category-btn-list-cover swiper-container-initialized swiper-container-horizontal">
                <ul class="swiper-wrapper category-btn-list">
                    <li class="swiper-slide category-btn-item swiper-slide-active" style="width: 78px; margin-right: 20px;">
                        <a href="/product/list?depth1=R402" class="category-btn-item-inn">
                            <figure class="category-btn-boxing">
                                <div class="category-btn-item-ico-wrap" style="width: 78px; height: 78px;">
                                    <i class="ico-for-family"></i>
                                </div>
                                <figcaption class="category-btn-item-subject">지역특산물</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li class="swiper-slide category-btn-item swiper-slide-next" style="width: 78px; margin-right: 20px;">
                        <a href="/promotion/exhibit/hiddenList?exhibitionCd=EX202204150000000014" class="category-btn-item-inn">
                            <figure class="category-btn-boxing">
                                <div class="category-btn-item-ico-wrap" style="width: 78px; height: 78px;">
                                    <i class="ico-for-new"></i>
                                </div>
                                <figcaption class="category-btn-item-subject">아침</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li class="swiper-slide category-btn-item" style="width: 78px; margin-right: 20px;">
                        <a href="/display/gift" class="category-btn-item-inn">
                            <figure class="category-btn-boxing">
                                <div class="category-btn-item-ico-wrap" style="width: 78px; height: 78px;">
                                    <i class="ico-for-gift"></i>
                                </div>
                                <figcaption class="category-btn-item-subject">점심</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li class="swiper-slide category-btn-item" style="width: 78px; margin-right: 20px;">
                        <a href="/product/list?depth1=R019" class="category-btn-item-inn">
                            <figure class="category-btn-boxing">
                                <div class="category-btn-item-ico-wrap" style="width: 78px; height: 78px;">
                                    <i class="ico-for-chicken_breast"></i>
                                </div>
                                <figcaption class="category-btn-item-subject">저녁</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li class="swiper-slide category-btn-item" style="width: 78px; margin-right: 20px;">
                        <a href="/product/list?depth1=R020" class="category-btn-item-inn">
                            <figure class="category-btn-boxing">
                                <div class="category-btn-item-ico-wrap" style="width: 78px; height: 78px;">
                                    <i class="ico-for-instant"></i>
                                </div>
                                <figcaption class="category-btn-item-subject">술·안주</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li class="swiper-slide category-btn-item" style="width: 78px; margin-right: 20px;">
                        <a href="/product/list?depth1=R021" class="category-btn-item-inn">
                            <figure class="category-btn-boxing">
                                <div class="category-btn-item-ico-wrap" style="width: 78px; height: 78px;">
                                    <i class="ico-for-packed_meal"></i>
                                </div>
                                <figcaption class="category-btn-item-subject">야식</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li class="swiper-slide category-btn-item" style="width: 78px; margin-right: 20px;">
                        <a href="/product/list?depth1=R040" class="category-btn-item-inn">
                            <figure class="category-btn-boxing">
                                <div class="category-btn-item-ico-wrap" style="width: 78px; height: 78px;">
                                    <i class="ico-for-beef"></i>
                                </div>
                                <figcaption class="category-btn-item-subject">건강</figcaption>
                            </figure>
                        </a>
                    </li>
                    
                    
                    </ul>
            <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
            <button type="button" class="category-control swiper-button-next" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false">
                <i class="ico-arr-right"></i>
                <span class="blind">다음 슬라이드 보기</span>
            </button>
            <button type="button" class="category-control swiper-button-prev swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true">
                <i class="ico-arr-left"></i>
                <span class="blind">이전 슬라이드 보기</span>
            </button>
        </div>
    </div>
</article>

<section id="contents" class="container">

            <script src="/resources/pc/js/product/product.js"></script>
<script src="/resources/pc/js/order/cart.js"></script>

<script>

    // 종류별상품 상품호출 표준객체
    let   vUrl        = '/main/load',
        refs        = {},
        clicked = new Array()
        mainRefs = {};



    let intervalId = null,
        timer = 0;



    // 장바구니 관련 함수
    var mainCart = {

        // 장바구니 알림메세지
        openToastPop : function (message) {

            let containerWrap = $('.container');

            containerWrap.append('<div class="toast-pop"><div class="message"><p class="txt">' + message + '</p></div></div>')

            setTimeout(function () {
                closeToastPop()
            }, 1000)
        },

        fnProdCartChk : function () {

            const $that   = $(this);
            const chkSize = $that.parents('div.mix-prod-list').find('[name=check-cart]:checked').length;

            if (chkSize < 1) {
                mainCart.openToastPop('상품을 선택해 주세요.');
                return false;
            }

            // 장바구니 배열
            var orderArray = [];

            $that.parents('div.mix-prod-list').find('[name=check-cart]:checked').each( function(idx, obj) {
                // 장바구니
                var order = {};
                order.v_productcd   = $(obj).parent().data('v-productcd');
                order.v_uproductcd  = $(obj).parent().data('v-productcd');
                order.v_gproductcd  = $(obj).parent().data('v-productcd');
                order.v_add_prod_yn = 'N';
                order.n_qty         = 1;

                orderArray.push(order);
            });
            // order.v_onepack_yn  = 'N';
            // order.v_exhibition_cd = '';
            // order.v_timesale_cd = '';



            // 장바구니 저장함수
            fnCartInsert('01', orderArray, function(status, cartType){
                mainCart.openToastPop('선택하신 상품이 장바구니에 담겼습니다');
                $('.checkbox').prop('checked', false);
                return false;
            }, '');
        }
    };




    $(document).ready( function() {
        $('.checkbox').prop('checked', false);
        addBtnEvent();              // 버튼이벤트할당
        fnMainInit();               // 메인이벤트 실행
        fnLozad();

        $('.main-tab-tab > li:first-child').click();

        
    });




    // 메인이벤트
    function fnMainInit() {

        $('.ui-tab').find('a').on('click', function (e){
            e.preventDefault ? e.preventDefault() : (e.returnValue = false); // a태그 클릭시 브라우저 상단 이동 방지
        })

        let observer = lozad();
        observer.observe();
    }


    
    function fnEventWinPopup() {
        
        if($('div.winPopup').length > 0) {
            let data = $.param({eventCd: $('div.winPopup').data('id'),
                eventType: 'E02',
                winListStr: $('input[name=winListStr]').val()
            });
            $('div.winPopup').load('/promotion/event/winPopup', data);
        }
    }


    // 버튼이벤트 할당
    function addBtnEvent() {
        $('.ui-check-cart').off('click').on('click', mainCart.fnProdCartChk);
        //$('.tab-category-menu > li').off('click').on('click', fnTabCategoryChange);

        //$('.swiper-button-next, .swiper-button-prev, .ui-tab-cnt .swiper-pagination-bullet, .ui-tab-cnt.active .swiper-pagination-bullet').off('click').on('click', getProductPageList);


        $('.main-tab-tab > li').off('click').on('click', fnTabCategoryChange);
    }




    // 상품 조회조건 객체할당
    function fnGetParam() {
        return {
            startRownum    : refs.startIndex,   // 페이징 시작기준
            pageSize       : refs.maxSize,      // 페이징 호출 총개수
            load           : 'PRD010',          // 공통상품쿼리 구분코드
            vChannel       : 'PC',              // 채널코드
            vUcategorycd   : refs.ucategorycd,  // 상위 카테고리코드
            vCategorycd    : refs.categorycd    // 카테고리코드
        };
    }



    // 카테고리 중분류 변경
    function fnTabCategoryChange() {


        const $that = $(this);

        // 카테고리에 해당하는 상품 조회
        const _prdNode = $that.parents('article'),
            _dtlNode = $that;

        const tabButton = $('ul.main-tab-tab .article-tab');
        const tabContent = $('.artcle-productCategory');

        // console.log($that.data('type'));

        const bType = $that.data('type');

        tabButton.removeClass('current');
        tabContent.removeClass('current');

        tabContent.each(function(index,obj){
            if(bType == $(obj).data('type')) {
                tabContent.eq(index).addClass('current');
                tabButton.eq(index).addClass('current');
            }
        });
        fnCssCategoryProduct(_prdNode, _dtlNode);
    }




    // 상품목록 CSS 속성
    function fnCssCategoryProduct(_prdNode, _dtlNode) {

        refs = {};

        const nodeIndex  = $(_prdNode).find('.tab-category-menu > li[class=current]').index(),
            nodeArea   = $(_prdNode).find('.ui-tab-container').find(".ui-tab-cnt");

        $(nodeArea).removeClass("active")               // 전체삭제
        $(nodeArea).eq(nodeIndex).addClass("active");   // INDEX ON

        if ($(nodeArea).eq(nodeIndex).find(".swiper-slide ul li").length > 0) {
            return false;
        }

        if (isMainNotEmpty(_dtlNode)) {
            // 선택된 카테고리 코드정보
            //const categoryCd = $(_dtlNode).data('code');
            //refs.ucategorycd = $(_dtlNode).data('type');
            refs.categorycd = $(_dtlNode).data('type');

            /* if (categoryCd !== 'all') {
                 refs.ucategorycd = $(_prdNode).data('type');
                 refs.categorycd  = $(_dtlNode).data('code');  // 카테고리 항목있음 >> 중카테고리
             }*/

        } else {

            refs.ucategorycd = $(_prdNode).data('type');
        }
        //refs.ucategorycd = $(_dtlNode).data('type');
        refs.categorycd = $(_dtlNode).data('type');

        refs.maxSize    = 2;
        refs.startIndex = 1;
        refs.list       = $('.div-article.current');

        let bType = refs.list.data('type');
        let cIndex = clicked.indexOf(bType);

        // 상품 데이터 가져오기
        if(cIndex == -1) {
            clicked.push(bType);
            fnLoad('load', 'category');
        } else {
            $('.div-article.artcle-productCategory.on').removeClass('on');
            $('.div-article.artcle-productCategory.current').addClass('on');
        }
    }




    // 종류별상품 페이징에 해당하는 상품조회
    function getProductPageList() {


        refs = {};

        let $that = $(this);

        if (this.nodeName === 'BUTTON') {
            $that = $that.siblings('.swiper-page-wrap').find('.swiper-pagination-num .swiper-pagination-bullet.swiper-pagination-bullet-active');
        }

        const pageNum  = Number($that.text()), // 페이징넘버
            startIdx = (pageNum*8) -8;       // 시작 INDEX

        // 상품 노출되는 영역
        const $slideTarget = $that.parents('.swiper-page-wrap').siblings('.swiper-wrapper').find('.swiper-slide').eq($that.index());
        // 선택된 페이지에 상품정보 유무 판단
        if ( $slideTarget.find('ul li').length > 0 ) {
            return;
        }

        refs.ucategorycd = $that.parents('article').data('type');                                   // 상위카테고리
        refs.categorycd  = $that.parents('.tab-category-slide').find('li.current').data('code');    // 중카테고리
        refs.startIndex  = startIdx === 0 ? 1 : startIdx;                                           // 시작번호
        refs.maxSize     = 8;                                                                       // 최종번호
        refs.list        = $slideTarget.find('ul');

        if (refs.categorycd === 'all') {
            refs.categorycd = $that.parents('article').data('type');
            refs.ucategorycd = '';
        }

        fnLoad('load', 'page');
    }


    // 상품 데이터 가져오기
    function fnLoad( type, target ) {
        // HTTP Header
        $.ajaxSetup({ headers : { 'X-CSRF-TOKEN': $('meta[name="_csrf"]').attr('content') }});

        // HTTP Request
        $.post(vUrl, fnGetParam(), function (elem) {
            if (target === 'category') {
                setProductCategoryData(type, elem); // 카테고리상품
            } else {
                setProductPageData(type, elem);     // 페이지상품
            }


            setTimeout(addBtnEvent, 500);
        });
    }

    // 상품 해당카테고리의 페이징결과 상품세팅
    function setProductPageData(reqType, prodData) {

        const elem = prodData;

        // 적용기준태그
        const targetTag = refs.list;
        targetTag.empty();


        let loopIdx     = 0,
            filterIndex = 0;

        let setSubPage = false;

        $(elem).filter( function( item, obj ) {

            var sideTag_div = '';

            /* ================================================================================
             * [STEP-01] 응답받은 상품내역을 세팅
             * ================================================================================ */
            if (obj.nodeName === 'LI') {
                targetTag.append(obj.outerHTML);
            }
        });


        // 이미지 lozad 실행
        fnLoadCallback(elem);


    }

    // 상품 중카테고리에 해당하는 상품세팅
    function setProductCategoryData(reqType, prodData) {
        const type = reqType,
            elem = prodData;

        // 적용기준태그
        const targetTag = refs.list;

        if (type === 'load') {
            targetTag.empty();
        }
        const dType = targetTag.data('type');
        targetTag.append("<ul class='prd-item-list grid-area-span4 gap25 prod-dtl-list'></ul>" +
            "<div class='text-center'>" +
            "<a class='btn-article-md aricle-more-btn' href='/product/list?depth1="+dType+"'>"+
            "<span>전체보기</span><i class='ico-arr-right'>"+
            "</a>"+
            "</div>");

        let loopIdx     = 0,
            filterIndex = 0;

        let setSubPage = false;

        $(elem).filter( function( item, obj ) {
            //console.log(obj.outerHTML);
            var sideTag_div = '';

            /* ================================================================================
             * [STEP-01] 응답받은 상품내역을 세팅
             * ================================================================================ */
            if (obj.nodeName === 'LI') {

                // var sideTag_ul  = '';
                //
                // if (filterIndex%8 === 0) {
                //     // 8개마다 페이징 분할작업
                //     loopIdx = filterIndex/8;
                //     sideTag_div = "<div class='' data-index='" + loopIdx + "'><ul class='prd-item-list grid-area-span4 gap25 prod-dtl-list'></ul></div>";
                //     targetTag.append(sideTag_div);
                // }
                // // 상품 그리기
                // sideTag_ul = targetTag.find("div[data-index="+ loopIdx +"] > ul");

                targetTag.find(".prd-item-list").append(obj.outerHTML);




            }

            /* /!* ================================================================================
              * [STEP-02] 응답 총 개수에 대한 페이징을 세팅
              * ================================================================================ *!/
             if (obj.name === 'gvResultTotalCount' && !setSubPage) {

                 let totCnt = obj.value;

                 if (totCnt > 16) totCnt = 16;

                 const grpCnt = Math.ceil(totCnt/16);

                 for ( var i = 1; i < grpCnt; i++ ) {
                     sideTag_div = "<div class='' data-index='" + i + "'><ul class='prd-item-list grid-area-span4 gap25 prod-dtl-list'></ul></div>";
                     targetTag.append(sideTag_div);
                 }

                 setSubPage = true;
             }*/
        });


        // 이미지 lozad 실행
        fnLoadCallback(elem);

        $('.div-article.artcle-productCategory.on').removeClass('on');
        targetTag.addClass('on');
    }





    
     



<script>
    $(document)
        .ready(function () {
            let screenWidth   = document.body.clientWidth;
            let screenHeight  = document.body.clientHeight;

            
            if ($('input[name=mainPop]').length > 0) {
                $.each($('input[name=mainPop]'), function(idx, item) {
                    let popupid     = $(item).data('id');
                    let displayPage = $(item).data('display');
                    let width       = $(item).data('width');
                    let height      = $(item).data('height') + 27;
                    let loc         = $(item).data('loc');
                    let left        = null;
                    let top         = null;

                    
                    switch (loc) {
                        case 'ct' : 
                            left    = (screenWidth/2) - (width/2);
                            top     = 0;
                            break;
                        case 'lt' : 
                            left    = 0;
                            top     = 0;
                            break;
                        case 'rt' : 
                            left    = screenWidth - width;
                            top     = 0;
                            break;
                        case 'cc' : 
                            left    = (screenWidth/2) - (width/2);
                            top     = (screenHeight/2) - (height/2);
                            break;
                        case 'cb' : 
                            left    = (screenWidth/2) - (width/2);
                            top     = screenHeight - height;
                            break;
                        case 'lb' : 
                            left    = 0;
                            top     = screenHeight - height;
                            break;
                        case 'rb' : 
                            left    = screenWidth - width;
                            top     = screenHeight - height;
                            break;
                        default : break;
                    }
                    
                    let option = 'width=' + width + ', height=' + height + ', left=' + left + ', top=' + top;

                    console.log("height > ",height);

                    window.open('/display/popup?popupid='+popupid+'&displayPage='+displayPage, '_blank', option);
                });
            }

            
            if ($('div.main-view-popup').length < 1) $('div[name=main_popup]').remove();

            
            // if ($('.main-auto-slide').length > 0) { mainAutoSlide(); }

            
            $('button.main-close-pop').on('click', function (e) {
                let that = $(this);
                that.closest('div[data-name="main-view-popup"]').remove();

                if ($('div[data-name="main-view-popup"]').length == 0) $('div[data-name="main-popup"]').remove();
                if ($('div.main-view-popup').length === 0) $('body').removeAttr('style');
            });

            $('.pop-close-01').on('click', function (e) {
                let that = $(this).closest('div[data-name="main-view-popup"]');
                setMainPopCookie(that, 'day');
                if ($('div.main-view-popup').length === 0) $('body').removeAttr('style');
            });

            $('.pop-close-02').on('click', function (e) {
                let that = $(this).closest('div[data-name="main-view-popup"]');
                setMainPopCookie(that, 'all');
                if ($('div.main-view-popup').length === 0) $('body').removeAttr('style');
            });

            if ($('div.main-view-popup').length > 0) {
                $('body').css('overflow', 'hidden');
            }
        })
    ;

    function setMainPopCookie(that, type) {
        let name    = 'rankPopMain';
        let coo     = getCookie('rankPopMain');
        let value   = that.data('id');
        let items   = !isEmpty(coo) ? coo.split(',') : [];

        if (coo != undefined) {
            let idx = items.indexOf(value);

            if (idx == -1 && type == 'day') { 
                items.push(value);
                setCookie(name, items, 1);
            }
            else if (idx == -1 && type == 'all') { 
                items.push(value);
                setCookie(name, items, 999);
            }
        }
        else {


            if (type == 'day') {
                items.push(value);
                setCookie(name, items, 1);
            }
            else if (type == 'all') {
                items.push(value);
                setCookie(name, items, 999);
            }
        }
        that.remove();

        if ($('div[data-name="main-view-popup"]').length == 0) $('div[data-name="main-popup"]').remove();
    }

    // function mainAutoSlide(){
    //     var mainAutoSwiper = new Swiper('.main-view-popup.type01 .swiper-container', { // 1단일경우
    //         slidesPerView: 1,
    //         slidesPerGroup: 1,
    //         spaceBetween : 0,
    //         watchOverflow : true,
    //         pagination: {
    //             el: '.swiper-pagination',
    //             clickable: true
    //         },
    //         on: {
    //             init: function () {
    //                 if($('.main-view-popup.type01 .swiper-slide').length < 2){
    //                     $('.main-view-popup.type01').addClass('disabled');
    //                 } else {
    //                     $('.main-view-popup.type01').removeClass('disabled');
    //                 }
    //             }
    //         }
    //     });
    //     var mainAutoSwiper = new Swiper('.main-view-popup.type02 .swiper-container', { // 2단일경우
    //         slidesPerView: 2,
    //         slidesPerGroup: 2,
    //         spaceBetween : 0,
    //         watchOverflow : true,
    //         pagination: {
    //             el: '.swiper-pagination',
    //             clickable: true
    //         },
    //         on: {
    //             init: function () {
    //                 if($('.main-view-popup.type02 .swiper-slide').length < 3){
    //                     $('.main-view-popup.type02').addClass('disabled');
    //                 } else {
    //                     $('.main-view-popup.type02').removeClass('disabled');
    //                 }
    //             }
    //         }
    //     });
    //     var mainAutoSwiper = new Swiper('.main-view-popup.type03 .swiper-container', { // 3단일경우
    //         slidesPerView: 3,
    //         slidesPerGroup: 3,
    //         spaceBetween : 0,
    //         watchOverflow : true,
    //         pagination: {
    //             el: '.swiper-pagination',
    //             clickable: true
    //         },
    //         on: {
    //             init: function () {
    //                 if($('.main-view-popup.type03 .swiper-slide').length < 4){
    //                     $('.main-view-popup.type03').addClass('disabled');
    //                 } else {
    //                     $('.main-view-popup.type03').removeClass('disabled');
    //                 }
    //             }
    //         }
    //     });
    // }
</script><div class="side-quick-area fixed static">

    <div class="side-quick" style="top: -380.4px;">
        <div class="recent-list">
            <a href="/common/recentProduct/list" class="recent-heading">
                <h5 class="recent-title">최근 본 상품<span class="recent-cnt">(0)</span></h5>
            </a>
            </div>

        <ul class="bnrs">

            <li><a href="javascript:fnExpressPop();"><img src="https://file.rankingdak.com/image/RANK/BANNER/AR_IMG_1/20230419/IMG1681UfY890476355.png" alt=""></a></li>
                <li>
                    <a href="/product/list?depth1=R031&amp;depth2=R176"><img src="https://file.rankingdak.com/image/RANK/BANNER/AR_IMG_1/20230419/IMG1681Xyy890561004.png" alt=""></a>
                    </li>
            <li>
                        <div class="side-event">
                                    <a href="javascript:void(0)">
                                                <img src="https://file.rankingdak.com/image/RANK/BANNER/AR_CLOSE/20230419/IMG1681IJX890452208.png" alt="">
                                            </a>
                                        </div><!--// side-event -->
                            </li>
                </ul><!--// bnrs -->
        <a href="javascript:void(0);" onclick="goTop()" class="aside-scroll-control">
            <span class="aside-scroll-control-txt">TOP</span> <img src="/resources/pc/images/icon/ico-go-up.png" alt="">
        </a>
</div><!--// side-quick -->
</div>

<div class="side-event-wide content-min" style="display: none; right: -132.8px; bottom: 301px;">
                    <a href="https://www.rankingdak.com/product/list?depth1=R036">
                                <img src="https://file.rankingdak.com/image/RANK/BANNER/AR_OPEN/20230313/IMG1678UlB688986993.png" alt="">
                            </a>
                        <button type="button" class="btn-close"><span class="blind">접기</span></button>
                </div>
            <!-- 배송 가능 지역 검색 팝업 -->
<form id="postSearchForm" name="postSearchForm" action="/?utm_source=google&amp;utm_medium=SA_RE&amp;utm_campaign=performance&amp;utm_content=1.%EC%9E%90%EC%82%AC%EB%AA%85&amp;utm_term=%EB%9E%AD%ED%82%B9%EB%8B%AD%EC%BB%B4&amp;gclid=EAIaIQobChMIqtHQ8cm1_gIVEFZgCh0MuQ5mEAAYASAAEgIT9_D_BwE" method="post" onsubmit="return false;"><input type="hidden" name="resultType" value="json">
    <input type="hidden" name="pageSize" value="5">

    <input type="hidden" name="vPostcd">
    <input type="hidden" name="vJibunAddr">
    <input type="hidden" name="vRoadAddr">

    <div id="jusoDiv" class="searchPop">
    </div>
<div>
<input type="hidden" name="_csrf" value="7fce8cdd-6249-4d0f-9f0b-e7ab27a306ec">
</div></form><script type="text/javascript">

    $(document).ready(function () {
        $('.recent-info').click(function(){
            document.location.href = '/common/recentProduct/list';
        });

        // 임시 배송 가능 지역 팝업 닫기
        $(document).on('click', '#jusoDiv .btnClose', function () {
            $('#jusoDiv').html('');
        });
    });

    function fnExpressPop() {
        $('#jusoDiv').load('/display/expressDeliverySearchPop');
    }

    // 주소검색
    function openPostSearchForm(nowPageNo) {
        $("#postSearchForm input[name=nowPageNo]").val(nowPageNo);
        const param = $("#postSearchForm");
        $('#jusoDiv').load('/display/juso/getAddrApi', param.serialize());
    }

    // 주소클릭
    function postReturn(data) {

        $('#postSearchForm input[name=vPostcd]').val(data.zipno);
        $('#postSearchForm input[name=vJibunAddr]').val(data.jibunAddr);
        $('#postSearchForm input[name=vRoadAddr]').val(data.roadAddr);

        const param = $("#postSearchForm");

        $('#jusoDiv').load('/display/expressDeliveryResultPop', param.serialize());
    }

    // 배송지등록하기
    function openUserDeliveryForm() {
        $('#jusoDiv').load('/display/expressDeliveryRegPop');
    }


</script>
</section>

</body>
</html>