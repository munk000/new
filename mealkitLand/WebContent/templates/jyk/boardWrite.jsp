<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../static/css/jyk/boardWrite.css">
</head>
<body>
    <section id="contents" class="container">
        <div class="content-wrap frame-sm">
                <div class="page-title-area">
                    <h2 class="title-page">
                        <a href="#">고객센터</a>
                    </h2>
                </div>


                <div class="frame-wrap">
                    <div class="frame-left">
                        <div class="aside-menu-wrap">
                            <nav class="aside-menu">
                                <ul class="menu-list">
                                    <li>
                                        <a href="" class="menu">공지사항</a>
                                    </li>
                                    <li>
                                        <a href="" class="menu">이용안내</a>
                                    </li>
                                    <li>
                                        <a href="" class="menu">자주묻는질문</a>
                                    </li>
                                    <li>
                                        <a href="" class="menu" onclick="checkLogin();">1:1문의하기</a>
                                    </li>
                                    <li>
                                        <a href="" class="menu">고객의소리</a>
                                    </li>
                                </ul>
                            </nav>
                            <div class="aside-guide-box">
                                <dl>
                                    <dt>랭킹닭컴 고객센터</dt>
                                    <dd class="phone-num">02-6405-8088</dd>
                                    <dd>
                                        평일
                                        <span class="text-num-md">09:00 ~ 18:00</span>
                                    </dd>
                                    <dd>주말, 공휴일 휴무</dd>
                                </dl>
                                <!-- <dl></dl> -->
                            </div>
                        </div>
                    </div>

                    

                    <!-- 메인작성 -->
                    <form action="" id="counselRegFrm" name="counselRegFrm" method="post">
                        <div class="frame-right">
                            <div class="frame-cnt-inner">
                                <div class="menu-title-area">
                                    <h3 class="title-menu">1:1 문의하기</h3>
                                </div>
                                <div class="board-form type2">
                                    <table>
                                        <caption>내용 작성</caption>
                                        <colgroup>
                                            <col style="width: 180px;">
                                            <col style="width: auto;">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th class="text-left" scope="row">
                                                    <div class="in-tb">
                                                        문의 유형
                                                        <em class="es">
                                                            <span class="blind">필수입력</span>
                                                            
                                                        </em>
                                                    </div>
                                                </th>
                                                <td class="text-left">
                                                    <div class="input-group w-full">
                                                        <div class="input-group-form">
                                                            <div class="ui-select select-box w150" id="vCounselType" data-value>
                                                                <a href="#none" title class="select-value placeholder">
                                                                    <span>유형선택</span>
                                                                    
                                                                </a>
                                                                <div class="select-list">
                                                                    <ul>
                                                                        <li data-name="100" data-value="100">
                                                                            <a href="#none" class="counselType">
                                                                                <span>주문/결제</span>
                                                                            </a>
                                                                        </li>
                                                                        <li data-name="200" data-value="200">
                                                                            <a href="#none" class="counselType">
                                                                                <span>취소/반품</span>
                                                                            </a>
                                                                        </li>
                                                                        <li data-name="300" data-value="300">
                                                                            <a href="#none" class="counselType">
                                                                                <span>상품관련</span>
                                                                            </a>
                                                                        </li>
                                                                        <li data-name="400" data-value="400">
                                                                            <a href="#none" class="counselType">
                                                                                <span>배송관련</span>
                                                                            </a>
                                                                        </li>
                                                                        <li data-name="500" data-value="500">
                                                                            <a href="#none" class="counselType">
                                                                                <span>포인트</span>
                                                                            </a>
                                                                        </li>
                                                                        <li data-name="951" data-value="951">
                                                                            <a href="#none" class="counselType">
                                                                                <span>설선물세트 문의</span>
                                                                            </a>
                                                                        </li>
                                                                        <li data-name="999" data-value="999">
                                                                            <a href="#none" class="counselType">
                                                                                <span>기타</span>
                                                                            </a>
                                                                        </li>
                                                                        
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <input type="text" name="vQuestionTitle" id="vQuestionTitle" title class="input-text" placeholder="제목을 입력해주세요" value>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th class="text-left" scope="row">
                                                    <div class="in-tb">주문상품</div>
                                                </th>
                                                <td class="text-left">
                                                    <div class="input-group w-full">
                                                        <input type="text" id="item-1" class="input-text" disabled placeholder="문의상품을 선택해주세요">
                                                        <span class="input-group-btn">
                                                            <button type="button" id="btn_orderProduct" class="btn-form btn-ex-white w150 btn_orderProduct">
                                                                <span>주문상품 검색</span>
                                                            </button>
                                                        </span>
                                                    </div>
                                                    <div id="mainPrd"></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th class="text-left" scope="row">
                                                    <div class="in-tb">문의내용
                                                        <em class="es">
                                                            <span class="blind">필수입력</span>
                                                        </em>
                                                    </div>
                                                </th>
                                                <td class="text-left">
                                                    <div class="textarea-box-count h230">
                                                        <textarea name="vQuestionCont" id="vQuestionCont" placeholder="문의내용을 입력하세요"></textarea>
                                                        <div class="txt-count">
                                                            <span id="counter">0</span>
                                                            " / "
                                                            <span id="counter">1,000</span>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <!-- 첨부파일영역-->
                                            <tr></tr>
                                            <!-- 첨부파일영역 -->
                                        </tbody>
                                    </table>
                                </div>


                                <!-- board-form -->
                                <div class="btn-bottom-area">
                                    <button type="button" class="btn-basic-lg2 btn-grey3" onclick="javascript:history.back();">
                                        <span>취소하기</span>
                                    </button>
                                    <button type="button" class="btn-basic-lg2 btn-primary" onclick="goSave();">
                                        <span>문의하기</span>
                                    </button>
                                </div>

                            </div>

                        </div>
                    </form> 
                </div>
            </div>

        </div>
    </section>
</body>
</html>