//显示当前时间
var syear;
var smonth;
var sdays;
var shour;
var sminute;
var ssecond;


var uhour = 0;
var uminute = 0;
var usecond = 0;

function shownowTime() {
    var now = new Date();
    var year = now.getFullYear();
    var month = now.getMonth() + 1;
    var day = now.getDate();
    var hour = now.getHours();
    var minute = now.getMinutes();
    var second = now.getSeconds();
    document.all.showtime.innerHTML = "当前时间：<br/>" + year + "年" + month + "月" + day + "日<br/>" + hour + "时" + minute + "分" + second + "秒<br/>";
    var timeID = setTimeout(shownowTime, 1000);
}

function greeting() {
    var now = new Date();
    var hour = now.getHours();
    if (hour < 12) {
        document.all.greet.innerHTML = "Good Morning!";
    } else if (hour <= 18) {
        document.all.greet.innerHTML = "Good Afternoon!";
    } else {
        document.all.greet.innerHTML = "Good Evening!";
    }


}

function usedTime() {

    usecond += 1;
    if (usecond >= 60) {
        usecond -= 60;
        uminute += 1;
        if (uminute >= 60) {
            uminute -= 60;
            uhour += 1;
        }
    }

    document.all.showusedtime.innerHTML = "已用时间：<br/>" + uhour + "时" + uminute + "分" + usecond + "秒<br/>";
    var timeID = setTimeout(usedTime, 1000);
}

function usedTime2() {
    var score = cacScore();
    var myselect = document.getElementById("selsex");
    var index = myselect.selectedIndex;
    var utime;
    var name = document.getElementById("username").value;
    if (name == "请先输入你的名字") {
        document.getElementById("username").value = "匿名用户";
        name = "匿名用户";
    }
    if (uhour < 10) {
        utime = '0';
        utime += String(uhour);
    } else {
        utime = String(uhour);
    }
    utime += ":";
    if (uminute < 10) {
        utime += '0';
    }
    utime += String(uminute);
    utime += ":";
    if (usecond < 10) {
        utime += '0';
    }
    utime += String(usecond);

    document.getElementById("selsex1").value = myselect.options[index].text;
    document.getElementById("score1").value = String(score);
    document.getElementById("utime1").value = utime;
    if (myselect.options[index].text == "男")
        alert(name + "先生：\n共用时间：" + uhour + "时" + uminute + "分" + usecond + "秒\n得分：" + score + "\n");
    else if (myselect.options[index].text == "女")
        alert(name + "女士：\n共用时间：" + uhour + "时" + uminute + "分" + usecond + "秒\n得分：" + score + "\n");
    else if (myselect.options[index].text == "其他？")
        alert(name + "其他？：\n共用时间：" + uhour + "时" + uminute + "分" + usecond + "秒\n得分：" + score + "\n");
    else alert(name + "：\n共用时间：" + uhour + "时" + uminute + "分" + usecond + "秒\n得分：" + score + "\n");
    uhour = 0;
    uminute = 0;
    usecond = 0;
    window.location.reload();
}


function cacScore() {
    var score = 0;
    if (document.test.problem1[1].checked == true) {
        score += 10;
    }
    if (document.test.problem2[3].checked == true) {
        score += 10;
    }
    if (document.test.problem3[2].checked == true) {
        score += 10;
    }
    if (document.test.problem4[0].checked == true && document.test.problem4[1].checked == true && document.test.problem4[2].checked == true && document.test.problem4[3].checked == false) {
        score += 10;
    }
    if (document.test.problem5[0].checked == true && document.test.problem5[1].checked == true && document.test.problem5[2].checked == false && document.test.problem5[3].checked == true) {
        score += 10;
    }
    if (document.test.problem6[0].checked == true && document.test.problem6[1].checked == true && document.test.problem6[2].checked == true && document.test.problem6[3].checked == false) {
        score += 10;
    }
    if (document.test.problem7.value == "0") {
        score += 10;
    }
    if (document.test.problem8.value == "1") {
        score += 10;
    }
    if (document.test.problem9.value == "1") {
        score += 10;
    }
    if (document.test.problem10.value == "4") {
        score += 10;
    }
    return score;
}

function startTest() {
    alert("准备好开始一次测试了吗?");
    var now = new Date();
    syear = now.getFullYear();
    smonth = now.getMonth() + 1;
    sday = now.getDate();
    shour = now.getHours();
    sminute = now.getMinutes();
    ssecond = now.getSeconds();
}

function PrintHidden() {
    document.getElementById("links").removeAttribute("hidden");
    document.getElementById("content").removeAttribute("hidden");
}

function validate() {
    var returnValue = true;
    var username = document.getElementById("username").value;
    var password1 = document.getElementById("password").value;
    var password2 = document.getElementById("password2").value;
    if (username.length < 6) {
        returnValue = false;
        alert("账号长度至少6位.\n 请重新设置");
        document.getElementById(username).focus();
    }
    if (password1.length < 6) {
        returnValue = false;
        alert("密码长度至少6位.\n 请重新设置");
        document.getElementById("password").value = "";
        document.getElementById("password2").value = "";
        document.getElementById("username").focus();
    }
    if (password1.value != password2.value) {
        returnValue = false;
        alert("两次输入不一致\n请重新设置");
        document.getElementById("password").value = "";
        document.getElementById("password2").value = "";
        document.getElementById("username").focus();
    }
    if (returnValue == true) {
        document.getElementById("test").submit();
    }
    return returnValue;
}

function validate1() {
    var returnValue = true;
    var username = document.getElementById("username").value;
    var password1 = document.getElementById("password").value;
    if (username.length < 6) {
        returnValue = false;
    }
    if (password1.length < 6) {
        returnValue = false;
    }
    if (returnValue == true) {
        document.getElementById("test").submit();
    } else {
        alert("错误的账号或密码\n请重新输入");
    }
    return returnValue;
}