<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001" %>
    <html>

    <head>
        <meta charset=utf-8>
        <link rel=stylesheet type=text/css href=aboutme_style.css>
        <script type="text/javascript" src="onlinetest.js"></script>
        <title>登陆</title>


    </head>

    <body>
        <div id="container">

            <form name="test" id="test" action="log.asp" method="post" class="questions">
                <h1>登陆</h1>
                <hr size=1px color=#000000>
                <div id="banner">
                    <marquee behavior="scroll" direction="left"> <label id="greet"></label>请先登录</marquee>
                </div>
                <div id="content" style="margin-right: 200;">
                    <label for="username">账号</label>
                    <input type="text" name="username" id="username" value="请输入账号" />
                    <br/><label for="password">密码</label>
                    <input type="password" name="password" id="password" value="请输入密码" />
                    <input type="button" value="登陆" class="button" onclick="validate1();" />
                    <br/><a href="log2.asp ">没有账号？点击注册</a>
                </div>
                <%     set conn = Server.CreateObject("ADODB.Connection")
                conn.Open "DSNLOGA"
                        dim name
                        name = request.form("username")
                        dim passwords
                        passwords = request.form("password")
                        dim ans 
                        ans = 0
                

                set rs=Server.CreateObject("ADODB.recordset")
                rs.Open "Select s_name,s_password from password" ,  conn
                        do until rs.EOF        
                            if rs.Fields("s_name").value = name then
                                if rs.Fields("s_password").value = passwords then
                                    ans = 1
                                end if
                            end if
                        rs.MoveNext 
                        loop 
                        if name <> "" then
                        if ans = 1 then 
                           %>
                    <script type="text/javascript">
                        window.location.href = "onlinetestASP.asp";
                    </script>
                    <%
                        end if 
                        if ans <> 1 then
                          %>
                        <script type="text/javascript">
                            alert("错误的账号或密码\n请重新输入");
                        </script>
                        <%
                        end if
                        end if
                    rs.close 
                    
                    conn.close 
                    %>
                            <div id="footer">
                                本网站由王潞辉设计
                            </div>
        </div>

    </body>

    </html>