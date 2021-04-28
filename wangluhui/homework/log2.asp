<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001" %>
    <html>

    <head>
        <meta charset=utf-8>
        <link rel=stylesheet type=text/css href=aboutme_style.css>
        <script type="text/javascript" src="onlinetest.js"></script>
        <title>注册</title>
    </head>

    <body>
        <div id="container">

            <form name="test" id="test" action="log2.asp" method="post" class="questions">
                <h1>注册</h1>
                <hr size=1px color=#000000>
                <div id="banner">
                    <marquee behavior="scroll" direction="left"> <label id="greet"></label>请先注册</marquee>
                </div>
                <div id="content" style="margin-right: 200;">
                    <label for="username">设置账号</label>
                    <input type="text" name="username" id="username" value="请输入账号" />

                    <br/><label for="password">设置密码</label>
                    <input type="password" name="password" id="password" value="请输入密码" />
                    <input type="button" style="margin-bottom:30px" value="注册" class="button" onclick="validate();" />
                    <br/><label for="password2">确认密码</label>
                    <input type="password" name="password2" id="password2" value="请输入密码" />

                </div>
            </form>
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
                        ans = 1
                end if
            rs.MoveNext
            loop
            if ans = 1 then
            %>
                <script type="text/javascript">
                    alert("账号已存在\n请重新输入");
                </script>
                <%
            else
                    sql="INSERT INTO password (s_name,s_password)"
                    sql=sql & " VALUES "
                    sql=sql & "('" & name & "',"                       
                    sql=sql & "'" & passwords & "')"             
                if name <> "" then
                    conn.Execute sql,recaffected

                %>
                    <script type="text/javascript">
                        alert("注册成功！前往登陆");
                        window.location.href = "log.asp";
                    </script>
                    <%        
                    end if        
            end if
            set rs=Server.CreateObject("ADODB.recordset")
            rs.Open "Select* from password" ,  conn
            %>
                        <table>
                            <tr>
                                <td>id</td>
                                <td>姓名</td>
                                <td>密码</td>

                            </tr>
                            <%  do until rs.EOF %>
                                <tr>
                                    <%for each x in rs.Fields%>
                                        <td>
                                            <%Response.Write(x.value)%>
                                        </td>
                                        <%next%>
                                </tr>
                                <% rs.MoveNext 
                    loop 
                    rs.close 
                    conn.close %>
                                    <div id="footer">
                                        本网站由王潞辉设计
                                    </div>
        </div>

    </body>

    </html>