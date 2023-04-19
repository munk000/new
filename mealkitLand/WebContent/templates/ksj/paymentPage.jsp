<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="../../static/css/jbk/PaymentProcess.css" />
    <title>밀키트랜드</title>

</head>
<body>
	<div class="content-wrap frame-sm">
    <div class="page-title-area">
        <h2 class="title-page">
            주문/결제</h2>
    </div><!--// page-title-area -->

    <div class="order-payment-area">
        <input type="hidden" id="holidayDlvFlag" value="N">
        <form id="ordFrm" name="ordFrm" action="/order/order" method="post"><!-- 장바구니 유형 -->
            <input type="hidden" name="cartType" value="00">
            <input type="hidden" name="nonmemberYn" value="N">
            <input type="hidden" name="orangeMembersBenefit" value="point">

            <!-- 장바구니 번호 -->
            <input type="hidden" name="arrCartid" value="20230419000014858933">
            <input type="hidden" name="arrCartid" value="20230419000014863529">
            <input type="hidden" name="expDlvCommentText" value="">
            <input type="hidden" name="expDlvCommentCd" value="">
            <input type="hidden" name="norDlvCommentText">
            <input type="hidden" name="norDlvCommentCd">
            <input type="hidden" id="dlvType" name="dlvType">
            <input type="hidden" id="vCouponCd" name="vCouponCd">
            <input type="hidden" name="vProductcdArr">

            <!-- 랭크페이 vid -->
            <input type="hidden" name="rankPayBid" value="">

            <!-- 오렌지멤버스 결제인지 -->
            <input type="hidden" name="isOrangeMember" value="">

            <div class="order-info" id="orderUserInfo">
                <div class="list-head">
                    <h3 class="title-list">주문자 정보</h3>
                </div><!--// list-head -->

                <!-- 회원일때 -->
                        <div class="order-address">
                            <ul class="info-txt">
                                <li>정백교</li>
                                <li>01099117230</li>
                                <li>wjdqorry12@naver.com</li>
                            </ul>
                            <a href="/mypage/info/mypage" class="text-primary"><span>주문자 정보변경</span><i class="ico-arr-right"></i></a>
                            <input type="hidden" name="orderName" value="정백교">
                            <input type="hidden" name="orderCell" value="01099117230">
                            <input type="hidden" name="orderEmail" value="wjdqorry12@naver.com">
                        </div>
                        <!--// 회원일때 -->
                    <div class="list-head-sub">
                    <h3 class="title-list">배송지 정보</h3>

                    <!-- 베송지 정보가 있을 때 -->
                    <div class="custom-checkbox">
                                <input type="checkbox" id="sameOrderInfoChk" class="checkbox" name="check-item-1">
                                <label for="sameOrderInfoChk"> 주문자 정보와 동일</label>
                            </div>
                        </div>

                <input type="hidden" name="vExdlvArea" id="vExdlvArea">
                        <!-- 비회원일때 -->
                        <div class="lineless-table type2">
                            <input type="hidden" id="isExpressDeliveryAddrNonMember" value="N"> <!-- 주소 특급배송 여부 -->
                            <table>
                                <caption>정보 입력</caption>
                                <colgroup>
                                    <col style="width:100px">
                                    <col>
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th scope="row">받는분 <em class="es"><span class="blind">필수입력</span></em></th>
                                    <td>
                                        <input type="text" name="receiverName" title="" class="input-text w-full removeEmoji" value="">
                                    </td>
                                </tr>
                                <tr class="row-th-top"> <th scope="row">주소 <em class="es"><span class="blind">필수입력</span></em></th>
                                    <td>
                                        <div class="input-group-wrap box-type">
                                            <div class="input-group">
                                                <div class="input-group-cell w160"><input type="text" id="receiverZipcode" name="receiverPost" title="" class="input-text" placeholder="우편번호" value="" readonly=""></div>
                                                <div class="input-group-cell"><input type="text" id="receiverAddr" name="receiverAddr" title="" class="input-text" placeholder="기본주소" value="" readonly=""></div>
                                                <span class="input-group-btn">
                                                    <a href="#" class="btn-ex-white" onclick="fnPostFind(event)"><span>우편번호 찾기</span></a>
                                                </span>
                                            </div>
                                        </div>
                                        <input type="text" name="receiverAddrDtl" title="" class="input-text w-full removeEmoji" placeholder="상세주소" value="">
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">휴대전화 <em class="es"><span class="blind">필수입력</span></em></th>
                                    <td>
                                        <div class="input-group w-full">
                                            <div class="input-group-form">
                                                <div class="ui-select select-box w135" data-value="010" id="receiverCell1">
                                                    <a href="#none" title="" class="select-value" onclick="return false;"><span>010</span></a>
                                                    <div class="select-list">
                                                        <ul>
                                                            <li data-name="010"><a href="#none" onclick="return false;"><span>010</span></a></li>
                                                            <li data-name="011"><a href="#none" onclick="return false;"><span>011</span></a></li>
                                                            <li data-name="016"><a href="#none" onclick="return false;"><span>016</span></a></li>
                                                            <li data-name="017"><a href="#none" onclick="return false;"><span>017</span></a></li>
                                                            <li data-name="018"><a href="#none" onclick="return false;"><span>018</span></a></li>
                                                            <li data-name="019"><a href="#none" onclick="return false;"><span>019</span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <input type="text" name="receiverCell2" value="" title="" class="input-text" maxlength="8" onkeydown="return numberOnly(event)" onkeyup="removeChar(event)">
                                            <input type="hidden" name="receiverCell" value="">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">전화번호</th>
                                    <td>
                                        <input type="text" name="receiverPhone" title="" class="input-text w-full" maxlength="11" onkeydown="return numberOnly(event)" onkeyup="removeChar(event)">
                                    </td>
                                </tr>
                                </tbody>
                            </table>

                            <!-- 배송지 변경 시 특급배송 불가지역일 경우 -->
                            <div class="dlv-guide-box norDeliveryInfo" style="display: none;">
                                <div class="inner">
                                    <p class="message"><strong>앗!</strong> 이 배송지는 특급배송이 안되는 배송지에요. <br>서비스 지역을 열심히 확장하고 있으니 조금만 더 기다려주세요.</p>
                                </div>
                            </div>
                            <!--// 배송지 변경 시 특급배송 불가지역일 경우 -->

                        </div>
                        <!--// lineless-table -->
                    <div class="dlv-guide-box type02" id="express-dlv-guide-box" style="display : none;">
                    <div class="inner">
                        <div class="message-exp">
                            <div class="left-item">
                                <p class="guide-message"><strong>-12,900원</strong> 더 구매하고 <em class="imgbadge-dlv-exp"><span class="blind">특급배송</span></em> 받으세요!</p>
                            </div>
                            <div class="right-item">
                                <a href="/display/expressDeliveryList" class="prd-add">상품 추가</a>
                            </div>
                        </div>
                    </div>
                </div>
                    </div>
            <!--// order-info -->

            <input type="hidden" id="deliveryTabType" value="Y">

            <div class="order-info">
                    <input type="hidden" id="isDeliveryTab" value="false">


