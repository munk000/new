<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/ksj/main.css">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../kgm/header.jsp"></jsp:include>
	<!--슬라이드 배너 -->
	<div class="main-visual-area">
		<h2 class="blind">메인 비주얼 영역</h2>
		<div
			class="swiper-container main-slide swiper-container-initialized swiper-container-horizontal">
			<div class="swiper-wrapper"
				style="transition-duration: 0ms; transform: translate3d(-17280px, 0px, 0px);">
				<div
					class="swiper-slide swiper-slide-duplicate swiper-slide-next swiper-slide-duplicate-prev"
					data-swiper-slide-index="7" style="width: 1920px;">
					<a href="javascript:;"
						class="btn-back"> <img
						src="https://file.rankingdak.com/image/RANK/BANNER/AR_IMG_1/20230125/IMG1674bgz638273881.jpg"
						alt="메인비쥬얼이미지">
					</a>
				</div>

				<div class="swiper-slide swiper-slide-duplicate-active"
					data-swiper-slide-index="0" style="width: 1920px;">
					<a href=""
						class="btn-back"> <img
						src="https://file.rankingdak.com/image/RANK/BANNER/AR_IMG_1/20230418/IMG1681cCn783324193.jpg"
						alt="메인비쥬얼이미지">
					</a>
				</div>
				<div class="swiper-slide" data-swiper-slide-index="1"
					style="width: 1920px;">
					<a href="javascript:;"
						class="btn-back"> <img
						src="https://file.rankingdak.com/image/RANK/BANNER/AR_IMG_1/20230418/IMG1681Ocp787763130.jpg"
						alt="메인비쥬얼이미지">
					</a>
				</div>
				<div class="swiper-slide" data-swiper-slide-index="2"
					style="width: 1920px;">
					<a href="javascript:;"
						class="btn-back"> <img
						src="https://file.rankingdak.com/image/RANK/BANNER/AR_IMG_1/20230404/IMG1680HMJ591448460.jpg"
						alt="메인비쥬얼이미지">
					</a>
				</div>
				<div class="swiper-slide" data-swiper-slide-index="3"
					style="width: 1920px;">
					<a href="javascript:;"
						class="btn-back"> <img
						src="https://file.rankingdak.com/image/RANK/BANNER/AR_IMG_1/20230331/IMG1680OmE238942115.jpg"
						alt="메인비쥬얼이미지">
					</a>
				</div>
				<div class="swiper-slide" data-swiper-slide-index="4"
					style="width: 1920px;">
					<a href="javascript:;"
						class="btn-back"> <img
						src="https://file.rankingdak.com/image/RANK/BANNER/AR_IMG_1/20230414/IMG1681baJ449469332.jpg"
						alt="메인비쥬얼이미지">
					</a>
				</div>
				<div class="swiper-slide" data-swiper-slide-index="5"
					style="width: 1920px;">
					<a href="javascript:;"
						class="btn-back"> <img
						src="https://file.rankingdak.com/image/RANK/BANNER/AR_IMG_1/20230419/IMG1681Nyu895332875.jpg"
						alt="메인비쥬얼이미지">
					</a>
				</div>
				<div class="swiper-slide" data-swiper-slide-index="6"
					style="width: 1920px;">
					<a href="javascript:;"
						class="btn-back"> <img
						src="https://file.rankingdak.com/image/RANK/BANNER/AR_IMG_1/20230406/IMG1680fdZ769659131.jpg"
						alt="메인비쥬얼이미지">
					</a>
				</div>
				<div
					class="swiper-slide swiper-slide-prev swiper-slide-duplicate-next"
					data-swiper-slide-index="7" style="width: 1920px;">
					<a href="javascript:;"
						class="btn-back"> <img
						src="https://file.rankingdak.com/image/RANK/BANNER/AR_IMG_1/20230125/IMG1674bgz638273881.jpg"
						alt="메인비쥬얼이미지">
					</a>
				</div>
				<div class="swiper-slide swiper-slide-duplicate swiper-slide-active"
					data-swiper-slide-index="0" style="width: 1920px;">
					<a href="javascript:;"
						class="btn-back"> <img
						src="https://file.rankingdak.com/image/RANK/BANNER/AR_IMG_1/20230418/IMG1681cCn783324193.jpg"
						alt="메인비쥬얼이미지">
					</a>
				</div>
			</div>
				<!--슬라이드 배너 -->
			
				<!--슬라이드배너  -->
			<!--// swiper-wrapper -->
			<div class="main-slide-bottom">
				<div class="inner">
					<div class="main-slide-btns">
						<div class="swiper-pagination swiper-pagination-fraction">
							<span class="swiper-pagination-current">1</span> / <span
								class="swiper-pagination-total">8</span>
						</div>
						<div class="swiper-button-next" tabindex="0" role="button"
							aria-label="Next slide" aria-disabled="false"></div>
						<div class="swiper-button-prev swiper-button-disabled"
							tabindex="0" role="button" aria-label="Previous slide"
							aria-disabled="true"></div>
					</div>
				</div>
			</div>
			<!--// main-slide-bottom -->
			<span class="swiper-notification" aria-live="assertive"
				aria-atomic="true"></span>
		</div>
		<!--// main-slide -->
	</div>
	<article class="main-article">
		<div class="frame-sm">
			<h2 class="blind">상품 카테고리</h2>
			<div class="swiper main-category-btn-wrapper">
				<div
					class="category-btn-list-cover swiper-container-initialized swiper-container-horizontal">
					<ul class="swiper-wrapper category-btn-list">
						<li class="swiper-slide category-btn-item swiper-slide-active"
							style="width: 78px; margin-right: 20px;"><a
							href="/product/list?depth1=R402" class="category-btn-item-inn">
								<figure class="category-btn-boxing">
									<div class="category-btn-item-ico-wrap"
										style="width: 78px; height: 78px;">
										<i class="ico-for-family"></i>
									</div>
									<figcaption class="category-btn-item-subject">가정의달
										선물세트</figcaption>
								</figure>
						</a></li>
						<li class="swiper-slide category-btn-item swiper-slide-next"
							style="width: 78px; margin-right: 20px;"><a
							href="/promotion/exhibit/hiddenList?exhibitionCd=EX202204150000000014"
							class="category-btn-item-inn">
								<figure class="category-btn-boxing">
									<div class="category-btn-item-ico-wrap"
										style="width: 78px; height: 78px;">
										<i class="ico-for-new"></i>
									</div>
									<figcaption class="category-btn-item-subject">신상품</figcaption>
								</figure>
						</a></li>
						<li class="swiper-slide category-btn-item"
							style="width: 78px; margin-right: 20px;"><a
							href="/display/gift" class="category-btn-item-inn">
								<figure class="category-btn-boxing">
									<div class="category-btn-item-ico-wrap"
										style="width: 78px; height: 78px;">
										<i class="ico-for-gift"></i>
									</div>
									<figcaption class="category-btn-item-subject">선물하기</figcaption>
								</figure>
						</a></li>
						<li class="swiper-slide category-btn-item"
							style="width: 78px; margin-right: 20px;"><a
							href="/product/list?depth1=R019" class="category-btn-item-inn">
								<figure class="category-btn-boxing">
									<div class="category-btn-item-ico-wrap"
										style="width: 78px; height: 78px;">
										<i class="ico-for-chicken_breast"></i>
									</div>
									<figcaption class="category-btn-item-subject">닭가슴살</figcaption>
								</figure>
						</a></li>
						<li class="swiper-slide category-btn-item"
							style="width: 78px; margin-right: 20px;"><a
							href="/product/list?depth1=R020" class="category-btn-item-inn">
								<figure class="category-btn-boxing">
									<div class="category-btn-item-ico-wrap"
										style="width: 78px; height: 78px;">
										<i class="ico-for-instant"></i>
									</div>
									<figcaption class="category-btn-item-subject">즉석
										간편식</figcaption>
								</figure>
						</a></li>
						<li class="swiper-slide category-btn-item"
							style="width: 78px; margin-right: 20px;"><a
							href="/product/list?depth1=R021" class="category-btn-item-inn">
								<figure class="category-btn-boxing">
									<div class="category-btn-item-ico-wrap"
										style="width: 78px; height: 78px;">
										<i class="ico-for-packed_meal"></i>
									</div>
									<figcaption class="category-btn-item-subject">도시락·볶음밥</figcaption>
								</figure>
						</a></li>
						<li class="swiper-slide category-btn-item"
							style="width: 78px; margin-right: 20px;"><a
							href="/product/list?depth1=R040" class="category-btn-item-inn">
								<figure class="category-btn-boxing">
									<div class="category-btn-item-ico-wrap"
										style="width: 78px; height: 78px;">
										<i class="ico-for-beef"></i>
									</div>
									<figcaption class="category-btn-item-subject">소고기</figcaption>
								</figure>
						</a></li>
						<li class="swiper-slide category-btn-item"
							style="width: 78px; margin-right: 20px;"><a
							href="/product/list?depth1=R034" class="category-btn-item-inn">
								<figure class="category-btn-boxing">
									<div class="category-btn-item-ico-wrap"
										style="width: 78px; height: 78px;">
										<i class="ico-for-pork"></i>
									</div>
									<figcaption class="category-btn-item-subject">돼지·오리고기</figcaption>
								</figure>
						</a></li>
						<li class="swiper-slide category-btn-item"
							style="width: 78px; margin-right: 20px;"><a
							href="/product/list?depth1=R038" class="category-btn-item-inn">
								<figure class="category-btn-boxing">
									<div class="category-btn-item-ico-wrap"
										style="width: 78px; height: 78px;">
										<i class="ico-for-chicken_tender"></i>
									</div>
									<figcaption class="category-btn-item-subject">닭안심살</figcaption>
								</figure>
						</a></li>
						<li class="swiper-slide category-btn-item"
							style="width: 78px; margin-right: 20px;"><a
							href="/product/list?depth1=R023" class="category-btn-item-inn">
								<figure class="category-btn-boxing">
									<div class="category-btn-item-ico-wrap"
										style="width: 78px; height: 78px;">
										<i class="ico-for-salad"></i>
									</div>
									<figcaption class="category-btn-item-subject">샐러드·과일</figcaption>
								</figure>
						</a></li>
						<li class="swiper-slide category-btn-item"
							style="width: 78px; margin-right: 20px;"><a
							href="/product/list?depth1=R041" class="category-btn-item-inn">
								<figure class="category-btn-boxing">
									<div class="category-btn-item-ico-wrap"
										style="width: 78px; height: 78px;">
										<i class="ico-for-bakery"></i>
									</div>
									<figcaption class="category-btn-item-subject">베이커리·치즈</figcaption>
								</figure>
						</a></li>
						<li class="swiper-slide category-btn-item"
							style="width: 78px; margin-right: 20px;"><a
							href="/product/list?depth1=R022" class="category-btn-item-inn">
								<figure class="category-btn-boxing">
									<div class="category-btn-item-ico-wrap"
										style="width: 78px; height: 78px;">
										<i class="ico-for-snack"></i>
									</div>
									<figcaption class="category-btn-item-subject">과자·간식·떡</figcaption>
								</figure>
						</a></li>
						<li class="swiper-slide category-btn-item"
							style="width: 78px; margin-right: 20px;"><a
							href="/product/list?depth1=R024" class="category-btn-item-inn">
								<figure class="category-btn-boxing">
									<div class="category-btn-item-ico-wrap"
										style="width: 78px; height: 78px;">
										<i class="ico-for-drink"></i>
									</div>
									<figcaption class="category-btn-item-subject">음료·차·프로틴</figcaption>
								</figure>
						</a></li>
						<li class="swiper-slide category-btn-item"
							style="width: 78px; margin-right: 20px;"><a
							href="/product/list?depth1=R298" class="category-btn-item-inn">
								<figure class="category-btn-boxing">
									<div class="category-btn-item-ico-wrap"
										style="width: 78px; height: 78px;">
										<i class="ico-for-vegan"></i>
									</div>
									<figcaption class="category-btn-item-subject">비건식품</figcaption>
								</figure>
						</a></li>
						<li class="swiper-slide category-btn-item"
							style="width: 78px; margin-right: 20px;"><a
							href="/product/list?depth1=R025" class="category-btn-item-inn">
								<figure class="category-btn-boxing">
									<div class="category-btn-item-ico-wrap"
										style="width: 78px; height: 78px;">
										<i class="ico-for-egg"></i>
									</div>
									<figcaption class="category-btn-item-subject">계란·난백·콩</figcaption>
								</figure>
						</a></li>
						<li class="swiper-slide category-btn-item"
							style="width: 78px; margin-right: 20px;"><a
							href="/product/list?depth1=R029" class="category-btn-item-inn">
								<figure class="category-btn-boxing">
									<div class="category-btn-item-ico-wrap"
										style="width: 78px; height: 78px;">
										<i class="ico-for-seafood"></i>
									</div>
									<figcaption class="category-btn-item-subject">수산·해산</figcaption>
								</figure>
						</a></li>
						<li class="swiper-slide category-btn-item"
							style="width: 78px; margin-right: 20px;"><a
							href="/product/list?depth1=R026" class="category-btn-item-inn">
								<figure class="category-btn-boxing">
									<div class="category-btn-item-ico-wrap"
										style="width: 78px; height: 78px;">
										<i class="ico-for-nut"></i>
									</div>
									<figcaption class="category-btn-item-subject">견과·고구마·감자</figcaption>
								</figure>
						</a></li>
						<li class="swiper-slide category-btn-item"
							style="width: 78px; margin-right: 20px;"><a
							href="/product/list?depth1=R028" class="category-btn-item-inn">
								<figure class="category-btn-boxing">
									<div class="category-btn-item-ico-wrap"
										style="width: 78px; height: 78px;">
										<i class="ico-for-health"></i>
									</div>
									<figcaption class="category-btn-item-subject">건강식품</figcaption>
								</figure>
						</a></li>
						<li class="swiper-slide category-btn-item"
							style="width: 78px; margin-right: 20px;"><a
							href="/product/list?depth1=R027" class="category-btn-item-inn">
								<figure class="category-btn-boxing">
									<div class="category-btn-item-ico-wrap"
										style="width: 78px; height: 78px;">
										<i class="ico-for-mealkit"></i>
									</div>
									<figcaption class="category-btn-item-subject">반찬·밀키트·안주</figcaption>
								</figure>
						</a></li>
						<li class="swiper-slide category-btn-item"
							style="width: 78px; margin-right: 20px;"><a
							href="/product/list?depth1=R030" class="category-btn-item-inn">
								<figure class="category-btn-boxing">
									<div class="category-btn-item-ico-wrap"
										style="width: 78px; height: 78px;">
										<i class="ico-for-source"></i>
									</div>
									<figcaption class="category-btn-item-subject">소스·오일</figcaption>
								</figure>
						</a></li>
						<li class="swiper-slide category-btn-item"
							style="width: 78px; margin-right: 20px;"><a
							href="/product/list?depth1=R031" class="category-btn-item-inn">
								<figure class="category-btn-boxing">
									<div class="category-btn-item-ico-wrap"
										style="width: 78px; height: 78px;">
										<i class="ico-for-package"></i>
									</div>
									<figcaption class="category-btn-item-subject">식단·패키지</figcaption>
								</figure>
						</a></li>
						<li class="swiper-slide category-btn-item"
							style="width: 78px; margin-right: 20px;"><a
							href="/product/list?depth1=R032" class="category-btn-item-inn">
								<figure class="category-btn-boxing">
									<div class="category-btn-item-ico-wrap"
										style="width: 78px; height: 78px;">
										<i class="ico-for-training"></i>
									</div>
									<figcaption class="category-btn-item-subject">운동·생활용품</figcaption>
								</figure>
						</a></li>
					</ul>
					<span class="swiper-notification" aria-live="assertive"
						aria-atomic="true"></span>
				</div>
				<button type="button" class="category-control swiper-button-next"
					tabindex="0" role="button" aria-label="Next slide"
					aria-disabled="false">
					<i class="ico-arr-right"></i> <span class="blind">다음 슬라이드 보기</span>
				</button>
				<button type="button"
					class="category-control swiper-button-prev swiper-button-disabled"
					tabindex="0" role="button" aria-label="Previous slide"
					aria-disabled="true">
					<i class="ico-arr-left"></i> <span class="blind">이전 슬라이드 보기</span>
				</button>
			</div>
		</div>
	</article>
	<article class="main-article md-recomm-sec">
		<div class="frame-sm frame-slide-overlap">
			<h2 class="main-article-tit">MD Pick! 추천 상품</h2>
			<div
				class="bnr-item-container swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-autoheight">
				<ul class="bnr-item-list swiper-wrapper"
					style="height: 350px; transition-duration: 0ms; transform: translate3d(0px, 0px, 0px);">
					<li class="bnr-item-slide swiper-slide swiper-slide-active"
						style="width: 256.25px; margin-right: 25px;">
						<div class="bnr-item">
							<div class="img">
								<img
									class="lozad" alt=""
									src="https://file.rankingdak.com/image/RANK/BANNER/AR_IMG_10/20230331/IMG1680ZAf252510921.jpg"
									data-loaded="true">
							</div>

							<em class="tit text-elps">랭닭 MD의 소울 푸드😋</em> <span class="desc">닭가슴살
								몬스터 볶음밥</span> <a href="/product/view?productCd=24931"
								class="btn-blank"><span class="blind">자세히 보기</span></a>
						</div>
					</li>
					<!--// colum -->
					<li class="bnr-item-slide swiper-slide swiper-slide-next"
						style="width: 256.25px; margin-right: 25px;">
						<div class="bnr-item">
							<div class="img">
								<img
									class="lozad" alt=""
									src="https://file.rankingdak.com/image/RANK/BANNER/AR_IMG_8/20230410/IMG1681qdr102504547.jpg"
									data-loaded="true">
							</div>

							<em class="tit text-elps">1팩 2천원 대 가성비 샐러드</em> <span
								class="desc">1am 알뜰샐러드</span> <a
								href="/product/view?productCd=11069" class="btn-blank"><span
								class="blind">자세히 보기</span></a>
						</div>
					</li>
					<!--// colum -->
					<li class="bnr-item-slide swiper-slide"
						style="width: 256.25px; margin-right: 25px;">
						<div class="bnr-item">
							<div class="img">
								<img
									class="lozad" alt=""
									src="https://file.rankingdak.com/image/RANK/BANNER/AR_IMG_12/20230414/IMG1681ycm448345367.jpg"
									data-loaded="true">
							</div>

							<em class="tit text-elps">소스 닭가슴살계의 끝판왕</em> <span class="desc">한입
								소스 닭가슴살</span> <a href="/product/view?productCd=F000002335"
								class="btn-blank"><span class="blind">자세히 보기</span></a>
						</div>
					</li>
					<!--// colum -->
					<li class="bnr-item-slide swiper-slide"
						style="width: 256.25px; margin-right: 25px;">
						<div class="bnr-item">
							<div class="img">
								<img
									data-src="https://file.rankingdak.com/image/RANK/BANNER/AR_IMG_6/20230331/IMG1680hwJ228803124.jpg"
									class="lozad" alt=""
									src="https://file.rankingdak.com/image/RANK/BANNER/AR_IMG_6/20230331/IMG1680hwJ228803124.jpg"
									data-loaded="true">
							</div>

							<em class="tit text-elps">슬기로운 식단생활 최대 31% 할인</em> <span
								class="desc">4월 한정 MD 패키지</span> <a
								href="/product/view?productCd=F000004756" class="btn-blank"><span
								class="blind">자세히 보기</span></a>
						</div>
					</li>
					<!--// colum -->
					<li class="bnr-item-slide swiper-slide"
						style="width: 256.25px; margin-right: 25px;">
						<div class="bnr-item">
							<div class="img">
								<img
									data-src="https://file.rankingdak.com/image/RANK/BANNER/AR_IMG_2/20230414/IMG1681KIA448387862.jpg"
									class="lozad" alt=""
									src="https://file.rankingdak.com/image/RANK/BANNER/AR_IMG_2/20230414/IMG1681KIA448387862.jpg"
									data-loaded="true">
							</div>

							<em class="tit text-elps">한 팩으로 충전하는 단백질 22g</em> <span
								class="desc">프로틴러쉬 드링크</span> <a
								href="/product/view?productCd=F000000346" class="btn-blank"><span
								class="blind">자세히 보기</span></a>
						</div>
					</li>
					<!--// colum -->
					<li class="bnr-item-slide swiper-slide"
						style="width: 256.25px; margin-right: 25px;">
						<div class="bnr-item">
							<div class="img">
								<img
									class="lozad" alt="">
							</div>

							<em class="tit text-elps">푸짐하게 더 담아드려요🥰</em> <span class="desc">닭가슴살
								도시락</span> <a href="/product/view?productCd=8039" class="btn-blank"><span
								class="blind">자세히 보기</span></a>
						</div>
					</li>
					<!--// colum -->
					<li class="bnr-item-slide swiper-slide"
						style="width: 256.25px; margin-right: 25px;">
						<div class="bnr-item">
							<div class="img">
								<img
									class="lozad" alt="">
							</div>

							<em class="tit text-elps">30개의 달걀 흰자를 간편하게</em> <span
								class="desc">100% 순수 난백</span> <a
								href="/product/view?productCd=27387" class="btn-blank"><span
								class="blind">자세히 보기</span></a>
						</div>
					</li>
					<!--// colum -->
					<li class="bnr-item-slide swiper-slide"
						style="width: 256.25px; margin-right: 25px;">
						<div class="bnr-item">
							<div class="img">
								<img
									class="lozad" alt="">
							</div>

							<em class="tit text-elps">판매량으로 증명된 No.1</em> <span class="desc">닭가슴살
								스테이크</span> <a href="/product/view?productCd=923" class="btn-blank"><span
								class="blind">자세히 보기</span></a>
						</div>
					</li>
					<!--// colum -->
					<li class="bnr-item-slide swiper-slide"
						style="width: 256.25px; margin-right: 25px;">
						<div class="bnr-item">
							<div class="img">
								<img
									class="lozad" alt="">
							</div>

							<em class="tit text-elps">풍미 가득 치즈를 가득</em> <span class="desc">닭가슴살
								볼</span> <a href="/product/view?productCd=F000003505" class="btn-blank"><span
								class="blind">자세히 보기</span></a>
						</div>
					</li>
					<!--// colum -->
					<li class="bnr-item-slide swiper-slide"
						style="width: 256.25px; margin-right: 25px;">
						<div class="bnr-item">
							<div class="img">
								<img
									class="lozad" alt="">
							</div>

							<em class="tit text-elps">가마 안에서 8시간 구워낸</em> <span class="desc">구운란&amp;훈제란</span>
							<a href="/product/view?productCd=2902" class="btn-blank"><span
								class="blind">자세히 보기</span></a>
						</div>
					</li>
					<!--// colum -->
					<li class="bnr-item-slide swiper-slide"
						style="width: 256.25px; margin-right: 25px;">
						<div class="bnr-item">
							<div class="img">
								<img
									class="lozad" alt="">
							</div>

							<em class="tit text-elps">처음 만나는 바삭함✨</em> <span class="desc">크리스피
								닭가슴살</span> <a href="/product/view?productCd=F000005233"
								class="btn-blank"><span class="blind">자세히 보기</span></a>
						</div>
					</li>
					<!--// colum -->
					<li class="bnr-item-slide swiper-slide"
						style="width: 256.25px; margin-right: 25px;">
						<div class="bnr-item">
							<div class="img">
								<img
									class="lozad" alt="">
							</div>

							<em class="tit text-elps">당류 ZERO! 톡-쏘는 청량감!</em> <span
								class="desc">0kcal 스파클링</span> <a
								href="/product/view?productCd=15991" class="btn-blank"><span
								class="blind">자세히 보기</span></a>
						</div>
					</li>
					<!--// colum -->
				</ul>
				<!--// grid-area -->
				<button
					class="swiper-button-prev main-md-recomm-swiper-btn swiper-button-disabled"
					tabindex="0" role="button" aria-label="Previous slide"
					aria-disabled="true">
					<i class="ico-arr-left"><span class="blind">이전</span></i>
				</button>
				<button class="swiper-button-next main-md-recomm-swiper-btn"
					tabindex="0" role="button" aria-label="Next slide"
					aria-disabled="false">
					<i class="ico-arr-right"><span class="blind">다음</span></i>
				</button>
				<span class="swiper-notification" aria-live="assertive"
					aria-atomic="true"></span>
			</div>
		</div>
		<!--// frame-sm -->
	</article>
		<jsp:include page="../kgm/footer.jsp"></jsp:include>
</body>
</html>