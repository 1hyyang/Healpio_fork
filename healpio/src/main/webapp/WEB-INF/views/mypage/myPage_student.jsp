<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>

        <meta name="description" content="운동강사와 회원의 매칭서비스" />
        <meta name="keywords" content="matching service" />
        <meta
            name="viewport"
            content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"
        />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" />
        <script src="https://kit.fontawesome.com/43c3dfddba.js" crossorigin="anonymous"></script>
        <link href="//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css" rel="stylesheet" type="text/css" />
        <!-- 부트스트랩 css-->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
            crossorigin="anonymous"
        />
        <link rel="stylesheet" href="/resources/css/style_student.css" />
    </head>
    <body>
        <div id="wrap">
            <header>
                <div class="inner">
                    <div class="header-container">
                        <div class="logo"><img src="/resources/images/logo/logo_header.png" alt="logo" /></div>
                        <div class="health-project"><a href="http://www.naver.com">운동 프로젝트</a></div>
                        <div class="health-search"><a href="http://www.naver.com">운동 강사 찾기</a></div>
                        <div class="user"><img src="/resources/images/icon/header/icon_user.png" alt="user" /></div>
                    </div>
                </div>
            </header>

            <section>
                <div class="inner">
                    <div class="inner-container">
                        <div class="side-menu">
                            <div class="side-menu-container">
                                <div class="user-logo">
                                    <img
                                        class="user-logo-img"
                                        src="/resources/images/icon/student.png"
                                        alt=""
                                    />
                                </div>
                                <div class="myInformation"><a>내 정보</a></div>
                                <div class="scrap"><a>내가 찜한 강좌</a></div>
                                <div class="checkReservation"><a>예약 확인</a></div>
                                <div class="history"><a>이전 강의 내역</a></div>
                            </div>
                        </div>

                        <div class="content">
                            <!-- prev
                                <div class="content-prev-container">
                                    <div class="content-prev">
                                        <div class="content-prev-title"><a>하루 10분! 힐링요가</a></div>
                                        <div class="content-prev-date">2023.07.24 (월) 오후 7:00</div>
                                        <div class="content-prev-cancel">
                                            <button type="button" class="btn btn-primary">예약취소</button>
                                        </div>
                                    </div>
                                    <div class="content-prev">
                                        <div class="content-prev-title"><a>하루 10분! 힐링요가</a></div>
                                        <div class="content-prev-date">2023.07.24 (월) 오후 7:00</div>
                                        <div class="content-prev-cancel">
                                            <button type="button" class="btn btn-primary">예약취소</button>
                                        </div>
                                    </div>
                                    <div class="content-prev">
                                        <div class="content-prev-title"><a>하루 10분! 힐링요가</a></div>
                                        <div class="content-prev-date">2023.07.24 (월) 오후 7:00</div>
                                        <div class="content-prev-cancel">
                                            <button type="button" class="btn btn-primary">예약취소</button>
                                        </div>
                                    </div>
                                    <div class="content-prev">
                                        <div class="content-prev-title"><a>하루 10분! 힐링요가</a></div>
                                        <div class="content-prev-date">2023.07.24 (월) 오후 7:00</div>
                                        <div class="content-prev-cancel">
                                            <button type="button" class="btn btn-primary">예약취소</button>
                                        </div>
                                    </div>
                                </div>

                            -->

                            <!-- reservation 
                            <div class="content-reservation-container">
                                <div class="content-reservation">
                                    <div class="content-reservation-title"><a>하루 10분! 힐링요가</a></div>
                                    <div class="content-reservation-date">2023.07.24 (월) 오후 7:00</div>
                                    <div class="content-reservation-cancel">
                                        <button type="button" class="btn btn-primary">예약취소</button>
                                    </div>
                                </div>
                                <div class="content-reservation">
                                    <div class="content-reservation-title"><a>하루 10분! 힐링요가</a></div>
                                    <div class="content-reservation-date">2023.07.24 (월) 오후 7:00</div>
                                    <div class="content-reservation-cancel">
                                        <button type="button" class="btn btn-primary">예약취소</button>
                                    </div>
                                </div>
                                <div class="content-reservation">
                                    <div class="content-reservation-title"><a>하루 10분! 힐링요가</a></div>
                                    <div class="content-reservation-date">2023.07.24 (월) 오후 7:00</div>
                                    <div class="content-reservation-cancel">
                                        <button type="button" class="btn btn-primary">예약취소</button>
                                    </div>
                                </div>
                                <div class="content-reservation">
                                    <div class="content-reservation-title"><a>하루 10분! 힐링요가</a></div>
                                    <div class="content-reservation-date">2023.07.24 (월) 오후 7:00</div>
                                    <div class="content-reservation-cancel">
                                        <button type="button" class="btn btn-primary">예약취소</button>
                                    </div>
                                </div>
                            </div>
                            -->

                            <!-- scrap
                            <div class="content-scrap-container">
                                <ul class="scrap-list">
                                    <li class="scrap-card">
                                        <div class="scrap-img"></div>
                                        <div class="scrap-info-container">
                                            <div class="scrap-title">하루 10분 힐링 요가</div>
                                            <div class="scrap-lecture-info">
                                                <div class="scrap-teacher">김건우</div>
                                                <div class="scrap-sports">요가</div>
                                                <div class="scrap-address">서울시 마포구 대흥동</div>
                                            </div>

                                            <div class="scrap-like">하트</div>
                                        </div>
                                    </li>
                                    <li class="scrap-card">
                                        <div class="scrap-img"></div>
                                        <div class="scrap-info-container">
                                            <div class="scrap-title">하루 10분 힐링 요가</div>
                                            <div class="scrap-lecture-info">
                                                <div class="scrap-teacher">김건우</div>
                                                <div class="scrap-sports">요가</div>
                                                <div class="scrap-address">서울시 마포구 대흥동</div>
                                            </div>

                                            <div class="scrap-like">하트</div>
                                        </div>
                                    </li>
                                    <li class="scrap-card">
                                        <div class="scrap-img"></div>
                                        <div class="scrap-info-container">
                                            <div class="scrap-title">하루 10분 힐링 요가</div>
                                            <div class="scrap-lecture-info">
                                                <div class="scrap-teacher">김건우</div>
                                                <div class="scrap-sports">요가</div>
                                                <div class="scrap-address">서울시 마포구 대흥동</div>
                                            </div>

                                            <div class="scrap-like">하트</div>
                                        </div>
                                    </li>
                                    <li class="scrap-card">
                                        <div class="scrap-img"></div>
                                        <div class="scrap-info-container">
                                            <div class="scrap-title">하루 10분 힐링 요가</div>
                                            <div class="scrap-lecture-info">
                                                <div class="scrap-teacher">김건우</div>
                                                <div class="scrap-sports">요가</div>
                                                <div class="scrap-address">서울시 마포구 대흥동</div>
                                            </div>

                                            <div class="scrap-like">하트</div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            
                            -->

                            <!-- information
                            <div class="content-info">
                                <form class="info-back">
                                    <div class="info-back-container">
                                        <div><h3>내 정보</h3></div>
                                        <div class="mb-3">
                                            <label class="form-label">닉네임</label>
                                            <input type="text" class="form-control" id="exampleInputPassword1" />
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">비밀번호</label>
                                            <input type="password" class="form-control" id="exampleInputPassword1" />
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">비밀번호 확인</label>
                                            <input type="password" class="form-control" id="exampleInputPassword1" />
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">전화번호</label>
                                            <input type="text" class="form-control" id="exampleInputPassword1" />
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">이메일</label>
                                            <input type="email" class="form-control" id="exampleInputPassword1" />
                                        </div>
                                        <div><input class="btn btn-primary edit" type="submit" value="수정하기" /></div>
                                    </div>
                                </form>
                            </div>
                            -->
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <footer>
            <div class="inner">
                <div class="footer-container">
                    <div class="footer-box1">
                        <div class="footer-logo"><img src="/resources/images/logo/logo_footer.png" alt="하단로고" /></div>
                        <div class="footer-slogan">
                            건강한 삶을 위한<br />
                            새로운 트랜드를 선도하는<br />
                            당신의 운동 파트너
                        </div>
                    </div>

                    <div class="footer-box2">
                        <div class="footer-proposal">문의 및 건의 사항 :</div>

                        <div><img src="/resources/images/icon/footer/icon_mail.png" alt="mail" /></div>
                        <div><img src="/resources/images/icon/footer/icon_facebook.png" alt="facebook" /></div>
                        <div><img src="/resources/images/icon/footer/icon_twitter.png" alt="twitter" /></div>
                        <div><img src="/resources/images/icon/footer/icon_instagram.png" alt="instagram" /></div>
                    </div>
                </div>
            </div>
        </footer>
        <script src="js/student.js"></script>
        <!-- 부트스트랩js-->

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
    