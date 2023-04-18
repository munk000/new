<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>밀키트랜드</title>
</head>
<link rel="stylesheet" href="../../static/css/kgm/findId.css">

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
                <h2 class="search-title">아이디찾기</h2>
                <form id="find-member-id-form" action="/auth/findidresult" method="post"
                    onsubmit="return onSubmitFindMemberId();" data-gtm-form-interact-id="0">
                    <input type="hidden" name="_csrf" value="7765cce4-ad49-4047-8529-1ad115e1793d">
                    <input type="hidden" id="find-member-id-phone-no-text" name="find-member-id-phone-no-text" value="">
                    <input type="hidden" id="find-member-id-email-text" name="find-member-id-email-text" value="">
                    <fieldset class="form-group-area">
                        <!-- <legend>아이디 찾기 방식 선택</legend> -->
                        <ul class="find-id-list">
                            <!-- 휴대폰번호로 찾기 -->
                            <!-- <li> -->
                            <!-- <div class="custom-radio">
                                <input type="radio" id="find-member-id-radio-1" class="radio" value="phone"
                                    name="find-member-id-radio" checked="">
                                <label for="find-member-id-radio-1">휴대폰번호로 찾기</label>
                                <button type="button" class="btn-icon-mark" onclick="toolbox()"><i class="ico-excl2"
                                        style="border:2px solid #d9d9d9;top:2px;"></i><span
                                        class="blind">주의</span></button>
                                <div class="tooltip-wrap" onclick="hide($(this))">
                                    <div class="tool">
                                        <span>휴대폰 인증에 문제가 있으신 경우,<br>고객센터로 문의 주시기 바랍니다.</span>
                                    </div>
                                </div>
                            </div>
                            <div id="find-member-id-phone-input-group" class="ui-radio-content">
                                <div class="input-group type-lg w-full">
                                    <label for="find-member-id-name-text1" class="blind"
                                        style="font-weight: 400;font-size: 15px;height: 50px;">휴대폰 인증</label>
                                    <button type="button" id="find-member-id-name-text1"
                                        name="find-member-id-name-text1" class="btn-basic-lg2 btn-primary w-full"
                                        onclick="fnGetCertifyInfo(); return false;"
                                        style="font-weight: 400;font-size: 15px;height: 50px;">휴대폰 인증</button>
                                </div>
                                <!--// input-group -->
                            <!-- <div id="find-member-id-phone-no-error"></div>
                            </div> -->
                            <!-- </li> -->
                            <!--// 휴대폰번호로 찾기 -->

                            <!-- 이메일로 찾기 -->
                            <li>
                                <div class="custom-radio">
                                    <!-- <input type="radio" id="find-member-id-radio-2" class="radio" value="email"
                                    name="find-member-id-radio" data-gtm-form-interact-field-id="0"> -->
                                    <label for="find-member-id">이메일로 찾기</label>
                                </div>
                                <div id="find-member-id-email-input-group" class="ui-radio-content active">
                                    <div class="input-group type-lg w-full">
                                        <label for="find-member-id-name-text2" class="blind">이름 입력</label>
                                        <input type="text" id="find-member-id-name-text2"
                                            name="find-member-id-name-text2" class="input-text"
                                            placeholder="이름 2자 이상 입력" maxlength="50"
                                            onkeyup="onBlurFindMemberIdInput();" onblur="onBlurFindMemberIdInput();">
                                    </div>
                                    <!--// input-group -->
                                    <div id="find-member-id-name-error2"></div>
                                    <div class="input-group type-lg w-full">
                                        <input type="text" id="find-member-id-email-prefix"
                                            name="find-member-id-email-prefix" class="input-text" placeholder="이메일 주소"
                                            onkeyup="onBlurFindMemberIdInput();" onblur="onBlurFindMemberIdInput();">
                                        <div class="input-group-form">
                                            <div class="ui-select select-box w135" id="find-member-id-email-domain"
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
                                    <div id="find-member-id-email-error"></div>
                                    <div class="btn-bottom-area" style="margin-top:20px;">
                                        <button type="submit" id="find-member-id-submit-btn"
                                            class="btn-basic-lg2 btn-primary btn-dim" disabled=""><span>확
                                                인</span></button>
                                        <!-- 비활성화 addClass btn-dim -->
                                    </div>
                                    <!--// btn-bottom-area -->
                                </div>
                                <!--// ui-radio-content -->
                            </li>
                            <!--// 이메일로 찾기 -->
                        </ul>
                    </fieldset>

                    <div>
                        <input type="hidden" name="_csrf" value="7765cce4-ad49-4047-8529-1ad115e1793d">
                    </div>
                </form>
                <ul class="cs-box-bnr" style="margin-top:40px;margin-bottom: 0;">
                    <li><a href="javscript:void(0);" id="ht-custom2" onclick="ht.open(); return false;"><img
                                src="../../static/image/img_cs_bnr01.png" alt="실시간 채팅 문의하기"></a></li>
                    <li><a href="javscript:void(0);"><img src="../../static/image/img_cs_bnr02.png"
                                alt="전화상담 010.7421.8523"></a></li>
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