<!-- wnsgml351 인수인계 추가 - 특급배송 상품이 없는 경우 또는 주소가 없는 경우 배송방법 선택 표시 X -->
<div class="list-head" id="dlvDlvTypeChk" style="display:none;">
    <h3 class="title-list dlv_express_no_area">배송방법 선택</h3>
    <button type="button" class="btn-icon-mark ui-tooltip dlv_express_no_area"><i class="ico-quest"></i><span class="blind">도움말</span></button>
    <div class="tooltip-box ui-tooltipbox-right dlv_express_no_area">
        <div class="inner" style="width:300px;">
            <div class="dlv-guide-tip">
                <p class="tit">'12시간' 내에 집 앞에 딹, <strong class="text-primary">특급배송</strong></p>
                <ul class="tip-desc">
                    <li><span style="font-weight: bold;color:#333333;">13시</span> 이전 주문 시 <strong class="text-primary">오늘 저녁</strong> 도착!</li>
                    <li><span style="font-weight: bold;color:#333333;">20시</span> 이전 주문 시 <strong class="text-primary">내일 새벽</strong> 도착!</li>
                </ul>
                <ul class="bl-list-type2">
                    <li>특급배송 상품 <span class="text-primary">4만원 이상 구매</span> 시, 무료배송</li>
                    <li>특급배송은 수도권, 충청권, 대구 지역만 제공</li>
                    <span style="color: #999;font-size: 12px;word-break: break-word;text-align: left;">(대구 지역은 18시 전 주문 시 익일 새벽에 도착합니다.)</span>
                </ul>
            </div>
            <button type="button" class="btn-x-sm ui-tooltip-close" title=""><i class="ico-x-grey2"></i><span class="blind">닫기</span></button>
        </div><!--// inner -->
    </div><!--// tooltip-box -->

    <div class="radio-box-group dlv-tab dlv_express_no_area">
        <!-- 특급배송비가 0원 일 경우 특급배송 체크 아닐 경우 일반배송 체크 -->
        <div class="custom-radio">
            <input type="radio" id="radio-dlv-exp" class="radio-box-type2 dlvTab" name="expressDlv" value="Y" data-is-exp-dlv-prod="Y" data-dlv-type="EXP">
            <label for="radio-dlv-exp"><i class="ico-txt-exp"></i><span class="blind">특급배송</span></label>
        </div>
        <div class="custom-radio">
            <input type="radio" id="radio-dlv-normal" class="radio-box-type2 ui-normal-dlv dlvTab" name="expressDlv" value="N" data-is-exp-dlv-prod="Y" data-dlv-type="NOR" checked="">
            <label for="radio-dlv-normal">일반배송</label>
        </div>

        <div class="dlv-tipbox-bottom type2" style="display:block">
            <p class="txt"><b>특급배송</b> 신청하고 빠른 배송 받아보세요!</p>
        </div>
    </div>
