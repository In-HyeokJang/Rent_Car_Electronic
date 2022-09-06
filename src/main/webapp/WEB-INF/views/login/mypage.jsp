<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html style="font-size: 16px;" lang="en">

  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="나의 정보">
    <meta name="description" content="">
    <title>Home</title>
    <script class="u-script" type="text/javascript" src="/js/member/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="/js/member/nicepage.js" defer=""></script>

    <style>
      .info {
        margin-left: 400px;
      }
      .layout {
        display: flex;
        justify-content: center
      }
    </style>
  </head>

  <body data-home-page="Home.html"
   data-home-page-title="Home"
    class="u-body u-xl-mode" 
    data-lang="en">

    <div class="layout">
    <section class="u-clearfix u-section-1" id="sec-c9d0">
      
        <div class="u-table u-table-responsive u-table-1">

        <img class="u-image u-image-default u-preserve-proportions u-image-1"
          src="/images/SJ/mypage/premium-icon-member-card-3945150.png" width="250" height="200">

        <h3 class="u-text u-text-default u-text-1">${dto.mname} 님의</h3>
<h3 class="u-text u-text-default u-text-palette-1-base u-text-2">회 원 정 보</h3>
        <div class="info">
          <a href="/exception/user/update"
            class="u-border-none u-btn u-btn-round u-button-style u-radius-30 u-btn-1">&nbsp;정보 수정</a>
            <a href="/exception/user/reservationinfo"
                        class="u-border-none u-btn u-btn-round u-button-style u-radius-30 u-btn-1">&nbsp;예약/이용내역</a>
        </div>


        <h2 class="u-text u-text-default u-text-3">나의 정보</h2>

        
          <table class="u-table-entity">
            <colgroup>
              <col width="13.86%">
              <col width="86.14%">
            </colgroup>
            <thead class="u-black u-table-header u-table-header-1">
              <tr style="height: 75px;">
                <th
                  class="u-align-left u-border-2 u-border-grey-40 u-border-no-left u-border-no-right u-palette-1-light-1 u-table-cell u-table-cell-1">
                  아이디</th>
                <th
                  class="u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell u-white u-table-cell-2">
                  ${dto.id}</th>
              </tr>
            </thead>
            <tbody class="u-table-alt-grey-5 u-table-body">
              <tr style="height: 75px;">
                <th
                  class="u-align-left u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-first-column u-palette-1-light-1 u-table-cell u-table-cell-3">
                  이름</th>
                <th class="u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell u-white u-table-cell-2">${dto.mname}
                </th>
              </tr>
              <tr style="height: 77px;">
                              <th
                                class="u-align-left u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-first-column u-palette-1-light-1 u-table-cell u-table-cell-3">
                                전화번호</th>
                              <th class="u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell u-white u-table-cell-2">${dto.phone}
                              </th>
                            </tr>
              <tr style="height: 76px;">
                <th
                  class="u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-first-column u-palette-1-light-1 u-table-cell u-table-cell-5">
                  이메일</th>
                <th
                  class="u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell u-white u-table-cell-6">
                  ${dto.email}</th>
              </tr>
              <tr style="height: 76px;">
                <th
                  class="u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-first-column u-palette-1-light-1 u-table-cell u-table-cell-7">
                  주소</th>
                <th class="u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell">
                ${dto.address1} ${dto.address2}</th>
              </tr>
              <tr style="height: 76px;">
                <th
                  class="u-border-2 u-border-grey-60 u-border-no-left u-border-no-right u-first-column u-palette-1-light-1 u-table-cell u-table-cell-9">
                  라이센스</th>
                <th
                  class="u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell u-white u-table-cell-10">
                  ${dto.license}</th>
              </tr>
              <tr style="height: 76px;">
                              <th
                                class="u-border-2 u-border-grey-60 u-border-no-left u-border-no-right u-first-column u-palette-1-light-1 u-table-cell u-table-cell-9">
                                적립포인트</th>
                              <th
                                class="u-border-2 u-border-grey-30 u-border-no-left u-border-no-right u-table-cell u-white u-table-cell-10">
                                포인트 추가해야함</th>
                            </tr>
            </tbody>
          </table>
        </div>
      
    </section>
    </div>
  </body>

  </html>