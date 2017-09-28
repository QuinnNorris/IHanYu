/**
 * Created by dell2 on 2017/4/23.
 */
$(document).ready(function () {
    /*初始化*/
    $("#head1").hide();
    $(".teacher-list-extra").hide();


    /*控制用户名的信息以及注销等*/
    $(".login-regist").eq(0).hover(
        function () {
            if ($(".login-regist-item").css("display") == "none" && $(".login-regist-item-transparent").css("display") == "none") {
                $(".user_item").show();
            }
        },
        function () {
            $(".user_item").hide();
        }
    );
    $(".login-regist").eq(1).hover(
        function () {
            if ($(".login-regist-item").css("display") == "none" && $(".login-regist-item-transparent").css("display") == "none") {
                $(".user_item_transparent").show();
            }
        },
        function () {
            $(".user_item_transparent").hide();
        }
    );
    /*控制顶端导航栏属性*/
    $(window).scroll(function () {
        var winHeight = $(window).height();
        var scrollTop = $(this).scrollTop();
        if (scrollTop >= winHeight) {
            $("#head1").show();
            $("#head2").hide();
        }
        else {
            $("#head1").hide();
            $("#head2").show();
        }
    });

    /*控制额外的语伴列表的展开*/
    $(".page2-extra").click(function () {
        if ($(".page2-hidden").css("height") == "0px") {
            $(".page2-hidden").css({'height': 'auto'});
            $(".page2-extra > p").css({'transform': 'rotate(45deg)', 'left': '.05em', 'bottom': '0'});
            $(".page2-extra").css({'background': 'hsl(0,0%,80%)'});
        }
        else {
            $(".page2-hidden").css({'height': '0'});
            $(".page2-extra > p").css({'transform': 'rotate(0deg)', 'left': '0', 'bottom': '.05em'});
            $(".page2-extra").css({'background': 'hsl(0,90%,65%)'});
        }
    });

    /*控制额外的教师列表的展开*/
    $(".page3-extra").click(function () {
        if ($(".teacher-list-extra").css("display") == "none") {
            $(".page3-extra > p").css({'transform': 'rotate(45deg)', 'left': '.05em', 'bottom': '0'});
            $(".page3-extra").css({'background': 'hsl(0,0%,80%)'});
        }
        else {
            $(".page3-extra > p").css({'transform': 'rotate(0deg)', 'left': '0', 'bottom': '.05em'});
            $(".page3-extra").css({'background': 'hsl(0,90%,65%)'});
        }
        $(".teacher-list-extra").toggle();
    });

    /**
     * 页面跳转
     */
    /*首页顶部的三个跳转，分别指向主页、教师、学生*/
    $(".item").eq(0).click(function () {
        window.location.href = "/homepage";
    });
    $(".item").eq(1).click(function () {
        window.location.href = "teacherSearch.action";
    });
    $(".item").eq(2).click(function () {
        window.location.href = "partnerSearch.action";
    });
    $(".item-transparent").eq(0).click(function () {
        window.location.href = "/homepage";
    });
    $(".item-transparent").eq(1).click(function () {
        window.location.href = "teacherSearch.action";
    });
    $(".item-transparent").eq(2).click(function () {
        window.location.href = "partnerSearch.action";
    });
    /*首页第一屏幕的两个按钮*/
    $(".page1-button").eq(0).click(function () {
        window.location.href = "teacherSearch.action";
    });
    $(".page1-button").eq(1).click(function () {
        window.location.href = "partnerSearch.action";
    });

    /*登录与注册页面的跳转*/
    $("#login").click(function () {
        window.location.href = "/toSignIn";
    });
    $("#login2").click(function () {
        window.location.href = "/toSignIn";
    });
    $("#regist").click(function () {
        window.location.href = "/toSignUp";
    });
    $("#regist2").click(function () {
        window.location.href = "/toSignUp";
    });
    $(".user_item").eq(1).click(function () {
        $.ajax({
            type: "post",//请求方式
            url: "/loginOut",
            timeout: 800000,//超时时间：800秒
            dataType: "json",
            contentType: 'application/x-www-form-urlencoded',
            data: {},
            //请求成功后的回调函数 data为json格式
            success: function (data) {
                window.location.href = "/homepage";
            },
            error: function () {
                alert("请求出错！");
            }
        });
    });
    $(".user_item_transparent").eq(1).click(function () {
        $.ajax({
            type: "post",//请求方式
            url: "/loginOut",
            timeout: 800000,//超时时间：800秒
            dataType: "json",
            contentType: 'application/x-www-form-urlencoded',
            data: {},
            //请求成功后的回调函数 data为json格式
            success: function (data) {
                window.location.href = "/homepage";
            },
            error: function () {
                alert("请求出错！");
            }
        });
    });
});

/*
 *教师列表项跳转页面
 */
function changeTeacher(teacherEmail) {
    window.location.href = "/teacherVisit/" + teacherEmail;
}

/*
 *学生列表项跳转页面
 */
function changePartner(partnerEmail) {
    window.location.href = "/partnerVisit/" + partnerEmail;
}


/*
 * 注销和个人中心的跳转
 */
function changePerson(usertype, email) {
    if (usertype == 1)
        window.location.href = "/teacherVisit/" + email;
    else if (usertype == 2)
        window.location.href = "/partnerVisit/" + email;
    else
        window.location.href = "/studentVisit/" + email;
}

/**
 * 判断登录状态
 */
window.onload = function submitComment() {
    $.ajax({
        type: "post",//请求方式
        url: "/getLoginState",
        contentType: 'application/x-www-form-urlencoded',
        timeout: 800000,//超时时间：800秒
        dataType: "json",//设置返回数据的格式
        data: {},
        //请求成功后的回调函数 data为json格式
        success: function (data) {
            if (data.errorCode == "0000") {
                $(".user").show();
                $(".login-regist-item").hide();
            }
            else {
                $(".user").hide();
                $(".login-regist-item").show();
            }
        },
        error: function () {
            alert("请求出错！");
        }
    });
}