</div>
<!--// list-head --><!-- 일반배송 -->
<div class="order-item-box">

    <div id="userOrderList">

        <div class="delivery-state normal">
            <h4 class="tit">주문상품 1개</h4>
                <div class="right-dlv-info">
                <i class="ico-bl-box2"></i>
                <p class="txt">
                    <span id="dlvPrice">무료배송</span>
                </p>
            </div>
        </div>

        <div class="delivery-guide type02" id="delivery-guide-1600"><div class="type02-inner"><p class="txt">무료배송</p></div></div>
            <ul class="cart-list" data-dlv-cd="1600" data-delivery-state="normal" data-n-dlv-price="0">
                <li>
                        <div class="prd-info-area ">

                            <input type="hidden" class="vProductCd" value="24931">

                            <div class="inner">
                                <div class="column img"><a href="javascript:void(0);"><img src="https://file.rankingdak.com/image/RANK/PRODUCT/PRD001/20220325/6473e755cba869aacc30656bc3e2b3bf_100_100.jpg" alt="상품이미지"></a></div>
                                <div class="column tit">

                                    <p class="tit"><a href="javascript:void(0);">[잇메이트] 250g으로 든든하게, 닭가슴살 몬스터 볶음밥 이지쿡</a></p>
                                    <p class="desc">김치 10팩</p>

                                        <p class="desc"></p>

                                    <ul class="price-item">
                                        <li><span class="num">32,900</span>원</li>
                                        <li><span class="num">1</span>개</li>

                                    </ul>

                                </div>

                                <div class="column price w70">
                                    <span class="num">32,900</span>원
                                </div>


                                </div>

                            </div>

                        </li>
                                <li id="cold-add-li-1600" style="display: block" class="coldAddLi">
                                        <div class="added-btn">
                                            <a href="#popup-cold-add" class="btn-rud-sm btn-blue-line btn-add-cold" data-icepack-prodcd="14897" data-icepack-price="300" data-dryice-prodcd="" data-dryice-price="0" data-cold-add-li-cd="1600" onclick="return false;">
                                                <i class="ico-btn-ice"></i><span>보냉제 더 담기</span>
                                            </a>
                                        </div>
                                    </li>
                                <script>
                                $(function () {
                                    const dlvGrpCd = '1600';
                                    const dlvChargeCd = '00';
                                    const sumCurrDlvGrpPrdPrice = parseInt('32900');
                                    const nFreeDlvPrice = parseInt('20000');
                                    //const nDlvPrice = parseInt('0');
                                    const nDlvPrice = parseInt('0');
                                    const nIslandDlvPrice = parseInt('0');
                                    const ndlvMinPrice = parseInt('20000');
                                    const deliveryGuidedVExpressYn = 'Y';
                                    const vPaidDeliveryYn = 'N'
                                    // console.log('배송그룹코드:', dlvGrpCd);
                                    // console.log('배송그룹 배송비:', nDlvPrice);
                                    // console.log('배송그룹 도서산간 배송비:', nIslandDlvPrice);
                                    // console.log('배송그룹 상품 금액 합:', sumCurrDlvGrpPrdPrice);
                                    // console.log('무료배송금액:', nFreeDlvPrice);
                                    // console.log('신배송무료배송금액:', ndlvMinPrice);
                                    let result;
                                    // console.log('dlvChargeCd =', dlvChargeCd);
                                    if (dlvChargeCd == '00' && sumCurrDlvGrpPrdPrice >= nFreeDlvPrice && vPaidDeliveryYn != 'Y') {
                                        result = 0;
                                    } else {
                                        result = nDlvPrice;
                                    }
                                    if (deliveryGuidedVExpressYn == 'Y' && ndlvMinPrice < sumCurrDlvGrpPrdPrice) {
                                        result = 0;
                                    }

                                    totalDeliveryPrice += result + nIslandDlvPrice;
                                    // console.log('배송비:', result, ', 주문 배송비 합:', totalDeliveryPrice);
                                    totalProductPrice += sumCurrDlvGrpPrdPrice;
                                    // console.log('=> 주문결제 금액 > 상품금액 합', totalProductPrice);

                                    /* 배송비무료 안내 문구 추가 */
                                    if (result > 0) {
                                        const deliveryGuidedDlvPriceText = SetNumComma((result + nIslandDlvPrice)) + '원';
                                        var deliveryGuidedMoreFreePriceText = '';

                                        if (deliveryGuidedVExpressYn == 'Y') {
                                            deliveryGuidedMoreFreePriceText = '<p class="txt right-item">' + SetNumComma((ndlvMinPrice - sumCurrDlvGrpPrdPrice)) + '원 더 구매시 무료배송</p>';
                                        } else {
                                            if (dlvChargeCd == '00' && vPaidDeliveryYn != 'Y') {
                                                if ( (nFreeDlvPrice - sumCurrDlvGrpPrdPrice)>0 ){
                                                    deliveryGuidedMoreFreePriceText = '<p class="txt right-item">' + SetNumComma((nFreeDlvPrice - sumCurrDlvGrpPrdPrice)) + '원 더 구매시 무료배송</p>';
                                                }
                                            }
                                        }

                                        $("#delivery-guide-" + dlvGrpCd).html(
                                            '<div class="type02-inner"><p class="txt left-item">배송비 <strong>' + deliveryGuidedDlvPriceText + '</strong></p>' + deliveryGuidedMoreFreePriceText + '</div>'
                                        );

                                    } else {
                                        $("#delivery-guide-" + dlvGrpCd).html(
                                            '<div class="type02-inner"><p class="txt">무료배송</p></div>'
                                        );
                                    }
                                });
                            </script>

                            </ul>
        <script>
            $(function () {
                $('ul.cart-list').each(function (i, v) {
                    if ($(this).find('li').length < 1) {
                        $(this).remove();
                    }
                });

                const addIslandDlvPrice = parseInt('0');

                let dlvPriceText = SetNumComma(totalDeliveryPrice) + '원';

                if (0 < addIslandDlvPrice) {
                    dlvPriceText += ' (도서산간 배송비 포함)';
                }

                if (totalDeliveryPrice == 0) {
                    dlvPriceText = '무료배송'
                }
                $('#dlvPrice').text(dlvPriceText);

                totalDeliveryPrice = parseInt('0') + parseInt('0');
                // 배송비
                $('#txt_tot_dlv_price').text(SetNumComma(totalDeliveryPrice));
                $('input[name=tot_dlv_price]').val(totalDeliveryPrice);

                $('.discountType').hide();

                const orangeBenefit = $('input[name="orangeMembersBenefit"]').val();
                $('div.orangeMember-Info').hide();

                // 주문결제 금액 - 상품금액 합
                // console.log('===> 주문결제 금액 - 상품금액 합', totalProductPrice);
                $('#txt_tot_price').text(SetNumComma('32900'));
                $('input[name=tot_price]').val(totalProductPrice);

                // 포인트할인
                // pointDiscount
                pointDiscount = parseInt('0');
                // console.log('포인트할인 : ', pointDiscount);
                $('#txt_use_point').text(SetNumComma(pointDiscount * -1));
                if (pointDiscount > 0) {
                    $('#pointDiscount').show();
                }

                // 상품쿠폰할인
                couponDiscount = parseInt('0');
                $('#txt_sale_coupon').text(SetNumComma(couponDiscount * -1));
                // console.log('상품쿠폰할인 : ', couponDiscount);
                if (couponDiscount > 0) {
                    $('#productCouponDiscount').show();
                }

                // 오렌지멤버할인
                // orangeDiscount
                orangeDiscount = parseInt('0');
                orangeDiscountShow = parseInt('650');
                if(orangeDiscountShow <= 0 ) {
                    $('#orangeMembersSale').parent().hide();
                } else {
                    $('#orangeMembersSale').parent().show();
                }
                $('#obanner-price-minus').text(SetNumComma(orangeDiscountShow)+'원');
                // console.log('오렌지멤버할인 : ', orangeDiscount);
                if( orangeBenefit === 'discount' ) {
                    $('#txt_sale_grade').text(SetNumComma(orangeDiscount * -1));
                    if (orangeDiscount > 0) {
                        $('#orangeDiscount').show();
                    }
                }
                // $('#deliveryCouponDiscount').show();
                // $('#orderCouponDiscount').show();

                // 총 할인금액
                //const totalDiscountPrice = pointDiscount + couponDiscount + orangeDiscount;
                let totalDiscountPrice = 0;
                if( orangeBenefit === 'discount' ) {
                    totalDiscountPrice = pointDiscount + couponDiscount + orangeDiscount;
                } else {
                    totalDiscountPrice = pointDiscount + couponDiscount;
                }
                $('#totalDiscountPrice').text(SetNumComma(totalDiscountPrice * -1));

                //총 결제금액
                const totalPgPrice = totalProductPrice - (pointDiscount + couponDiscount + orangeDiscount) + totalDeliveryPrice ;
                $('#txt_tot_pg_price, #txt_btn_payment').text(SetNumComma(totalPgPrice));
                $('input[name=tot_pg_price]').val(totalPgPrice);
                // console.log('총 결제금액:', $('input[name=tot_pg_price]').val());

                totalSavePoint = parseInt('987.0');
                // console.log('적립포인트 : ', totalSavePoint);

                // 적립예정포인트
                $('#totalSavePoint').text(SetNumComma(totalSavePoint));

                const isOrangeMember = 'N';
                // console.log('isOrangeMember', isOrangeMember);
                if (isOrangeMember == 'Y') {

                    //const orangeSavePoint = '0';
                    // console.log('orangeSavePoint', orangeSavePoint);
                    //$('#totalSavePoint').text(SetNumComma(totalSavePoint + parseInt(orangeSavePoint)));

                }
                const orangeSavePoint = '0';
                const orangeSavePointShow = '987';
                if(orangeSavePointShow <= 0 ) {
                    $('#orangeMembersPoint').parent().hide();
                } else {
                    $('#orangeMembersPoint').parent().show();
                }
                $('#obanner-point').text(SetNumComma(parseInt(orangeSavePointShow))+'P');
                $('#totalSavePointOrange').text(SetNumComma(parseInt(orangeSavePoint)));
                $('#totalSavePointTot').text(SetNumComma(totalSavePoint + parseInt(orangeSavePoint)));

                if(orangeBenefit === 'point'){
                    $('#totalSavePointTot').text(SetNumComma(totalSavePoint + parseInt(orangeSavePoint)));
                } else {
                    $('#totalSavePointTot').text(SetNumComma(totalSavePoint));
                    $('#totalSavePointOrange').closest('li').hide();
                    $('#totalSavePoint').closest('li').hide();
                }

                if (0 < $('.coldAddLi').length) {
                    $('.coldAddLi:not(:first)').remove();
                }
                $('div.orangeMembers-skin-banner').parent().hide();
                if(orangeSavePointShow > 0 && orangeDiscountShow > 0) {
                    $('div.orangeMembers-skin-banner').parent().show();
                    $('#obanner-d-text').show();
                    $('#obanner-or-text').show();
                    $('#obanner-p-text').show();
                    $('div.orangeMember-Info').show();
                    
                    $("#obanner-price-minus").css("color","#cccccc");
                    
                } else if(orangeSavePointShow > 0){
                    $('div.orangeMembers-skin-banner').parent().show();
                    $('#obanner-d-text').hide();
                    $('#obanner-or-text').hide();
                    $('#obanner-p-text').show();
                } else if(orangeDiscountShow > 0) {
                    $('div.orangeMembers-skin-banner').parent().show();
                    $('#obanner-d-text').show();
                    $('#obanner-or-text').hide();
                    $('#obanner-p-text').hide();
                }
            });
        </script>
    </div>

