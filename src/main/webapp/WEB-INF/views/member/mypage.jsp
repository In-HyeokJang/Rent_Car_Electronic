<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="나의 정보">
    <meta name="description" content="">
    <title>Home</title>
     <link rel="stylesheet" href="/css/member/mypage/nicepage.css" media="screen">
<link rel="stylesheet" href="/css/member/mypage/Home.css" media="screen">
    <script class="u-script" type="text/javascript" src="/js/member/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="/js/member/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.14.1, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <style>
    .info{
    margin-left: 400px;
    }
    </style>
  </head>
  <body data-home-page="Home.html" data-home-page-title="Home" class="u-body u-xl-mode" data-lang="en"><header class="u-clearfix u-header u-header" id="sec-0df1"><div class="u-clearfix u-sheet u-valign-middle u-sheet-1">

</g></svg>
            </a>
          </div>

          <div class="u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </div></header>
    <section class="u-clearfix u-section-1" id="sec-c9d0">
      <div class="u-clearfix u-sheet u-sheet-1">
        <img class="u-image u-image-default u-preserve-proportions u-image-1" src="/images/SJ/mypage/premium-icon-member-card-3945150.png" alt="" data-image-width="512" data-image-height="512">
        <h3 class="u-text u-text-default u-text-1">${dto.mname} 님의</h3>

    <div class="info">
        <a href="/exception/user/update" class="u-border-none u-btn u-btn-round u-button-style u-radius-30 u-btn-1">&nbsp;정보 수정</a>
        <a href="/user/member/reservation" class="u-border-none u-btn u-btn-round u-button-style u-radius-30 u-text-body-alt-color u-btn-2">예약 정보</a>
        </div>

        <h3 class="u-text u-text-default u-text-palette-1-base u-text-2">회 원 정 보</h3>
        <h2 class="u-text u-text-default u-text-3">나의 정보</h2>

        <div class="u-table u-table-responsive u-table-1">
          <table class="u-table-entity">
            <colgroup>
              <col width="13.86%">
              <col width="86.14%">
            </colgroup>
            <thead class="u-black u-table-header u-table-header-1">
              <tr style="height: 75px;">
                <th class="u-align-left u-border-2 u-border-grey-40 u-border-no-left u-border-no-right u-palette-1-light-1 u-table-cell u-table-cell-1">아이디</th>
                <th class="u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell u-white u-table-cell-2">${dto.id}</th>
              </tr>
            </thead>
            <tbody class="u-table-alt-grey-5 u-table-body">
              <tr style="height: 75px;">
                <td class="u-align-left u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-first-column u-palette-1-light-1 u-table-cell u-table-cell-3">이름</td>
                <td class="u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell">${dto.mname}</td>
              </tr>
              <tr style="height: 76px;">
                <td class="u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-first-column u-palette-1-light-1 u-table-cell u-table-cell-5">이메일</td>
                <td class="u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell u-white u-table-cell-6">${dto.email}</td>
              </tr>
              <tr style="height: 76px;">
                <td class="u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-first-column u-palette-1-light-1 u-table-cell u-table-cell-7">주소</td>
                <td class="u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell"></td>
              </tr>
              <tr style="height: 76px;">
                <td class="u-border-2 u-border-grey-60 u-border-no-left u-border-no-right u-first-column u-palette-1-light-1 u-table-cell u-table-cell-9"> 라이센스</td>
                <td class="u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell u-white u-table-cell-10">${dto.id}</td>
              </tr>
            </tbody>
          </table>
          <br>
          <h3 class="u-text u-text-default u-text-grey-15 u-text-5">적립포인트</h3>
          <p>point 추가 해야함</p>

        </div>
      </div>
    </section>


<link rel="stylesheet" type="text/css" href="/css/member/body.css"/>
</body></html>