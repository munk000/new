<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>밀키트랜드</title>
    <link rel="stylesheet" href="../../static/css/kgm/joinForm.css">
</head>

<body>
<div class="wrap">
<%@include file="/templates/kgm/header.jsp"%>
    <section id="contents" class="container">
        <form id="join-general-form" name="join-general-form" action="/member/join/actionJoinGeneral" method="post"
            onsubmit="return onSubmitJoinGeneral();" accept-charset="UTF-8" data-gtm-form-interact-id="0">
            <input type="hidden" name="_csrf" value="4495ea71-eadd-40ab-922e-c750f252ea76">
            <input type="hidden" id="member-join-general-email-domain-text" name="member-join-general-email-domain-text"
                value>
            <input type="hidden" id="member-easy-join" name="member-easy-join" value="Y">
            <div class="join-container join-container2" style="display: block;">
                <div class="join-area">
                    <h2 class="join-title">회원가입</h2>
                    <fieldset class="form-group-area">
                        <legend>회원가입 항목 작성</legend>
                        <div class="form-group">
                            <div class="form-head">
                                <label for="member-join-general-id-text" class="form-label">아이디<i
                                        class="es2"></i></label>
                            </div>
                            <!--// form-head -->
                            <div class="input-group type-lg w-full">
                                <input type="text" id="member-join-general-id-text" name="member-join-general-id-text"
                                    class="input-text w571" placeholder="4~16자 이상 영문 또는 숫자만 사용 가능" value="">
                                <span class="input-group-btn"><button type="button" id="btn-id-check"
                                        class="btn-form btn-default-ex"
                                        onclick="onClickMemberJoinVerifyLoginIdBtn();"><span>중복확인</span></button></span>
                            </div>
                            <div id="member-join-general-id-text-error"></div>
                        </div>
                        <!--// form-group -->

                        <div class="form-group">
                            <div class="form-head">
                                <label for="member-join-general-pw-text" class="form-label">비밀번호<i
                                        class="es2"></i></label>
                            </div>
                            <!--// form-head -->
                            <div class="input-group type-lg w-full">
                                <label for="member-join-general-pw-text" class="blind">비밀번호 입력</label>
                                <input type="password" id="member-join-general-pw-text"
                                    name="member-join-general-pw-text" class="input-text w571"
                                    placeholder="6 ~ 16자 영문, 숫자, 특수문자 1개 이상씩 혼용 필수"
                                    onblur="onEventMemberJoinPasswords();" onkeyup="onEventMemberJoinPasswords();">
                            </div>
                            <div class="input-group type-lg w-full">
                                <label for="member-join-general-pw-confirm-text" class="blind">비밀번호 확인</label>
                                <input type="password" id="member-join-general-pw-confirm-text"
                                    name="member-join-general-pw-confirm-text" class="input-text w571"
                                    placeholder="비밀번호 확인" onblur="onEventMemberJoinPasswords();"
                                    onkeyup="onEventMemberJoinPasswords();">
                            </div>
                            <p class="text-guide-sm2" id="pw-guide-text1" style="display: none;">※ 6 ~ 16자 영문, 숫자, 특수문자
                                1개 이상씩
                                혼용 필수.</p>
                            <p class="text-guide-sm2" id="pw-guide-text2" style="display: none;">※ 특수문자는 !, @, #, $, %,
                                ^,
                                &amp;, * 만 사용 가능.</p>
                            <p class="valid error" id="pw-error-text1" style="display: none;">비밀번호가 일치하지 않습니다.</p>
                        </div>
                        <!--// form-group -->

                        <div class="form-group">
                            <div class="form-head">
                                <label for="member-join-general-email-text" class="form-label">이메일<i
                                        class="es2"></i></label>
                            </div>
                            <!--// form-head -->
                            <div class="input-group type-lg w-full">
                                <input type="text" id="member-join-general-email-text"
                                    name="member-join-general-email-text" class="input-text w571" placeholder="이메일 주소"
                                    value="" onblur="onFocusOutMemberJoinEmailText();">
                                <div class="input-group-form">
                                    <div class="ui-select select-box w135" id="member-join-general-email-domain"
                                        name="member-join-general-email-domain" data-value="">
                                        <a href="#none" title="선택" class="select-value"><span>직접입력</span></a>
                                        <div class="select-list">
                                            <ul>
                                                <li data-name=""><a href="#none"><span>직접입력</span></a></li>
                                                <li data-name="naver.com"><a href="#none"><span>naver.com</span></a>
                                                </li>
                                                <li data-name="daum.net"><a href="#none"><span>daum.net</span></a></li>
                                                <li data-name="hanmail.net"><a href="#none"><span>hanmail.net</span></a>
                                                </li>
                                                <li data-name="gmail.com"><a href="#none"><span>gmail.com</span></a>
                                                </li>
                                                <li data-name="hotmail.com"><a href="#none"><span>hotmail.com</span></a>
                                                </li>
                                                <li data-name="yahoo.co.kr"><a href="#none"><span>yahoo.co.kr</span></a>
                                                </li>
                                                <li data-name="chollian.net"><a
                                                        href="#none"><span>chollian.net</span></a></li>
                                                <li data-name="empal.com"><a href="#none"><span>empal.com</span></a>
                                                </li>
                                                <li data-name="freechal.com"><a
                                                        href="#none"><span>freechal.com</span></a></li>
                                                <li data-name="hitel.net"><a href="#none"><span>hitel.net</span></a>
                                                </li>
                                                <li data-name="hanmir.com"><a href="#none"><span>hanmir.com</span></a>
                                                </li>
                                                <li data-name="hanafos.com"><a href="#none"><span>hanafos.com</span></a>
                                                </li>
                                                <li data-name="korea.com"><a href="#none"><span>korea.com</span></a>
                                                </li>
                                                <li data-name="lycos.co.kr"><a href="#none"><span>lycos.co.kr</span></a>
                                                </li>
                                                <li data-name="nate.com"><a href="#none"><span>nate.com</span></a></li>
                                                <li data-name="netian.com"><a href="#none"><span>netian.com</span></a>
                                                </li>
                                                <li data-name="paran.com"><a href="#none"><span>paran.com</span></a>
                                                </li>
                                                <li data-name="unitel.co.kr"><a
                                                        href="#none"><span>unitel.co.kr</span></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="member-join-general-email-text-error"></div>
                        </div>
                        <!--// form-group -->

                        <!-- <div class="form-group reco-check">
                            <div class="form-head">
                                <label for="member-join-general-recomender-text" class="form-label">추천 아이디</label>
                            </div>
                            <!--// form-head -->
                        <!-- <div class="input-group type-lg w-full">

                                <input type="text" id="member-join-general-recomender-text"
                                    name="member-join-general-recomender-text" class="input-text" value=""
                                    placeholder="추천아이디 입력">
                                <span class="input-group-btn"><button type="button" class="btn-form btn-default-ex"
                                        onclick="fncRecomConf();"><span>확인하기</span></button></span>
                            </div> -->
                        <!-- </div>  -->
                        <!--// form-group -->

                        <!-- <div class="form-group"> -->
                        <!-- <div class="form-head">
                                <label for="member-join-general-forever-Y" class="form-label">평생회원<i
                                        class="es2"></i></label>
                            </div> -->
                        <!--// form-head -->
                        <!-- <ul class="form-horiz-list">
                                <li>
                                    <div class="custom-radio">
                                        <input type="radio" id="member-join-general-forever-Y" class="radio"
                                            name="member-join-general-forever" value="Y"
                                            onclick="checkSubmitBtnState();"><label for="member-join-general-forever-Y"
                                            onclick="checkSubmitBtnState();">동의</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="custom-radio">
                                        <input type="radio" id="member-join-general-forever-N" class="radio"
                                            name="member-join-general-forever" value="N"
                                            onclick="checkSubmitBtnState();"><label for="member-join-general-forever-N"
                                            onclick="checkSubmitBtnState();">동의안함</label>
                                    </div>
                                </li>
                            </ul>
                            <ul class="bl-list-type2">
                                <li>평생회원은 회원탈퇴 전까지 휴면회원으로 전환되지 않습니다.</li>
                                <!--
                            <li>전상품 10% 할인쿠폰, 특급배송 무료 쿠폰을 추가로 드립니다.</li>
                            </ul> -->
                        <!-- </div> -->
                    </fieldset>

                    <div class="btn-bottom-area">
                        <button type="submit" id="member-join-general-submit-btn"
                            class="btn-basic-lg2 btn-dim"><span>회원가입</span></button><!-- 활성화시 removeClass btn-dim -->
                    </div>
                    <!--// btn-bottom-area -->
                </div>
                <!--// join-area -->
                <div id="member-join-general-popup-content">
                </div>
            </div>
        </form>
    </section>
   	<%@include file="/templates/kgm/footer.jsp"%>
  	</div>
</body>

</html>