</div><!-- 배송요청사항 -->
                <div class="dlv-request-box" id="expReqBox" style="display: none">
                        <input type="hidden" id="dayEndText" value="오후 1시 배송마감">
                            <input type="hidden" id="dawnEndText" value="오후 8시 배송마감">
                        <!-- 새벽가능일은 계산되어진 값을 바로 세팅하면 된다. -->
                    <div class="inner-div">
                        <div class="dlv-day-tit">
                            <h5 class="tit">특급배송 예정일<i class="es2"></i></h5>
                            <p class="dlv-time">
                                <i class="ico-bl-alarm"></i>
                                오후 8시 배송마감</p>
                        </div><!--// dlv-day-tit -->
                        <!-- case 1 -->
                        <!-- [Dev] 20220413 수정 : 도착 예정 -> 텍스트 예정 제거 요청 -->

                        <ul class="div-check-list">
                            <input type="hidden" id="iac" value="20">
                            <input type="hidden" id="ied" value="N">

                            <input type="hidden" id="ilabel2a" value="04/21 (금) 새벽 도착">
                            <input type="hidden" id="ilabel2b" value="">
                            <li>
                                        <div class="custom-radio">
                                            <input type="radio" id="special1" class="radio-btn" name="dayDawnChk" value="DAY">
                                            <label for="special1">
                                                <span class="">내일 도착</span>
                                            </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="custom-radio">
                                            <input type="radio" id="special2" class="radio-btn" name="dayDawnChk" checked="" value="DAWN">
                                            <label for="special2"><span>04/21 (금) 새벽 도착</span></label>
                                        </div>
                                    </li>
                                </ul><!--// case 1 -->
                        <p style="display:none;" id="guideCcDgText"></p>
                    </div>

                    <!-- 특급배송 공동현관 출입방법 -->
                    <div class="inner-div">
                        <!-- [Dev] 20220405 추가 : 공동현관 출입방법 다음에도 사용 -->
                        <div class="request-tit">
                            <h5>공동현관 출입방법 <i class="es2"></i>
                                <div class="custom-checkbox"><input type="checkbox" name="doorAccessMethodSaveYn" id="doorAccessMethodSaveYn" class="checkbox" value="Y"><label for="doorAccessMethodSaveYn">다음에도 사용</label></div>
                                </h5>
                        </div>
                        <div class="request-detail">
                            <div class="epx-m-chk-con">
                                <div class="custom-radio s-li s-li1">
                                    <input type="radio" name="epx-m-chk" id="epx-m-chk1" class="radio" value="01" checked=""><label for="epx-m-chk1" class="custom-label">공동현관 비밀번호</label>
                                    <p id="express-memo-p" style=""><input type="text" name="expressMemo01" id="express-memo" class="input-text epx-txt" placeholder="예)#101(호수) + #0000(비밀번호)" maxlength="30"><span class="notice">· 비밀번호 불일치 시 공동현관으로 배송 될 수 있습니다.</span></p>
                                </div>
                                <div class="custom-radio s-li s-li2">
                                    <input type="radio" name="epx-m-chk" id="epx-m-chk2" class="radio" value="00"><label for="epx-m-chk2" class="custom-label">자유롭게 출입가능</label>
                                </div>
                                <div class="custom-radio s-li s-li3">
                                    <input type="radio" name="epx-m-chk" id="epx-m-chk3" class="radio" value="04"><label for="epx-m-chk3" class="custom-label">출입불가</label>
                                </div>
                                <div class="custom-radio s-li s-li4">
                                    <input type="radio" name="epx-m-chk" id="epx-m-chk4" class="radio" value="05"><label for="epx-m-chk4" class="custom-label">기타 (직접입력)</label>
                                    <p id="express-memo1-p" style="display: none;"><input type="text" name="expressMemo05" id="express-memo1" class="input-text epx-txt" placeholder="공동현관 출입 방법을 입력해주세요. (최대30자)" maxlength="30"></p>
                                </div>
                            </div>

                            <!-- [Dev] 20220413 추가 : 공동현관 출입방법 선택별 안내문구 노출 -->
                            <div class="ex-delivery-memo-info">
                                <!-- 공동현관 비밀번호 선택 시 -->
                                <div class="epx-m-chk-m epx-m-chk1-m" style="">
                                    <ul class="bl-list-type2">
                                        <li class="ex-delivery-memo1 list-style01">공동현관 출입 불가 시, <span class="text-primary">공동현관 또는 경비실에 배송</span>될 수 있습니다.</li>
                                        <li class="ex-delivery-memo1 list-style01">분실의 우려가 있으니 공동현관 출입 방법을 정확히 남겨주세요.</li>
                                    </ul>
                                </div>
                                <!-- 자유롭게 출입가능 선택 시 -->
                                <div class="epx-m-chk-m epx-m-chk2-m" style="display: none;">
                                    <ul class="bl-list-type2">
                                        <li class="ex-delivery-memo1 list-style01">자유 출입이 불가한 경우 <span class="text-primary">1층 공동현관 또는 경비실 앞에 배송</span>될 수 있습니다.</li>
                                    </ul>
                                </div>
                                <!-- 출입불가 선택 시 -->
                                <div class="epx-m-chk-m epx-m-chk3-m" style="display: none;">
                                    <ul class="bl-list-type2">
                                        <li class="ex-delivery-memo1 list-style01"><span class="text-primary">관공서, 군부대, 학교, 기숙사 등 특급배송 불가</span> 일반배송으로 주문해 주세요.</li>
                                    </ul>
                                </div>
                                <!-- 기타 (직접입력) 선택 시 -->
                                <div class="epx-m-chk-m epx-m-chk4-m" style="display: none;">
                                    <ul class="bl-list-type2">
                                        <li class="ex-delivery-memo1 list-style01">요청하신 장소로 배송이 불가한 경우, 부득이하게 1층 <span class="text-primary">공동현관 또는 경비실 앞에 배송</span>될 수 있습니다.</li>
                                        <li class="ex-delivery-memo1 list-style01">배송 수령 시간 지정은 불가하며, 배송 방법과 배송 지역에 따라 시간은 상이합니다.</li>
                                        <li class="ex-delivery-memo1 list-style01">새벽에는 전화 또는 세대 호출이 불가하오니 <span class="text-primary">제품 수령 위치를 상세하게</span> 남겨주세요.</li>
                                    </ul>
                                </div>
                            </div><!--// ex-delivery-memo-info -->
                        </div><!--// request-detail -->
                    </div><!--// inner-div -->
                    <div class="inner-div inner-div-b" style="display:none;" data-alarm="" id="dlvAlarmDiv">
                        <div class="request-tit">
                            <h5>배송메시지 알림</h5>
                        </div>
                        <div class="request-detail">
                            <ul>
                                <li class="custom-radio ex-nc-li1"><input type="radio" name="invSendMsg" id="ex-nc1" class="radio" value="Y"><label for="ex-nc1" class="custom-label">배송 후 바로</label></li>
                                <li class="custom-radio"><input type="radio" name="invSendMsg" id="ex-nc2" class="radio" value="N" checked=""><label for="ex-nc2" class="custom-label">오전 7시 이후</label></li>
                            </ul>
                        </div>
                        <input type="hidden" name="dawnAlarmYn">
                    </div>

                </div>

                <div class="dlv-request-box" id="norReqBox" style="display: block">

                    <!-- 일반배송 요청사항 -->
                    <div class="inner-div">
                        <div class="request-tit"><h5>배송 요청사항</h5></div>
                        <div class="request-detail">
                            <div class="ui-select select-box w-full" data-value="" id="div_normal_comment">
                                <a href="#none" title="" class="select-value placeholder" onclick="return false;"><span>메시지를 선택해 주세요</span></a>
                                <div class="select-list">
                                    <ul>
                                            <li data-name="01" class="ui-direct-select"><a href="#direct-item-nor" onclick="return false;"><span>직접입력</span></a></li>
                                        <li data-name="02" class=""><a href="#none" onclick="return false;"><span>배송전, 연락 부탁드립니다.</span></a></li>
                                        <li data-name="03" class=""><a href="#none" onclick="return false;"><span>부재시, 전화 또는 문자 주세요.</span></a></li>
                                        <li data-name="04" class=""><a href="#none" onclick="return false;"><span>부재시, 경비(관리)실에 맡겨주세요.</span></a></li>
                                        </ul>
                                </div>
                            </div><!--// select-box-->

                            <!-- 직접입력 선택시 -->
                            <div id="direct-item-nor" class="ui-direct-input hide">
                                <input type="text" class="input-text w-full deliveryComment removeEmoji" name="dlv_memo" placeholder="배송 요청 사항을 입력하세요">
                            </div><!--// 직접입력 선택시 -->

                        </div><!--// request-detail -->
                    </div><!--// inner-div -->
                </div>

                            <!-- 주말/일회용 요청사항 -->
                            </div>
          
    </div>
    <!--// order-info -->
