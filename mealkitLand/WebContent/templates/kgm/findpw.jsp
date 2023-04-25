<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호 찾기</title>
    <link rel="stylesheet" href="../../static/css/kgm/findId.css">
</head>

<body>
	<div class="wrap">
	<%@include file="/templates/kgm/header.jsp"%> 
    <section id="contents" class="container" style="padding-bottom: 0px;">

        <form name="reqKMCISForm" method="post" action="https://www.kmcert.com/kmcis/web/kmcisReq.jsp"
            target="KMCISWindow">
            <input type="hidden" name="tr_cert" value="">
            <input type="hidden" name="tr_url" value="">
        </form>

        <div class="join-container" style="min-height: auto;">
            <div class="join-area type2">
                <h2 class="search-title">비밀번호 찾기</h2>
                <form id="find-member-pw-form" action="/auth/resetpw" method="post"
                    onsubmit="return onSubmitFindMemberPw();" data-gtm-form-interact-id="0"><input type="hidden"
                        name="_csrf" value="cb689d84-f388-49c4-aeda-b28c879ba973"><input type="hidden"
                        id="find-member-pw-phone-no-text" name="find-member-pw-phone-no-text" value="">
                    <input type="hidden" id="find-member-pw-email-text" name="find-member-pw-email-text" value="">
                    <input type="hidden" id="find-member-pw-hidden-loginid" name="find-member-pw-hidden-loginid"
                        value="">
                    <fieldset class="form-group-area">
                        <!-- <legend>비밀번호 찾기 방식 선택</legend> -->
                        <ul class="find-id-list">
                            <!-- 휴대폰번호로 찾기 -->
                            <!-- <li>
                                <div class="custom-radio">
                                    <input type="radio" id="find-member-pw-radio-1" class="radio" value="phone"
                                        name="find-member-pw-radio" checked="" data-gtm-form-interact-field-id="0">
                                    <label for="find-member-pw-radio-1">휴대폰번호로 찾기</label>
                                    <button type="button" class="btn-icon-mark" onclick="toolbox()"><i class="ico-excl2"
                                            style="border:2px solid #d9d9d9;"></i><span class="blind">주의</span></button>
                                    <div class="tooltip-wrap" onclick="hide($(this))">
                                        <div class="tool">
                                            <span>휴대폰 인증에 문제가 있으신 경우,<br>고객센터로 문의 주시기 바랍니다.</span>
                                        </div>
                                    </div>
                                </div>
                                <div id="find-member-pw-input-group" class="ui-radio-content">
                                    <div class="input-group type-lg w-full">
                                        <label for="find-member-pw-id-text1" class="blind">아이디</label>
                                        <input type="text" id="find-member-pw-id-text1" name="find-member-pw-id-text1"
                                            class="input-text" placeholder="아이디를 입력해주세요.">
                                    </div>
                                    <!--// input-group -->
                            <!-- <div class="input-group type-lg w-full">
                                <button type="button" class="btn-basic-lg2 btn-primary w-full"
                                    onclick="fnGetCertifyInfo(); return false;">휴대폰 인증</button>
                            </div> -->
                            <!--// input-group -->
                            <!-- <div id="find-member-pw-phone-no-error"></div> -->
                            <!-- </div> -->
                            <!--// ui-radio-content -->
                            <!-- </li> -->
                            <!--// 휴대폰번호로 찾기 -->

                            <!-- 이메일로 찾기 -->
                            <li>
                                <div class="custom-radio">
                                    <!-- <input type="radio" id="find-member-pw-radio-2" class="radio" value="email"
                                        name="find-member-pw-radio" data-gtm-form-interact-field-id="1"> -->
                                    <label for="find-member-pw-radio-2">이메일로 찾기</label>
                                </div>
                                <div id="find-member-pw-email-input-group" class="ui-radio-content active">
                                    <div class="input-group type-lg w-full">
                                        <label for="find-member-pw-id-text2" class="blind">아이디</label>
                                        <input type="text" id="find-member-pw-id-text2" name="find-member-pw-id-text2"
                                            class="input-text" placeholder="아이디" onkeyup="onBlurFindMemberPwInput();"
                                            onblur="onBlurFindMemberPwInput();">
                                    </div>
                                    <!--// input-group -->
                                    <div id="find-member-pw-id-error2">
                                    </div>
                                    <div class="input-group type-lg w-full">
                                        <label for="find-member-pw-name-text2" class="blind">이름 입력</label>
                                        <input type="text" id="find-member-pw-name-text2"
                                            name="find-member-pw-name-text2" class="input-text"
                                            placeholder="이름 2자 이상 입력" maxlength="50"
                                            onkeyup="onBlurFindMemberPwInput();" onblur="onBlurFindMemberPwInput();">
                                    </div>
                                    <!--// input-group -->
                                    <div id="find-member-pw-name-error2">
                                    </div>
                                    <div class="input-group type-lg w-full">
                                        <input type="text" id="find-member-pw-email-prefix"
                                            name="find-member-pw-email-prefix" class="input-text" placeholder="이메일 주소"
                                            onkeyup="onBlurFindMemberPwInput();" onblur="onBlurFindMemberPwInput();">
                                        <div class="input-group-form">
                                            <div class="ui-select select-box w135" id="find-member-pw-email-domain"
                                                data-value="">
                                                <a href="#none" title="선택" class="select-value"><span>직접입력</span></a>
                                                <div class="select-list">
                                                    <ul>
                                                        <li data-name=""><a href="#none"><span>직접입력</span></a></li>
                                                        <li data-name="naver.com"><a
                                                                href="#none"><span>naver.com</span></a>
                                                        </li>
                                                        <li data-name="daum.net"><a
                                                                href="#none"><span>daum.net</span></a>
                                                        </li>
                                                        <li data-name="hanmail.net"><a
                                                                href="#none"><span>hanmail.net</span></a></li>
                                                        <li data-name="gmail.com"><a
                                                                href="#none"><span>gmail.com</span></a>
                                                        </li>
                                                        <li data-name="hotmail.com"><a
                                                                href="#none"><span>hotmail.com</span></a></li>
                                                        <li data-name="yahoo.co.kr"><a
                                                                href="#none"><span>yahoo.co.kr</span></a></li>
                                                        <li data-name="chollian.net"><a
                                                                href="#none"><span>chollian.net</span></a></li>
                                                        <li data-name="empal.com"><a
                                                                href="#none"><span>empal.com</span></a>
                                                        </li>
                                                        <li data-name="freechal.com"><a
                                                                href="#none"><span>freechal.com</span></a></li>
                                                        <li data-name="hitel.net"><a
                                                                href="#none"><span>hitel.net</span></a>
                                                        </li>
                                                        <li data-name="hanmir.com"><a
                                                                href="#none"><span>hanmir.com</span></a></li>
                                                        <li data-name="hanafos.com"><a
                                                                href="#none"><span>hanafos.com</span></a></li>
                                                        <li data-name="korea.com"><a
                                                                href="#none"><span>korea.com</span></a>
                                                        </li>
                                                        <li data-name="lycos.co.kr"><a
                                                                href="#none"><span>lycos.co.kr</span></a></li>
                                                        <li data-name="nate.com"><a
                                                                href="#none"><span>nate.com</span></a>
                                                        </li>
                                                        <li data-name="netian.com"><a
                                                                href="#none"><span>netian.com</span></a></li>
                                                        <li data-name="paran.com"><a
                                                                href="#none"><span>paran.com</span></a>
                                                        </li>
                                                        <li data-name="unitel.co.kr"><a
                                                                href="#none"><span>unitel.co.kr</span></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--// input-group -->
                                    <div id="find-member-pw-email-error"></div>

                                    <div class="input-group type-lg w-full" id="certiNoEmailArea">
                                        <label for="find-member-pw-certi-no-text" class="blind">인증번호 입력</label>
                                        <input type="text" id="find-member-pw-certi-no-text"
                                            name="find-member-pw-certi-no-text" class="input-text" placeholder="인증번호 입력"
                                            value="" onkeyup="checkResetPwBtnState();" onblur="checkResetPwBtnState();">
                                        <span class="timer">
                                            <div id="find-member-pw-certi-timer-text"></div>
                                        </span>
                                    </div>
                                    <div id="certiNoEmailErrorArea">
                                        <div id="find-member-pw-certi-no-error"></div>
                                    </div>
                                    <div class="btn-bottom-area" id="certiBtnEmailArea"
                                        style="margin-top:20px;font-weight: 400;">
                                        <button type="button" id="find-member-pw-certi-btn"
                                            class="btn-basic-lg2 w-full btn-dim"
                                            onclick="onClickFindMemberPwCertiBtn();"><span>인증번호 받기</span></button>
                                        <button type="submit" id="find-member-pw-submit-btn"
                                            class="btn-basic-lg2 btn-primary w-full btn-dim"><span>비밀번호 재설정
                                            </span></button>
                                    </div>

                                </div>
                                <!--// ui-radio-content -->
                            </li>
                            <!--// 이메일로 찾기 -->
                        </ul>
                    </fieldset>
                    <!-- 인증번호 입력 -->


                    <div>
                        <input type="hidden" name="_csrf" value="cb689d84-f388-49c4-aeda-b28c879ba973">
                    </div>
                </form>
                <ul class="cs-box-bnr" style="margin-top:40px;margin-bottom: 0;">
                    <li><a href="javascript:void(0);" id="ht-custom2" onclick="ht.open(); return false;"><img
                                src="../../static/image/img_cs_bnr01.png" alt="실시간 채팅 문의하기"></a></li>
                    <li><a href="javascript:void(0);"><img src="../../static/image/img_cs_bnr02.png" alt="전화상담 02.6405.8088"></a>
                    </li>
                </ul>
                <!--// cs-box-bnr -->

            </div>
            <!--// join-area -->
        </div>
    </section>
    	<%@include file="/templates/kgm/footer.jsp"%>
    	</div>
</body>

</html>