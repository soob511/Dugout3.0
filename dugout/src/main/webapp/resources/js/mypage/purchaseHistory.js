$(document).ready(function () {
    $(".purchase-period-buttons button").on("click", function () {
        $(".purchase-period-buttons button").removeClass("active");
        $(this).addClass("active");
    });
});