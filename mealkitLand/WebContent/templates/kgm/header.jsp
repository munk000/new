<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밀키트랜드</title>
<link rel="stylesheet" href="../../static/css/kgm/fix.css">
</head>
<body>
	<header id="header" class="header">
		<div class="header-inner">
			<!--헤더 로고 -->
			<h1 class="logo">
				<a href="../image/icon1.png"> <span class="blind">밀키트랜드</span>
				</a>
			</h1>

			<!-- 상단 로그인 회원가입 로고 -->
			<div class="util">
				<ul>
					<li>
						<!--경로 지정 해야함 --> <a href="">로그인</a>
					</li>
					<li><!-- ::before --> <!--경로 지정 해야함 --> <a href="">회원가입</a>
					</li>
					<li><!-- ::before --> <!--경로 지정 해야함 --> <a href="">구독조회</a>
					</li>
					<li><!-- ::before --> <!--경로 지정 해야함 --> <a href="">고객센터</a>
					</li>
				</ul>
			</div>
			<!--//util -->
			<!-- 검색창  구현 아직 모름-->
			<!-- <div class="header-search"></div> -->
			<div class="my-menu">
				<ul>
					<!-- 		            <li><a href="" class="btn-util-coupon" title=""><span class="blind"></span></a></li> -->
					<li><a href="" class="btn-util-mypage" title=""><span
							class="blind">마이페이지</span></a></li>
					<li><a href="" class="btn-util-cart" title=""><span
							class="blind">장바구니</span> <em class="count">0</em></a></li>
				</ul>
			</div>
		</div>
			<!-- my-menu -->

			<!-- header-inner -->
			<!-- 카테고리 네비게이션 -->
			<div class="gnb-wrap">
				<div class="inner">
					<div class="category-wrap">
						<a href="all-category" class="btn-menu-all"> <!-- ::before --> <span>카테고리</span>
							<!-- ::after -->
						</a>
						<nav id="all-category" class="category-menu">
							<ul class="cate-dep1" style="display:none; max-height:647px;">
								<li>
									<a href=""> 
										<i class="ico-cate-gnb"> <img src="" alt>
										</i> 
											<span class="menu">아침</span>
									</a>
								</li>
							</ul>
						</nav>
						<nav id="all-category" class="category-menu">
							<ul class="cate-dep1" style="display:none; max-height:647px;">
								<li>
									<a href=""> 
										<i class="ico-cate-gnb"> <img src="" alt>
										</i> 
											<span class="menu">점심</span>
									</a>
								</li>
							</ul>
						</nav>
						<nav id="all-category" class="category-menu">
							<ul class="cate-dep1" style="display:none; max-height:647px;">
								<li>
									<a href=""> 
										<i class="ico-cate-gnb"> <img src="" alt>
										</i> 
											<span class="menu">저녁</span>
									</a>
								</li>
							</ul>
						</nav>
						<nav id="all-category" class="category-menu">
							<ul class="cate-dep1" style="display:none; max-height:647px;">
								<li>
									<a href=""> 
										<i class="ico-cate-gnb"> <img src="" alt>
										</i> 
											<span class="menu">지역 특산물</span>
									</a>
								</li>
							</ul>
						</nav>
						<nav id="all-category" class="category-menu">
							<ul class="cate-dep1" style="display:none; max-height:647px;">
								<li>
									<a href=""> 
										<i class="ico-cate-gnb"> <img src="" alt>
										</i> 
											<span class="menu">술 안주</span>
									</a>
								</li>
							</ul>
						</nav>
						<nav id="all-category" class="category-menu">
							<ul class="cate-dep1" style="display:none; max-height:647px;">
								<li>
									<a href=""> 
										<i class="ico-cate-gnb"> <img src="" alt>
										</i> 
											<span class="menu">야식</span>
									</a>
								</li>
							</ul>
						</nav>
						<nav id="all-category" class="category-menu">
							<ul class="cate-dep1" style="display:none; max-height:647px;">
								<li>
									<a href=""> 
										<i class="ico-cate-gnb"> <img src="" alt>
										</i> 
											<span class="menu">건강</span>
									</a>
								</li>
							</ul>
						</nav>
						<!-- //category-menu  -->
					</div>
					<!-- //categorty-wrap-->
					<!--헤더 카테고리 -->
					<nav id="gnb" class="gnb">
						<ul>
							<li class=""><a href="/display/rank/sale"> <span>메뉴판</span>
							</a></li>
							<li class=""><a href="/promotion/exhibit/list"> <span>문의 게시판 목록</span>
							</a></li>
							<li class=""><a href="/display/benefits/view"> <span>공지 사항</span>
							</a></li>
							<!-- <li class=""><a href="/display/onePack/list"> <span>1팩
										담기</span>
							</a></li>
							<li class=""><a href="/display/brand/list"> <span>브랜드관</span>
							</a></li>
							<li class=""><a href="/promotion/event/list"> <span>이벤트</span>
							</a></li>
							<li class=""><a href="/display/expressDeliveryList"> <em
									class="ico-txt-gnb"
									style="background-image: url(&quot;https://file.rankingdak.com/image/RANK/BANNER/GNB_ICON/20220330/IMG1648CEL614146730.png&quot;)">
							 --><!-- 			<span class="blind">특급배송</span> -->
								<!-- </em> -->
							<!-- </a></li> -->
						</ul>
					</nav>
					
				</div>
					<!--//gnb  -->
			</div>
				<!-- // inner -->
			<!--  //gnb-wrap-->
			<input type="hidden" name="eventCd" value>
			<input type="hidden" name="eventtype" value>
			<input type="hidden" name="landingPage" value>
	</header>
</body>
</html>