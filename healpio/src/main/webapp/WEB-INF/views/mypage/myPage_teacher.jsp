<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        <!-- 웹사이트에 대한 정보를 기재해준다. -->
        <meta name="description" content="운동강사와 회원의 매칭서비스" />
        <meta name="keywords" content="matching service" />

        <!-- user-scalable 을 사용하지 않는 디바이스를 위해, maximun-scale/minimum-scale 설정을 하는 것입니다-->
        <!-- user-scalable : 유저가 확대, 축소할 권한을 설정하는 요소 -->
        <meta
            name="viewport"
            content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"
        />

        <!-- 인터넷 익스플로어가 최신 엔진으로 랜더링할 수 있게한다.-->
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />

        <!-- css를 리셋해준다. -->
        <!-- CSS Reset(1), style.css, 아이콘 폰트, 웹페이지 사용 폰트 -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" />

        <!-- https://fontawesome.com/start -->
        <script src="https://kit.fontawesome.com/43c3dfddba.js" crossorigin="anonymous"></script>

        <!-- 무료 폰트 -->
        <!-- Spoca Han Sans Neo: https://spoqa.github.io/spoqa-han-sans/ko-KR/ -->
        <link href="//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css" rel="stylesheet" type="text/css" />

        <!--css가져오기-->
        <link rel="stylesheet" href="css/style_teacher.css" />
    </head>
    <body>
        <header>
            <div class="inner">
                <div class="header-container">
                    <div class="logo"><img src="image/logo/logo_header.png" alt="logo" /></div>
                    <div class="health-project"><a href="http://www.naver.com">운동 프로젝트</a></div>
                    <div class="health-search"><a href="http://www.naver.com">운동 강사 찾기</a></div>
                    <div class="user"><img src="image/header/icon_user.png" alt="user" /></div>
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
                                    src="image/logo/KakaoTalk_20230727_145442348_01 (1).png"
                                    alt=""
                                />
                            </div>
                            <div class="myInformation"><a>내 정보</a></div>
                            <div class="registration"><a>등록 강의 목록</a></div>
                            <div class="checkReservation"><a>예약 확인</a></div>
                            <div class="history"><a>이전 강의 내역</a></div>
                        </div>
                    </div>
                    <div class="content"></div>
                </div>
            </div>
        </section>
        <footer>
            <div class="inner">
                <div class="footer-container">
                    <div class="footer-box1">
                        <div class="footer-logo"><img src="image/logo/logo_footer.png" alt="하단로고" /></div>
                        <div class="footer-slogan">
				                            건강한 삶을 위한<br />
				                            새로운 트랜드를 선도하는<br />
				                            당신의 운동 파트너
                        </div>
                    </div>

                    <div class="footer-box2">
                        <div class="footer-proposal">문의 및 건의 사항 :</div>

                        <div><img src="image/footer/icon_mail.png" alt="mail" /></div>
                        <div><img src="image/footer/icon_facebook.png" alt="facebook" /></div>
                        <div><img src="image/footer/icon_twitter.png" alt="twitter" /></div>
                        <div><img src="image/footer/icon_instagram.png" alt="instagram" /></div>
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>
