$(document).ready(function() {
	$("#bannerSaveBtn").click(function() {
		$('.modal').modal('show');
	})
})

function openBanner() {

	var previewWindow = window.open('/dugout/admin/previewBanner', '배너미리보기',
			'width=1200,height=600');

	previewWindow.onload = function() {
		var firstBanner = document.getElementById('firstBanner').files[0];
		var secondBanner = document.getElementById('secondBanner').files[0];
		var thirdBanner = document.getElementById('thirdBanner').files[0];

		if (firstBanner) {
			var reader = new FileReader();
			reader.onload = function(e) {
				previewWindow.document.getElementById("firstBannerPreview").src = e.reader.result;
			};
			reader.readAsDataURL(firstBanner);
		}

		if (secondBanner) {
			var reader = new FileReader();
			reader.onload = function(e) {
				previewWindow.document.getElementById("secondBannerPreview").src = e.target.result;
			};
			reader.readAsDataURL(secondBanner);
		}

		if (thirdBanner) {
			var reader = new FileReader();
			reader.onload = function(e) {
				previewWindow.document.getElementById("thirdBannerPreview").src = e.target.result;
			};
			reader.readAsDataURL(thirdBanner);
		}
	};
}