<script type="text/javascript">

    $(document).ready(function () {
        $(".cpn_select_btn").on('click', function (event) {
            let couponCnt = fnOnlyNumber($('#userCouponCount').text()).number;
            if (couponCnt > 0) {
                if (!$(this).hasClass('ui-open-pop')) {
                    $(this).addClass("ui-open-pop");
                    layerPop();
                    getUserOrderPrice();
                    $(this).click();
                    $(this).removeClass("ui-open-pop");
                }
            } else {
                alert("사용할 수 있는 쿠폰이 없습니다.");
            }
        });

        $('.ui-point-input').keyup(function (e) {
            if (!$(this).val()) {
                $(this).siblings('.input-group-btn').find('.btn-input-del').hide();
            } else if ($(this).val()) {
                $(this).siblings('.input-group-btn').find('.btn-input-del').show();
            }
        });

        $('.btn-input-del').on('click', function (e) {
            $(this).parent('.input-group-btn').prev('.ui-point-input').val(0);
            $(this).hide();
            fnUsePoint('');
        });

    });

    //포인트 사용
    function fnUsePoint(type) {
        $('.btn-input-del').show();
        const currentPoint = fnOnlyNumber($("#currentPoint").val()).number;
        if (currentPoint == 0) {
            return;
        }

        $("#textUsePoint").val($("#textUsePoint").val().replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1'));

        let usePointTemp = fnOnlyNumber($("#textUsePoint").val()).number;

        const txtTotPrice = fnOnlyNumber($('#txt_tot_price').text()).number;
        const txtSaleCoupon = Math.abs(fnOnlyNumber($('#txt_sale_coupon').text()).number);
        const txtSaleOrderCoupon = Math.abs(fnOnlyNumber($('#txt_sale_order_coupon').text()).number);
        const txtSaleDlvCoupon = Math.abs(fnOnlyNumber($('#txt_sale_dlv_coupon').text()).number);
        let txtSaleGrade = Math.abs(fnOnlyNumber($('#txt_sale_grade').text()).number);
        const txtTotDlvPrice = fnOnlyNumber($('#txt_tot_dlv_price').text()).number;

        const sYn = $('input[name="orangeMembersP"]:checked').val();
        if(sYn === 'point') {
            txtSaleGrade = 0;
        }

        const totPgPrice = txtTotPrice - txtSaleCoupon - txtSaleOrderCoupon - txtSaleDlvCoupon - txtSaleGrade + txtTotDlvPrice;

        if (type == 'all') {
            usePointTemp = currentPoint;
            if (totPgPrice < usePointTemp) {
                usePointTemp = totPgPrice;
            }
        }

        if (0 < usePointTemp && usePointTemp < 2000) {
            alert('적립금은 2000P 부터 사용 가능합니다.');
            $("#usePoint").val(0);
            $("#textUsePoint").val(0);
            getUserOrderPrice();
            return;
        }
        

        let usePoint = Math.floor(usePointTemp / 10) * 10;

        if (usePoint <= 0) {
            usePoint = 0;
        }

        if (totPgPrice < usePoint) {

            usePoint = totPgPrice;

            if (currentPoint < usePoint) {
                usePoint = currentPoint;
                usePoint = Math.floor(usePoint / 10) * 10;
            }
        }

        if (0 < usePoint && usePoint < 2000) {
            alert('적립금은 2000P 부터 사용 가능합니다.');
            $("#usePoint, #textUsePoint").val(0);
            getUserOrderPrice();
            return;
        }

        $("#usePoint").val(usePoint);
        getUserOrderPrice();
    }

</script>

<script type="text/javascript">
    $(document).ready(function () {

        //현금영수증 - 휴대폰번호
        $("#div_cash_type ul li[data-name='1']").click(function(){
           $("#cash-reg-num").attr('maxlength',11);
        });

        //현금영수증 - 사업자번호
        $("#div_cash_type ul li[data-name='2']").click(function(){
            $("#cash-reg-num").attr('maxlength',10);
        });

        // 랭킹페이 등록 카드정보 조회
        fnGetRankPayInfo();

        // 랭킹페이 카드 삭제 클릭 이벤트
        $('#rank_pay_card_remove').click(function(){

            if(confirm("등록된 결제정보를 삭제할 경우 나이스페이 결제 시 재 등록을 진행합니다.")){

                fnRemoveRankPayInfo();

            }

        });

        // 랭킹페이 카드 승인테스트 클릭 이벤트
        $('#rank_pay_card_approve').click(function(){

            fnTestRankPayApprove($(this).val());

        });

        $('.payCardSelect').on('click', function(e) {
            e.preventDefault();

            // 신용카드코드
            const payCardCd = $(this).data('code');

            // console.log("payCardCode " + payCardCode);
            cmAjax({
                url: '/order/order/getDpEtcGuideInfoAjax'
                , type: 'POST'
                , data: {
                    etcType     : '200',
                    payCardCd   : payCardCd
                }
                , dataType: "json"
                , success: function (data) {

                    if(data.object) {
                        $('#paymentDetailInfo').html(data.object.VDesc);
                        $('#paymentDetailInfo').parents('.payment-detail').addClass('active');
                    } else {
                        $('#paymentDetailInfo').html('');
                    }

                }
                , error: function (e) {
                    console.log(e);
                }
            });

            $('#div_pay_card').data('value','');
            $('#div_card_inst .select-list ul').html('');

            const payCardName = $(this).parent().data('name');
            if(!$(this).parent().hasClass('first')) {
                getInterestFreeCardsAjax('div_card_inst', payCardCd, payCardName);
            }

            if (payCardName == '국민' && $('input[name=isOrangeMember]').val() != 'Y'
                && $('.payment-detail-wrap input[name=pgType]').val() != 'A1') {
                $('#kbUseCardPoint').parents('span').removeClass('hide');
            } else {
                $('#kbUseCardPoint').parents('span').addClass('hide');
            }
        });

        if($('#radio-grid-4').prop('checked')){
            $('#div_pay_card .select-list li').each(function() {
                if($(this).data('name') == ''){
                    $(this).find('a').click();
                }
            });
        }

        
            getInterestFreeCardsAjax('div_pay_kbrankcard', '02', '국민');
        

        if ($('input[name=isOrangeMember]').val() == 'Y' || $('.payment-detail-wrap input[name=pgType]').val() == 'A1') {
            $('#kbUseCardPoint').parents('span').addClass('hide');
            $('#kbRankUseCardPoint').parents('span').addClass('hide');
        }
    });

    // 랭킹페이 등록 카드정보 조회
    function fnGetRankPayInfo(payFlag) {

        cmAjax({
            url: '/order/rankPay/cardInfo'
            , type: 'POST'
            , data: {}
            , dataType: "json"
            , success: function (data) {
                if("succ" == data.status){

                    if(data.object != undefined){

                        var cardNm = data.object.VCardName;

                        var ordF = document.getElementsByName("ordFrm");
                        $(ordF).find('input[name=rankPayBid]').val(data.object.VId);

                        $('#rank_pay_cad_nm').text(cardNm.replace('[', '').replace(']', '') + '카드');
                        $('#rank_pay_card_img').attr('alt', cardNm);

                        switch(cardNm) { //변경될 카드이미지 가져오기

                            case "[KB국민]" :
                                $('#rank_pay_card_img').attr('src', 'https://file.rankingdak.com/bank/card/kb_card.jpg');
                                break;

                            case "[NH채움]" :
                                $('#rank_pay_card_img').attr('src', 'https://file.rankingdak.com/bank/card/nh_card.jpg');
                                break;

                            case "[광주]" :
                                $('#rank_pay_card_img').attr('src', 'https://file.rankingdak.com/bank/card/kj_card.jpg');
                                break;

                            case "[롯데]" :
                                $('#rank_pay_card_img').attr('src', 'https://file.rankingdak.com/bank/card/lotte_card.jpg');
                                break;

                            case "[비씨]" :
                                $('#rank_pay_card_img').attr('src', 'https://file.rankingdak.com/bank/card/bc_card.jpg');
                                break;

                            case "[삼성]" :
                                $('#rank_pay_card_img').attr('src', 'https://file.rankingdak.com/bank/card/samsung_card.jpg');
                                break;

                            case "[수협]" :
                                $('#rank_pay_card_img').attr('src', 'https://file.rankingdak.com/bank/card/sh_card.jpg');
                                break;

                            case "[신한]" :
                                $('#rank_pay_card_img').attr('src', 'https://file.rankingdak.com/bank/card/shinhan_card.jpg');
                                break;

                            case "[씨티]" :
                                $('#rank_pay_card_img').attr('src', 'https://file.rankingdak.com/bank/card/citi_card.jpg');
                                break;

                            case "[전북]" :
                                $('#rank_pay_card_img').attr('src', 'https://file.rankingdak.com/bank/card/jb_card.jpg');
                                break;

                            case "[제주]" :
                                $('#rank_pay_card_img').attr('src', 'https://file.rankingdak.com/bank/card/jeju_card.jpg');
                                break;

                            case "[현대]" :
                                $('#rank_pay_card_img').attr('src', 'https://file.rankingdak.com/bank/card/hyundaicard.jpg');
                                break;

                            case "[하나]" :
                                $('#rank_pay_card_img').attr('src', 'https://file.rankingdak.com/bank/card/hana_card.jpg');
                                break;
                            case "[하나(외환)]":
                                $('#rank_pay_card_img').attr('src', 'https://file.rankingdak.com/bank/card/hana_card.jpg');
                                break;

                            default:

                                $('#rank_pay_card_img').attr('src', '');
                                break;
                        }

                        $('#rank_pay_card').find('.payment-box').eq(0).hide();
                        $('#rank_pay_card').find('.payment-box').eq(1).show();
                        $('#rank_pay_card_approve').val(data.object.VBid);

                        // 카드 등록후 결제 정보 생성
                        if(payFlag){
                            fnCheckOrder();
                        }

                    } else {

                        var ordF = document.getElementsByName("ordFrm");
                        $(ordF).find('input[name=rankPayBid]').val('');

                        $('#rank_pay_card').find('.payment-box').eq(0).show();
                        $('#rank_pay_card').find('.payment-box').eq(1).hide();

                    }



                }
            }
            , error: function (e) {
                console.log(e);
            }
        });
    }

    // 랭킹페이 등록 카드정보 삭제
    function fnRemoveRankPayInfo() {

        // console.log("fnRemoveRankPayInfo");
        cmAjax({
            url: '/order/rankPay/removeCard'
            , type: 'POST'
            , data: {}
            , dataType: "json"
            , success: function (data) {

                if ("succ" == data.status) {

                    alert('정상 처리되었습니다.');
                    fnGetRankPayInfo();

                } else {

                    alert(data.message);

                }
            }
            , error: function (e) {
                console.log(e);
            }
        });
    }

    // 랭킹페이 등록 승인 테스트
    function fnTestRankPayApprove(bid) {

        // console.log("fnTestRankPayApprove");

        cmAjax({
            url: '/order/rankPay/apporve'
            , type: 'POST'
            , data: {
                'vBid': bid
            }
            , dataType: "json"
            , success: function (data) {

            }
            , error: function (e) {
                console.log(e);
            }
        });
    }

    function numberOnly(event) {
        event = event || window.event;
        var keyID = (event.which) ? event.which : event.keyCode;
        if ((keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39)
            return;
        else
            return false;
    }

    function removeChar(event) {
        event = event || window.event;
        var keyID = (event.which) ? event.which : event.keyCode;
        if (keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39)
            return;
        else
            event.target.value = event.target.value.replace(/[^0-9]/g, "");
    }

    function getInterestFreeCardsAjax(instSelName, payCardCd, payCardName) {
        const totPgPrice = $('input[name=tot_pg_price]').val();

        cmAjax({
            url: '/order/order/getInterestFreeCardsAjax'
            , type: 'POST'
            , data: {
                payCardCd: payCardCd,
                payCardName: payCardName,
                totPgPrice: totPgPrice
            }
            , dataType: "json"
            , success: function (data) {
                const monthData = data.object;
                let monthHtml = '';
                for (let idx in monthData) {
                    monthHtml += '<li data-name="' + monthData[idx].code + '"><a href="#none" onclick="return false;"><span>' + monthData[idx].name + '</span></a></li>';
                }
                $('#'+instSelName+' .select-list ul').html(monthHtml);
            }
            , error: function (e) {
                console.log(e);
            }
        });
    }

</script><div class="side-fix-area fixed">
    <div class="payment-info-box ui-box-fix">
        <h3 class="tit">주문결제 금액</h3>
        <div class="order-price">
            <ul class="div-price">
                <li>
                    <div class="list-inner">
                        <span class="tit">상품금액</span>
                        <p class="price"><strong class="num resetOrderPaySide" id="txt_tot_price">32,900</strong> 원
                            <span class="text-guide-sm" id="txt_add_cold_price" style="display:none">(보냉제 추가 <span id="totalIcePackPrice"></span>원 포함)</span>
                        </p>
                        <input type="hidden" name="tot_price" class="resetOrderPaySide" value="32900"></div>
                </li>
                <!-- [Dev] 20210608 추가 -->
                <li style="display: ">
                    <div class="list-inner">
                        <span class="tit">할인금액</span>
                        <p class="price"><strong class="num resetOrderPaySide" id="totalDiscountPrice">0</strong> 원</p>
                    </div>
                    <ul class="list-sub-inner">
                        <li id="pointDiscount" class="discountType" style="display: none;"><span class="tit">포인트할인</span><span class="txt"><span id="txt_use_point" class="resetOrderPaySide">0</span>원</span></li>
                        <li id="productCouponDiscount" class="discountType" style="display: none;"><span class="tit">상품쿠폰할인</span><span class="txt"><span id="txt_sale_coupon" class="resetOrderPaySide">0</span>원</span></li>
                        <li id="orderCouponDiscount" class="discountType" style="display: none;"><span class="tit">주문쿠폰할인</span><span class="txt"><span id="txt_sale_order_coupon" class="resetOrderPaySide">0</span>원</span></li>
                        <li id="deliveryCouponDiscount" class="discountType" style="display: none;"><span class="tit">배송비쿠폰할인</span><span class="txt"><span id="txt_sale_dlv_coupon" class="resetOrderPaySide">0</span>원</span></li>
                        <li id="orangeDiscount" class="discountType" style="display: none;"><span class="tit">오렌지멤버스 할인</span><span class="txt"><span id="txt_sale_grade" class="resetOrderPaySide"></span>원</span></li>
                    </ul>
                </li>
                <!--// [Dev] 20210608 추가 -->
                <li>
                    <div class="list-inner">
                        <span class="tit">배송비</span>
                        <p class="price">
                            <strong class="num resetOrderPaySide" id="txt_tot_dlv_price">0</strong> 원
                        </p>
                        <input type="hidden" name="tot_dlv_price" class="resetOrderPaySide" value="0"></div>
                    <p class="text-guide-sm" id="txt_island" style="display: none">(도서산간 배송비 포함)</p>
                </li>
            </ul>
            <div class="total-price" style="padding:20px 0;">
                <div class="list-inner">
                    <span class="tit">총 결제금액</span>
                    <div class="price">
                        <strong class="num text-primary resetOrderPaySide" id="txt_tot_pg_price">32,900</strong> 원
                        <input type="hidden" name="tot_pg_price" class="resetOrderPaySide" value="32900">
                    </div>
                </div>
            </div>
        </div><!--// order-price -->
       
        <div class="check-area">
            <div class="custom-checkbox">
                <!-- wnsgml351 인수인계 추가 - 비회원일때 이용약관 체크시 결제정보 팝업 나오는 부분 안 나오게 처리 -->
                <input type="checkbox" id="checkTerms" class="checkbox" name="check_terms" data-nonmember-yn="N">
                <label for="checkTerms">상기 필수약관을 확인하였으며<br>결제에 동의합니다.</label>
            </div>

            <div class="final-info-box">
                <div class="inner">
                    <ul class="list">
                        <li id="payType" class="final-info-box-reset"></li>
                        <li id="divCardInst" class="final-info-box-reset"></li>
                        <li><span id="totPgPrice" class="final-info-box-reset"></span>원</li>
                    </ul>
                    <p class="address final-info-box-reset" id="address"></p>
                    <a class="link-txt" id="dlvLocationSaveBtn" href="javascript:void(0);" onclick="openUserDeliveryListPop();"><span>배송지변경</span><i class="ico-arr-right"></i></a>
                </div>
                <button class="btn-x-sm3" type="button"><i class="ico-x-white"></i><span class="blind">닫기</span></button>
            </div>

        </div>
        <button type="button" class="btn-basic-xlg btn-primary" onclick="fnCheckOrder()">
            <span class="num"><span id="txt_btn_payment" class="resetOrderPaySide">32,900</span>원 결제하기</span>
                </button>
    </div> <!--// payment-info-box -->
</div>
<!--// side-fix-area--><div>
<input type="hidden" name="_csrf" value="9a1f726f-eb03-4380-acab-e35bd3ccd416">
</div></form></div>

</div>
</body>
</html>