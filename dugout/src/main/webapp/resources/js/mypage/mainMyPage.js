$(document).ready(function () {
    $("#main-header").load("../main/Header.html");
    $("#main-footer").load("../main/Footer.html");
    $("#content-section").load("../mypage/PurchaseHistory.html");

    $(".menu-item").click(function() {
        $(".menu-item").removeClass("active");
        $(this).addClass("active");

        var page = $(this).data("page");
        $("#content-section").load("../mypage/" + page);
    });
});