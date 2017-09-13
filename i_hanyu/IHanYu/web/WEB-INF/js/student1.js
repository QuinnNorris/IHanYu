/**
 * Created by dell2 on 2017/5/14.
 */
$(document).ready(function(){
    /*初始化的时候将右边的检测图标隐藏*/
    $(".info-line-right").css({"opacity":"0"});

    /*将标志错误的样式恢复到原样子*/
    $(".info-input").focus(function(){
        $(this).parent().css({"border":".01em solid #555"});
        $(this).parent().next().css({"opacity":"0"});
    });
    /*密码强度检测*/
    $("#pw").keyup(function(){
        var pw=$("#pw").val();
        var pw_s=pwStrength(pw);
        switch(pw_s){
            case 1:
                $(".info-line-middle-item").eq(0).addClass("info-line-week");
                $(".info-line-middle-item").eq(1).removeClass("info-line-center");
                $(".info-line-middle-item").eq(2).removeClass("info-line-strong");
                break;
            case 2:
                $(".info-line-middle-item").eq(0).addClass("info-line-week");
                $(".info-line-middle-item").eq(1).addClass("info-line-center");
                $(".info-line-middle-item").eq(2).removeClass("info-line-strong");
                break;
            case 3:
                $(".info-line-middle-item").eq(0).addClass("info-line-week");
                $(".info-line-middle-item").eq(1).addClass("info-line-center");
                $(".info-line-middle-item").eq(2).addClass("info-line-strong");
                break;
            default:
                $(".info-line-middle-item").eq(0).removeClass("info-line-week");
                $(".info-line-middle-item").eq(1).removeClass("info-line-center");
                $(".info-line-middle-item").eq(2).removeClass("info-line-strong");
                break;
        }
    });

    /*控制提交*/
    $(".info-commit").click(function(){
        var result="true";
        var email=$("#email").val();
        var pw=$("#pw").val();
        var pw_confirm=$("#pw_confirm").val();
        if(!isEmail(email)){
            alert("邮箱格式有误");
            result="false";
            $("#email").parent().css({"border":".01em solid #f75555"});
            $("#email").parent().next().css({"opacity":"100"});
        }
        if(pwStrength(pw)==0){
            alert("密码少于6位");
            result="false";
            $("#pw").parent().css({"border":".01em solid #f75555"});
            $("#pw").parent().next().css({"opacity":"100"});
        }
        if(pw!=pw_confirm){
            alert("两次密码输入不同");
            result="false";
            $("#pw_confirm").parent().css({"border":".01em solid #f75555"});
            $("#pw_confirm").parent().next().css({"opacity":"100"});
        }
        if(result=="true"){
            /**
             * 检测email的值是否注册过，如果没有注册过则执行以下代码
             */
            document.getElementById("account-info").submit();
        }
    });
});
function isEmail(str) {
    var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
    return reg.test(str);
}
function pwStrength(val){
    var lv=0;
    if(val.match(/[a-z]/g)){lv++;}
    if(val.match(/[0-9]/g)){lv++;}
    if(val.match(/(.[^a-z0-9])/g)){lv++;}
    if(val.length < 6){lv=0;}
    if(lv > 3){lv=3;}
    return lv;
}