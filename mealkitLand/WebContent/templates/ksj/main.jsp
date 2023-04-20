<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/ksj/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/ksj/banner.css">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../kgm/header.jsp"></jsp:include>
	
	
	<section class="container">
        <!-- 메인 베너 -->
        <div class="banner">
            <div id="first-temp"></div>
            <div class="image"></div>
            <div class="image"></div>
            <div class="image"></div>
            <div class="image"></div>
            <div class="image"></div>
            <div class="image"></div>
            <div id="last-temp"></div>
        </div>
        <div class="arrow prev">&lt;</div>
        <div class="arrow next">&gt;</div>
        
        <div class="dots">
            <div class="dot 1"></div>
            <div class="dot 2"></div>
            <div class="dot 3"></div>
            <div class="dot 4"></div>
            <div class="dot 5"></div>
            <div class="dot 6"></div>
        </div>
    </section>
		
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
									<figcaption class="category-btn-item-subject">전체보기</figcaption>
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
                           <figcaption class="category-btn-item-subject">지역특산물</figcaption>
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
                           <figcaption class="category-btn-item-subject">아침</figcaption>
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
                           <figcaption class="category-btn-item-subject">점심</figcaption>
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
                           <figcaption class="category-btn-item-subject">저녁</figcaption>
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
                           <figcaption class="category-btn-item-subject">술·안주</figcaption>
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
                           <figcaption class="category-btn-item-subject">건강</figcaption>
                        </figure>
                  </a></li>
					</ul>
					<span class="swiper-notification" aria-live="assertive"
						aria-atomic="true"></span>
				</div>
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
				
				<span class="swiper-notification" aria-live="assertive"
					aria-atomic="true"></span>
			</div>
		</div>
		<!--// frame-sm -->
	</article>
		<jsp:include page="../kgm/footer.jsp"></jsp:include>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/ksj/banner.js"></script>
</html>