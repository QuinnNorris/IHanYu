/**
 * Created by dell2 on 2017/5/13.
 */
$(document).ready(function(){
    $(".login-line-button").click(function(){
        var canPass="true";
        var email=$("#email").val();
        var pw=$("#pw").val();
        if(email==""){
            $("#email").parent().parent().css({"border":".01em solid #ec0016"});
            canPass="false";
        }
        if(pw==""){
            $("#pw").parent().parent().css({"border":".01em solid #ec0016"});
            canPass="false";
        }
        if(canPass=="true"){
            $.ajax({
                type: "post",
                url: "login",
                timeout: 800000,
                dataType: "json",
                data:{
                    email:email,
                    pw:pw
                },
                success:function(data){
                    var jsondata=$.parseJSON(data);
                    if(jsondata.result=="false"){
                        alert("用户名或密码错误");
                        $("#pw").parent().parent().css({"border":".01em solid #ec0016"});
                        $("#pw").val("");
                    }
                    else {
                        switch (jsondata.kind){
                            case "student":
                                window.location.href="studentVisitSelf.action";
                                break;
                            case "partner":
                                window.location.href="partnerVisitSelf.action";
                                break;
                            case "teacher":
                                window.location.href="teacherVisitSelf.action";
                                break;
                        }
                    }
                },
                error: function(XMLHttpRequest, textStatus, errorThrown) {
                    console.log(XMLHttpRequest.status);
                    console.log(XMLHttpRequest.readyState);
                    console.log(textStatus);
                }
            });
        }
    });
});
