/**
 * Created by dell2 on 2017/5/14.
 */
$(document).ready(function(){
    $(".info-check-icon").click(function(){
        $(this).addClass("info-check-icon-active");
        $(this).removeClass("info-check-icon-inactive");
        $(this).parent().siblings().children(".info-check-icon").removeClass("info-check-icon-active");
        $(this).parent().siblings().children(".info-check-icon").addClass("info-check-icon-inactive");
    });
});