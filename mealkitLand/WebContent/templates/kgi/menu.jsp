<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../static/css/kgi/menu.css">
<title>Insert title here</title>
</head>
<body>
	<!-- 헤더 -->
	<%@include file="/templates/kgm/header.jsp"%>
	<!-- body 시작 -->
	<div class="wrap">
		<!-- 한팩 골라담기 이미지부터 -->
		<section id="contents" class="container">
			<form id="frm" name="frm" action="">
				<div class="content-wrap frame-sm one-pack-wrap">
					<h2 class="blind">1팩담기</h2>
					<div class="onepack-bnr encyclopediaPop">
						<a href class="top"> <img class="exp-bn00" alt=""
							src="../../static/image/kgi/onepack.jpg">
						</a>
					</div>
					<!-- tab menu -->
					<div class="onpack-list-wrap">
						<div class="tab-classify-type1">
							<ul>
								<li class="depth2 current"><a> <i class="ico-tab-cate">
											<img alt="" src="../../static/image/kgi/icon-all.png">
									</i> <span>전체</span>
								</a></li>
								<li class="depth2"><a> <i class="ico-tab-cate"> <img
											alt="" src="../../static/image/kgi/icon-1.png">
									</i> <span>아침</span>
								</a></li>
								<li class="depth2"><a> <i class="ico-tab-cate"> <img
											alt="" src="../../static/image/kgi/icon-2.png">
									</i> <span>점심</span>
								</a></li>
								<li class="depth2"><a> <i class="ico-tab-cate"> <img
											alt="" src="../../static/image/kgi/icon-3.png">
									</i> <span>저녁</span>
								</a></li>
								<li class="depth2"><a> <i class="ico-tab-cate"> <img
											alt="" src="../../static/image/kgi/icon-4.png">
									</i> <span>야식</span>
								</a></li>
								<li class="depth2"><a> <i class="ico-tab-cate"> <img
											alt="" src="../../static/image/kgi/icon-5.png">
									</i> <span>간식</span>
								</a></li>
								<li class="depth2"><a> <i class="ico-tab-cate"> <img
											alt="" src="../../static/image/kgi/icon-5.png">
									</i> <span>건강</span>
								</a></li>
								<li class="depth2"><a> <i class="ico-tab-cate"> <img
											alt="" src="../../static/image/kgi/icon-5.png">
									</i> <span>지역 특산물</span>
								</a></li>
							</ul>
						</div>
						<!-- 메뉴판 상단 리스트 -->
						<div class="inner-box grid-list-wrap type-sorting">
							<div class="sorting-head">
								<p class="total">
									<span class="text-primary"> 총 <span>140</span> 개
									</span> 상품이 있습니다
								</p>
								<ul class="sep-list">
									<li>
										<div class="custom-radio">
											<input type="radio" id="radio-sort-0"
												class="radio-sort-check" name="vSortType" value="100"
												checked> <label for="radio-sort-0"> 추천순 </label>
										</div>
									</li>
									<li>
										<div class="custom-radio">
											<input type="radio" id="radio-sort-1"
												class="radio-sort-check" name="vSortType" value="200">
											<label for="radio-sort-1">신상품순</label>
										</div>
									</li>
									<li>
										<div class="custom-radio">
											<input type="radio" id="radio-sort-2"
												class="radio-sort-check" name="vSortType" value="300">
											<label for="radio-sort-2">판매량순</label>
										</div>
									</li>
									<li>
										<div class="custom-radio">
											<input type="radio" id="radio-sort-3"
												class="radio-sort-check" name="vSortType" value="400">
											<label for="radio-sort-3">높은가격순</label>
										</div>
									</li>
									<li>
										<div class="custom-radio">
											<input type="radio" id="radio-sort-4"
												class="radio-sort-check" name="vSortType" value="500">
											<label for="radio-sort-4">낮은가격순</label>
										</div>
									</li>
								</ul>
							</div>
							<!-- 메뉴판 -->
							<ul class="prd-item-list grid-area-span3 gap40 onepack-list"
								data-ctgr="ctegory">
								<li class="ext-li colum" data-v-view-cd="PRD040"
									data-v-productcd="11439" data-v-productnm="맛있닭 닭가슴살 스테이크 100g"
									data-v-thumbnail="https://file.rankingdak.com/image/RANK/PRODUCT/PRD001/20230214/IMG1676Pih339068810_330_330.jpg"
									data-v-option-use-yn="Y" data-v-option-show-yn="Y"
									data-v-add-option-use-yn="N" data-v-add-option-show-yn="N"
									data-v-addprod-cd="" data-v-compare-cd="0" data-v-adult-yn="N"
									data-list="1">
									<div class="prd-item type-md">
										<figure class="img w300">
											<a> <img class="lozad" alt=""
												src="../../static/image/kgi/chikensteak.jpg">
											</a>
										</figure>
										<div class="desc-bottom">
											<div class="top">
												<em class="imgbadge-dlv-exp"> <span class="blind">특급배송</span>
												</em>
												<div class="rating-simply">
													<span class="score">4.9</span> <span class="total-num">(76,382)</span>
												</div>
											</div>
											<div class="brand-name">
												<a>맛있닭</a>
											</div>
											<p class="tit">
												<a class="text-elps2">맛있닭 닭가슴살 스테이크 100g</a>
											</p>
											<span class="price"> <em class="num">1,690</em> 원
											</span>
											<p class="text-guide-sm">
												<button type="button"
													class="btn-icon-cart floating-rb btn-ext-cart open" title>
													<span class="blind">장바구니</span>
												</button>
											</p>
											<div class="bottom-badge-div"></div>
										</div>
									</div>
								</li>
								<li class="ext-li colum" data-v-view-cd="PRD040"
									data-v-productcd="21315"
									data-v-productnm="맛있닭 소스 닭가슴살 스테이크 150g"
									data-v-thumbnail="https://file.rankingdak.com/image/RANK/PRODUCT/PRD001/20230227/IMG1677mSV488474504_330_330.jpg"
									data-v-option-use-yn="Y" data-v-option-show-yn="Y"
									data-v-add-option-use-yn="N" data-v-add-option-show-yn="N"
									data-v-addprod-cd="" data-v-compare-cd="0" data-v-adult-yn="N"
									data-list="2">
									<div class="prd-item type-md">
										<figure class="img w300">
											<a> <img alt="" src="../../static/image/kgi/chiken.jpg">
											</a>
										</figure>
										<div class="desc-bottom">
											<div class="top">
												<em class="imgbadge-dlv-exp"> <span class="blind">특급배송</span>
												</em>
												<div class="rating-simply">
													<span class="score">4.9</span> <span class="total-num">(2,560)</span>
												</div>
											</div>
											<div class="brand-name">
												<a>맛있닭</a>
											</div>
											<p class="tit">
												<a class="text-elps2">맛있는 소스 닭가슴살 150g</a>
											</p>
											<span class="price"> <em class="num">2,290</em> 원
											</span>
											<p class="text-guide-sm">
												<button type="button"
													class="btn-icon-cart floating-rb btn-ext-cart open" title>
													<span class="blind">장바구니</span>
												</button>
											</p>
											<div class="bottom-badge-div"></div>
										</div>
									</div>
								</li>
								<li class="ext-li colum" data-v-view-cd="PRD040"
									data-v-productcd="21315"
									data-v-productnm="맛있닭 소스 닭가슴살 스테이크 150g"
									data-v-thumbnail="https://file.rankingdak.com/image/RANK/PRODUCT/PRD001/20230227/IMG1677mSV488474504_330_330.jpg"
									data-v-option-use-yn="Y" data-v-option-show-yn="Y"
									data-v-add-option-use-yn="N" data-v-add-option-show-yn="N"
									data-v-addprod-cd="" data-v-compare-cd="0" data-v-adult-yn="N"
									data-list="2">
									<div class="prd-item type-md">
										<figure class="img w300">
											<a> <img alt="" src="../../static/image/kgi/chiken.jpg">
											</a>
										</figure>
										<div class="desc-bottom">
											<div class="top">
												<em class="imgbadge-dlv-exp"> <span class="blind">특급배송</span>
												</em>
												<div class="rating-simply">
													<span class="score">4.9</span> <span class="total-num">(2,560)</span>
												</div>
											</div>
											<div class="brand-name">
												<a>맛있닭</a>
											</div>
											<p class="tit">
												<a class="text-elps2">맛있는 소스 닭가슴살 150g</a>
											</p>
											<span class="price"> <em class="num">2,290</em> 원
											</span>
											<p class="text-guide-sm">
												<button type="button"
													class="btn-icon-cart floating-rb btn-ext-cart open" title>
													<span class="blind">장바구니</span>
												</button>
											</p>
											<div class="bottom-badge-div"></div>
										</div>
									</div>
								</li>
								<li class="ext-li colum" data-v-view-cd="PRD040"
									data-v-productcd="21315"
									data-v-productnm="맛있닭 소스 닭가슴살 스테이크 150g"
									data-v-thumbnail="https://file.rankingdak.com/image/RANK/PRODUCT/PRD001/20230227/IMG1677mSV488474504_330_330.jpg"
									data-v-option-use-yn="Y" data-v-option-show-yn="Y"
									data-v-add-option-use-yn="N" data-v-add-option-show-yn="N"
									data-v-addprod-cd="" data-v-compare-cd="0" data-v-adult-yn="N"
									data-list="2">
									<div class="prd-item type-md">
										<figure class="img w300">
											<a> <img alt="" src="../../static/image/kgi/chiken.jpg">
											</a>
										</figure>
										<div class="desc-bottom">
											<div class="top">
												<em class="imgbadge-dlv-exp"> <span class="blind">특급배송</span>
												</em>
												<div class="rating-simply">
													<span class="score">4.9</span> <span class="total-num">(2,560)</span>
												</div>
											</div>
											<div class="brand-name">
												<a>맛있닭</a>
											</div>
											<p class="tit">
												<a class="text-elps2">맛있는 소스 닭가슴살 150g</a>
											</p>
											<span class="price"> <em class="num">2,290</em> 원
											</span>
											<p class="text-guide-sm">
												<button type="button"
													class="btn-icon-cart floating-rb btn-ext-cart" title>
													<span class="blind">장바구니</span>
												</button>
											</p>
											<div class="bottom-badge-div"></div>
										</div>
									</div>
								</li>
								<li class="ext-li colum" data-v-view-cd="PRD040"
									data-v-productcd="21315"
									data-v-productnm="맛있닭 소스 닭가슴살 스테이크 150g"
									data-v-thumbnail="https://file.rankingdak.com/image/RANK/PRODUCT/PRD001/20230227/IMG1677mSV488474504_330_330.jpg"
									data-v-option-use-yn="Y" data-v-option-show-yn="Y"
									data-v-add-option-use-yn="N" data-v-add-option-show-yn="N"
									data-v-addprod-cd="" data-v-compare-cd="0" data-v-adult-yn="N"
									data-list="2">
									<div class="prd-item type-md">
										<figure class="img w300">
											<a> <img alt="" src="../../static/image/kgi/chiken.jpg">
											</a>
										</figure>
										<div class="desc-bottom">
											<div class="top">
												<em class="imgbadge-dlv-exp"> <span class="blind">특급배송</span>
												</em>
												<div class="rating-simply">
													<span class="score">4.9</span> <span class="total-num">(2,560)</span>
												</div>
											</div>
											<div class="brand-name">
												<a>맛있닭</a>
											</div>
											<p class="tit">
												<a class="text-elps2">맛있는 소스 닭가슴살 150g</a>
											</p>
											<span class="price"> <em class="num">2,290</em> 원
											</span>
											<p class="text-guide-sm">
												<button type="button"
													class="btn-icon-cart floating-rb btn-ext-cart" title>
													<span class="blind">장바구니</span>
												</button>
											</p>
											<div class="bottom-badge-div"></div>
										</div>
									</div>
								</li>
								<li class="ext-li colum" data-v-view-cd="PRD040"
									data-v-productcd="21315"
									data-v-productnm="맛있닭 소스 닭가슴살 스테이크 150g"
									data-v-thumbnail="https://file.rankingdak.com/image/RANK/PRODUCT/PRD001/20230227/IMG1677mSV488474504_330_330.jpg"
									data-v-option-use-yn="Y" data-v-option-show-yn="Y"
									data-v-add-option-use-yn="N" data-v-add-option-show-yn="N"
									data-v-addprod-cd="" data-v-compare-cd="0" data-v-adult-yn="N"
									data-list="2">
									<div class="prd-item type-md">
										<figure class="img w300">
											<a> <img alt="" src="../../static/image/kgi/chiken.jpg">
											</a>
										</figure>
										<div class="desc-bottom">
											<div class="top">
												<em class="imgbadge-dlv-exp"> <span class="blind">특급배송</span>
												</em>
												<div class="rating-simply">
													<span class="score">4.9</span> <span class="total-num">(2,560)</span>
												</div>
											</div>
											<div class="brand-name">
												<a>맛있닭</a>
											</div>
											<p class="tit">
												<a class="text-elps2">맛있는 소스 닭가슴살 150g</a>
											</p>
											<span class="price"> <em class="num">2,290</em> 원
											</span>
											<p class="text-guide-sm">
												<button type="button"
													class="btn-icon-cart floating-rb btn-ext-cart" title>
													<span class="blind">장바구니</span>
												</button>
											</p>
											<div class="bottom-badge-div"></div>
										</div>
									</div>
								</li>
								<li class="ext-li colum" data-v-view-cd="PRD040"
									data-v-productcd="21315"
									data-v-productnm="맛있닭 소스 닭가슴살 스테이크 150g"
									data-v-thumbnail="https://file.rankingdak.com/image/RANK/PRODUCT/PRD001/20230227/IMG1677mSV488474504_330_330.jpg"
									data-v-option-use-yn="Y" data-v-option-show-yn="Y"
									data-v-add-option-use-yn="N" data-v-add-option-show-yn="N"
									data-v-addprod-cd="" data-v-compare-cd="0" data-v-adult-yn="N"
									data-list="2">
									<div class="prd-item type-md">
										<figure class="img w300">
											<a> <img alt="" src="../../static/image/kgi/chiken.jpg">
											</a>
										</figure>
										<div class="desc-bottom">
											<div class="top">
												<em class="imgbadge-dlv-exp"> <span class="blind">특급배송</span>
												</em>
												<div class="rating-simply">
													<span class="score">4.9</span> <span class="total-num">(2,560)</span>
												</div>
											</div>
											<div class="brand-name">
												<a>맛있닭</a>
											</div>
											<p class="tit">
												<a class="text-elps2">맛있는 소스 닭가슴살 150g</a>
											</p>
											<span class="price"> <em class="num">2,290</em> 원
											</span>
											<p class="text-guide-sm">
												<button type="button"
													class="btn-icon-cart floating-rb btn-ext-cart" title>
													<span class="blind">장바구니</span>
												</button>
											</p>
											<div class="bottom-badge-div"></div>
										</div>
									</div>
								</li>
								<li class="ext-li colum" data-v-view-cd="PRD040"
									data-v-productcd="21315"
									data-v-productnm="맛있닭 소스 닭가슴살 스테이크 150g"
									data-v-thumbnail="https://file.rankingdak.com/image/RANK/PRODUCT/PRD001/20230227/IMG1677mSV488474504_330_330.jpg"
									data-v-option-use-yn="Y" data-v-option-show-yn="Y"
									data-v-add-option-use-yn="N" data-v-add-option-show-yn="N"
									data-v-addprod-cd="" data-v-compare-cd="0" data-v-adult-yn="N"
									data-list="2">
									<div class="prd-item type-md">
										<figure class="img w300">
											<a> <img alt="" src="../../static/image/kgi/chiken.jpg">
											</a>
										</figure>
										<div class="desc-bottom">
											<div class="top">
												<em class="imgbadge-dlv-exp"> <span class="blind">특급배송</span>
												</em>
												<div class="rating-simply">
													<span class="score">4.9</span> <span class="total-num">(2,560)</span>
												</div>
											</div>
											<div class="brand-name">
												<a>맛있닭</a>
											</div>
											<p class="tit">
												<a class="text-elps2">맛있는 소스 닭가슴살 150g</a>
											</p>
											<span class="price"> <em class="num">2,290</em> 원
											</span>
											<p class="text-guide-sm">
												<button type="button"
													class="btn-icon-cart floating-rb btn-ext-cart" title>
													<span class="blind">장바구니</span>
												</button>
											</p>
											<div class="bottom-badge-div"></div>
										</div>
									</div>
								</li>
								<li class="ext-li colum" data-v-view-cd="PRD040"
									data-v-productcd="21315"
									data-v-productnm="맛있닭 소스 닭가슴살 스테이크 150g"
									data-v-thumbnail="https://file.rankingdak.com/image/RANK/PRODUCT/PRD001/20230227/IMG1677mSV488474504_330_330.jpg"
									data-v-option-use-yn="Y" data-v-option-show-yn="Y"
									data-v-add-option-use-yn="N" data-v-add-option-show-yn="N"
									data-v-addprod-cd="" data-v-compare-cd="0" data-v-adult-yn="N"
									data-list="2">
									<div class="prd-item type-md">
										<figure class="img w300">
											<a> <img alt="" src="../../static/image/kgi/chiken.jpg">
											</a>
										</figure>
										<div class="desc-bottom">
											<div class="top">
												<em class="imgbadge-dlv-exp"> <span class="blind">특급배송</span>
												</em>
												<div class="rating-simply">
													<span class="score">4.9</span> <span class="total-num">(2,560)</span>
												</div>
											</div>
											<div class="brand-name">
												<a>맛있닭</a>
											</div>
											<p class="tit">
												<a class="text-elps2">맛있는 소스 닭가슴살 150g</a>
											</p>
											<span class="price"> <em class="num">2,290</em> 원
											</span>
											<p class="text-guide-sm">
												<button type="button"
													class="btn-icon-cart floating-rb btn-ext-cart" title>
													<span class="blind">장바구니</span>
												</button>
											</p>
											<div class="bottom-badge-div"></div>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</form>

		</section>
		<!-- 팝업영역 -->
		<div id="popup-cart" class="layer-wrap hidden">
			<div class="layer-pop gift-cart-add option-popup modal_overlay type-single popup-cart-onePack modal">
				<div class="layer-inner">
					<h4 class="blind">옵션 선택하기</h4>
					<div class="head-prd-item">
						<div class="img w60">
							<img alt="" src="../../static/image/kgi/chikensteak.jpg">
						</div>
						<h5 class="prd-name text-elps2">맛있닭 닭가슴살 스테이크 100g</h5>
					</div>
					<div
						class="option-select-list scroll-area full-type ui-custom-scroll mCustomScrollbar _mCS_3">
						<div id="mCSB_3"
							class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
							tabindex="0" style="max-height: none;">
							<div id="mCSB_3_container" class="mCSB_container"
								style="position: relative; top: 0; left: 0;" dir="ltr">
								<div class="option-select-area">
									<ul class="option-qty">
										<li class="ext-li" data-index="0" data-v-view-cd="PRD040"
											data-v-optionid="20220424000000009001"
											data-v-uproductcd="11439" data-v-productcd="11439"
											data-n-option-price="1690" data-n-orange-price="1690"
											data-n-orange-member-yn="N" data-v-front-yn=""
											data-v-rear-yn="" data-v-add-optionnm="">
											<div class="inner">
												<p class="option-txt">오리지널 1팩</p>
												<div class="qty-group">
													<button type="button" class="btn-qty btn-ext-minus minus minus1" title>
														<i class="ico-minus-bold"></i> <span class="blind">빼기</span>
													</button>
													<input type="number" class="input-qty input-qty1" value="0" min="0"
														max="999999" readonly="readonly">
													<button type="button" class="btn-qty btn-ext-plus plus plus1" title>
														<i class="ico-plus-bold"></i> <span class="blind">더하기</span>
													</button>
												</div>
												<div class="price">
													<strong class="num">1,690</strong> 원
												</div>
											</div>
										</li>
										<li class="ext-li" data-index="0" data-v-view-cd="PRD040"
											data-v-optionid="20220424000000009001"
											data-v-uproductcd="11439" data-v-productcd="11439"
											data-n-option-price="1690" data-n-orange-price="1690"
											data-n-orange-member-yn="N" data-v-front-yn=""
											data-v-rear-yn="" data-v-add-optionnm="">
											<div class="inner">
												<p class="option-txt">갈릭 1팩</p>
												<div class="qty-group">
													<button type="button" class="btn-qty btn-ext-minus minus minus2" title>
														<i class="ico-minus-bold"></i> <span class="blind">빼기</span>
													</button>
													<input type="number" class="input-qty input-qty2" value="0" min="0"
														max="999999" readonly="readonly">
													<button type="button" class="btn-qty btn-ext-plus plus plus2" title>
														<i class="ico-plus-bold"></i> <span class="blind">더하기</span>
													</button>
												</div>
												<div class="price">
													<strong class="num">1,690</strong> 원
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="layer-bottom">
						<div class="price-area total-txt">
							총 상품금액 <strong class="num" data-n-min-sale-qty>0</strong> <span>원</span>
						</div>
						<div class="btn-area">
							<a class="btn-basic-md btn-default-ex btn-ext-cancel close"> <span>취소</span>
							</a>
							<button type="button" class="btn-basic-md btn-black btn-ext-cart">
								<span>장바구니</span>
							</button>
						</div>
					</div>
					<!-- <button type="button" class="btn-x-md2 ui-close-pop close" title>
						<i class="ico-x-grey"></i> <span class="blind">닫기</span>
					</button> -->
				</div>
			</div>
		</div>
	</div>

	<!-- 푸터 -->
	<%@include file="/templates/kgm/footer.jsp"%>
</body>
<script src="../../static/js/kgi/menu.js"></script>
</html>