/**
 * Created by dell2 on 2017/5/13.
 */
$(document).ready(function () {
    $(".login-line-button").click(function () {
        var canPass = "true";
        var email = $("#email").val();
        var pw = hex_md5($("#pw").val());
        if (email == "") {
            $("#email").parent().parent().css({"border": ".01em solid #ec0016"});
            canPass = "false";
        }
        if (pw == "") {
            $("#pw").parent().parent().css({"border": ".01em solid #ec0016"});
            canPass = "false";
        }
        if (canPass == "true") {
            $.ajax({
                type: "post",
                contentType: 'application/x-www-form-urlencoded',
                url: "/loginIn",
                timeout: 800000,
                dataType: "json",
                data: {
                    email: email,
                    pw: pw
                },
                success: function (data) {
                    if (data.errorCode == "1001") {
                        alert("用户名或密码错误");
                        $("#pw").parent().parent().css({"border": ".01em solid #ec0016"});
                        $("#pw").val("");
                    }
                    else {
                        switch (data.object.usertype) {
                            case "2":
                                window.location.href = "partnerVisit/" + data.object.emails;
                                break;
                            case "3":
                                window.location.href = "studentVisit/" + data.object.emails;
                                break;
                            case "1":
                                window.location.href = "teacherVisit/" + data.object.emails;
                                break;
                        }
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    console.log(XMLHttpRequest.status);
                    console.log(XMLHttpRequest.readyState);
                    console.log(textStatus);
                }
            });
        }
    });
});
