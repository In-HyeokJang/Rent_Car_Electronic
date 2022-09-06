<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <title>JS Bin</title>
</head>
<body>
 <div id="contents" class="contents">
			<!-- 컨텐츠 영역  -->
			<h2 class="type01">렌터카</h2>
			<div class="selectView centerView">
				<div class="swiperWrap swiperPaging chargeDate" data-options='{"loop": false}'><!--20211124 loop 옵션 수정-->
					<button type="button" class="swiper-button-prev swiper-button-disabled" tabindex="-1" role="button" aria-label="Previous slide" aria-disabled="true">이전</button>
					<div class="swiper-container swiper-container-initialized swiper-container-horizontal">
						<ul class="swiper-wrapper">
							<li class="swiper-slide" style="width: 300px;">2021</li>
							<li class="swiper-slide" style="width: 300px;">2022</li>
						</ul>
					<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
					<button type="button" class="swiper-button-next" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false">다음</button>
				</div>
			</div>
			<ul class="tabType02">
				<li><a href="#" role="button" aria-selected="true" onclick="javascript:changeParams(this);" data-status="all">전체</a></li>
				<li><a href="#" role="button" aria-selected="false" onclick="javascript:changeParams(this);" data-status="ordered">예약완료</a></li>
				<li><a href="#" role="button" aria-selected="false" onclick="javascript:changeParams(this);" data-status="canceled">예약취소</a></li>
			</ul>
			<ul class="bookingList" resevList>
            </ul>
			<div class="pageMove">
				<div class="btnView">
				</div>
			</div>
			<div class="noData infoType" noDataList>
				<p class="tit">조회 내역이 없습니다.</p>
			</div>
			<!-- //컨텐츠 영역 -->
			<div class="bannerWrap">
			</div>
		</div>
  </div>

</body>
</html>