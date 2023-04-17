<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밀키트랜드</title>
</head>
<body>

	<section id="contents" class="container" style="padding-bottom: 0px;">
		<form name="reqKMCISForm" method="post" action="" target="">
			<input type="hidden" name="tr_cert" value> <input
				type="hidden" name="tr_url" value>
		</form>
		<div class="join-container" style="min-height: auto;">
			<div class="join-area type2">
				<h2 class="search-title">아이디찾기</h2>

				<form id="find-member-id-form" action="" method="" onsubmit=""
					data-gtm-form-interact-id="0">
					<input type="hidden" id="find-member-id-phone-no-text"
						name="find-member-id-phone-no-text" value> <input
						type="hidden" id="find-member-id-email-text"
						name="find-member-id-email-text" value>
					<fieldset class="form-group-area">
						<legend>아이디 찾기 방식 선택</legend>
						<ul class="find-id-list">
							<!-- 휴대폰 번호로 찾기 -->
							<li>
								<div class="customr-radio">
									<input type="radio" id="find-member-id-radio-1"
									class="radio" value="phone" name="find-member-id-radio"
									checked="" data-gtm-form-interact-field-id="1">
								</div>
								<label for="find-member-id-radio-1">
									<!-- ::before -->
									"휴대폰번호로 찾기"
								</label>
							</li>
						</ul>
					</fieldset>


				</form>
			</div>
		</div>

	</section>
</body>
</html>