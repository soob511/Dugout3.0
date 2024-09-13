$(document).ready(function () {
    $(".menu-item").click(function() {
        $(".menu-item").removeClass("active");
        $(this).addClass("active");
    });
    
    $(".purchase-period-buttons button").on("click", function () {
        $(".purchase-period-buttons button").removeClass("active");
        $(this).addClass("active");
    });
});