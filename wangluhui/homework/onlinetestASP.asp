<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001" %>
    <html>

    <head>
        <meta charset=utf-8>
        <link rel=stylesheet type=text/css href=aboutme_style.css>
        <script type="text/javascript" src="onlinetest.js"></script>
        <title>在线测试</title>


    </head>

    <body onload="shownowTime();greeting();startTest();usedTime();">
        <div id="container">

            <form name="test" action="onlinetestASP.asp" method="post" class="questions">
                <h1>在线测试</h1>
                <hr size=1px color=#000000>
                <div id="banner">
                    <marquee behavior="scroll" direction="left"> <label id="greet"></label>来做个小测试吧，题目种类繁多，你能做出几道呢？</marquee>
                </div>
                <div id="links" style="right:100px">
                    <label id="showtime">显示时间的位置</label>
                    <hr/>
                    <label id="showusedtime">已用时间：<br/>0时0分0秒</label>
                </div>
                <div id="links">
                    <ul>
                        <li> <a href="#你的信息">你的信息</a></li>
                        <li> <a href="#一、单选题">一、单选题</a>
                            <table>
                                <tr>
                                    <td><a href="#1">1</a></td>
                                    <td><a href="#2">2</a></td>
                                    <td><a href="#3">3</a></td>
                                </tr>
                            </table>
                        </li>
                        <li> <a href="#二、多选题">二、多选题</a>
                            <table>
                                <tr>
                                    <td><a href="#4">4</a></td>
                                    <td><a href="#5">5</a></td>
                                    <td><a href="#6">6</a></td>
                                </tr>
                            </table>
                        </li>
                        <li> <a href="#三、填空题">三、填空题</a>
                            <table>
                                <tr>
                                    <td><a href="#7">7</a></td>
                                    <td><a href="#8">8</a></td>
                                    <td><a href="#9">9</a></td>
                                    <td><a href="#10">10</a></td>
                                </tr>
                            </table>
                        </li>
                        <li> <a href="#建议">建议</a></li>
                        <li> <a href="#提交">提交</a></li>
                        <li><a href="#排行榜">排行榜</a></li>
                        <li><a href="../myhomepage.html">返回主页</a></li>
                    </ul>
                </div>
                <div id="content" style="margin-right: 200;">
                    <fieldset>
                        <legend>
                            <a name="你的信息">
                                <h2>你的信息</h2>
                            </a>
                        </legend>
                        <ol>
                            <li>
                                <h2 class="questions2"><label for="username">你的姓名</label></h2>
                                <input type="text" name="username" id="username" value="请先输入你的名字" onclick="value =''" />
                            </li>
                            <li>
                                <h2 class="questions2">你的性别</h2>
                                <select name="selsex" id="selsex">
                                                <option selected="未选择" value="未选择">未选择</option>
                                                <option value="男">男</option>
                                                <option value="女">女</option>
                                                <option value="其他？">其他？</option>
                                            </select>
                            </li>
                        </ol>
                    </fieldset>
                    <fieldset>
                        <legend>
                            <a name="一、单选题">
                                <h2>
                                    一、单选题
                                </h2>
                            </a>
                        </legend>
                        <ol>
                            <a name="1"> </a>
                            <li>
                                <h2 class="questions2">&lt数学&gt 1+1=（）。</h2>
                                <div class="anser">
                                    <input type="radio" name="problem1" id="problem1A" value="A" /><label for="problem1A">A. 1</label><br/>
                                    <input type="radio" name="problem1" id="problem1B" value="B" /><label for="problem1B">B. 2</label><br/>
                                    <input type="radio" name="problem1" id="problem1C" value="C" /><label for="problem1C">C. 3</label><br/>
                                    <input type="radio" name="problem1" id="problem1D" value="D" /><label for="problem1D">D. 我不知道</label><br/>
                                </div>
                            </li>
                            <a name="2"></a>
                            <li>
                                <h2 class="questions2">&ltc语言&gt 下面四组字符串中，都可以用C语言标识符的是（ ）。</h2>
                                <div class="anser">
                                    <input type="radio" name="problem2" id="problem2A" value="A" /><label for="problem2A">A. sign，3mf，a.f，A&B</label><br/>
                                    <input type="radio" name="problem2" id="problem2B" value="B" /><label for="problem2B">B. I\am，scanf，mx_，AMB</label><br/>
                                    <input type="radio" name="problem2" id="problem2C" value="C" /><label for="problem2C">C. if，ty_pe，x1#，5XY</label><br/>
                                    <input type="radio" name="problem2" id="problem2D" value="D" /><label for="problem2D">D. print，_maf，mx_2d，aMb6</label><br/>
                                </div>
                            </li>
                            <a name="3"></a>
                            <li>
                                <h2 class="questions2">&lt高数&gt 满足方程f'(x)=0是函数y=f(x)的（ ）。</h2>
                                <div class="anser">
                                    <input type="radio" name="problem3" id="problem3A" value="A" /><label for="problem3A">A. 极大值点</label> <br/>
                                    <input type="radio" name="problem3" id="problem3B" value="B" /><label for="problem3B">B. 极小值点</label> <br/>
                                    <input type="radio" name="problem3" id="problem3C" value="C" /><label for="problem3C">C. 驻点</label> <br/>
                                    <input type="radio" name="problem3" id="problem3D" value="D" /><label for="problem3D">D. 间断点</label> <br/>
                                </div>
                            </li>
                        </ol>
                    </fieldset>
                    <fieldset>
                        <legend>
                            <a name="二、多选题">
                                <h2> 二、多选题</h2>
                            </a>
                        </legend>
                        <ol start="4">
                            <a name="4"></a>
                            <li>
                                <h2 class="questions2">&lt形势与政策&gt 两学一做是指（）。</h2>
                                <div class="anser">
                                    <input type="checkbox" name="problem4" id="problem4A" value="A" /><label for="problem4A">A. 学党章党规</label><br/>
                                    <input type="checkbox" name="problem4" id="problem4B" value="B" /><label for="problem4B">B. 学系列讲话</label><br/>
                                    <input type="checkbox" name="problem4" id="problem4C" value="C" /><label for="problem4C">C. 做合格党员</label><br/>
                                    <input type="checkbox" name="problem4" id="problem4D" value="D" /><label for="problem4D">D. 我不知道</label><br/>
                                </div>
                            </li>
                            <a name="5"></a>
                            <li>
                                <h2 class="questions2">&lt科目四&gt 林某驾车以110公里/小时的速度在城市道路行驶，与一辆机动车追尾后弃车逃离被群众拦下。经鉴定，事发时林某血液中的酒精浓度为135.8毫克/百毫升。林某的主要违法行为是什么？</h2>
                                <div class="anser">
                                    <input type="checkbox" name="problem5" id="problem5A" value="A" /><label for="problem5A">A. 醉酒驾驶</label><br/>
                                    <input type="checkbox" name="problem5" id="problem5B" value="B" /><label for="problem5B">B. 超速驾驶</label><br/>
                                    <input type="checkbox" name="problem5" id="problem5C" value="C" /><label for="problem5C">C. 疲劳驾驶</label><br/>
                                    <input type="checkbox" name="problem5" id="problem5D" value="D" /><label for="problem5D">D. 肇事逃逸</label><br/>
                                </div>
                            </li>
                            <a name="6"></a>
                            <li>
                                <h2 class="questions2">&lt数据结构&gt 以下数据结构中哪些是线性结构？</h2>
                                <div class="anser">
                                    <input type="checkbox" name="problem6" id="problem6A" value="A" /><label for="problem6A">A. 队列</label><br/>
                                    <input type="checkbox" name="problem6" id="problem6B" value="B" /><label for="problem6B">B. 栈</label><br/>
                                    <input type="checkbox" name="problem6" id="problem6C" value="C" /><label for="problem6C">C. 线性表</label><br/>
                                    <input type="checkbox" name="problem6" id="problem6D" value="D" /><label for="problem6D">D. 二叉树</label><br/>
                                </div>
                            </li>
                        </ol>
                    </fieldset>
                    <fieldset>
                        <legend>
                            <a name="三、填空题">
                                <h2>三、填空题</h2>
                            </a>
                        </legend>
                        <ol start="7">
                            <a name="7"></a>
                            <li>
                                <h2 class="questions2">&lt送分题1&gt 1-1=？</h2>
                                <div class="anser">
                                    <input type="text" name="problem7" value="答案请只包含数字" onclick="value =''" /><br/>
                                </div>
                            </li>
                            <a name="8"></a>
                            <li>
                                <h2 class="questions2">&lt送分题2&gt 1*1=？</h2>
                                <div class="anser">
                                    <input type="text" name="problem8" value="答案请只包含数字" onclick="value =''" /><br/>
                                </div>
                            </li>
                            <a name="9"></a>
                            <li>
                                <h2 class="questions2">&lt送分题3&gt 1/1=？</h2>
                                <div class="anser">
                                    <input type="text" name="problem9" value="答案请只包含数字" onclick="value =''" /><br/>
                                </div>
                            </li>
                            <a name="10"></a>
                            <li>
                                <h2 class="questions2">&lt送分题4&gt 2+2=？</h2>
                                <div class="anser">
                                    <input type="text" name="problem10" value="答案请只包含数字" onclick="value =''" /><br/>
                                </div>
                            </li>
                        </ol>
                    </fieldset>
                    <fieldset>
                        <legend>
                            <a name="建议">
                                <h2>建议</h2>
                            </a>
                        </legend>
                        <h2 class="questions2">&lt此题可不填&gt 你对这个在线测试有什么建议吗</h2>

                        <textarea rows="20" cols="50" onclick="value =''">随便说点什么吧</textarea>
                    </fieldset>
                    <fieldset>
                        <legend>
                            <a name="提交">
                                <h2>提交</h2>
                            </a>
                        </legend>
                        <input type="button" value="提交" class="button" onclick="usedTime2();this.form.submit()" />
                        <input type="hidden" name="score1" id="score1" />
                        <input type="hidden" name="utime1" id="utime1" />
                        <input type="hidden" name="selsex1" id="selsex1" />
                    </fieldset>
            </form>
            <fieldset>
                <legend>
                    <a name="排行榜">
                        <h2>排行榜</h2>
                    </a>
                </legend>
                <%     set conn = Server.CreateObject("ADODB.Connection")
                conn.Open "DSNDBSTUDENT"

                 set rs=Server.CreateObject("ADODB.recordset")

                        dim rank
                        rank = 1
                        dim name 
                        name = request.form("username")
                        dim sexs
                        sexs = request.form("selsex1")
                        dim scores
                        scores = request.form("score1")
                        
                        dim utimes
                        utimes = request.form("utime1")
                        sql="INSERT INTO score (s_name,s_sex,s_score,s_time)"
                        sql=sql & " VALUES "
                        sql=sql & "('" & name & "',"
                        sql=sql & "'" & sexs & "',"     
                        sql=sql & "'" & scores & "',"                          
                        sql=sql & "'" & utimes & "')"             
                    if name <> "" then
                        conn.Execute sql,recaffected
                    end if
                set rs=Server.CreateObject("ADODB.recordset")
                rs.Open "Select  s_name,s_sex,s_score,s_time  from score order by len(s_score) desc, s_score desc, s_time, s_sex ,s_name" ,  conn
                %>
                    <table>
                        <tr>
                            <td>姓名</td>
                            <td>性别</td>
                            <td>分数</td>
                            <td>时间</td>
                            <td>排名</td>
                        </tr>
                        <%  do until rs.EOF %>
                            <tr>
                                <%for each x in rs.Fields%>
                                    <td>
                                        <%Response.Write(x.value)%>
                                    </td>
                                    <%next%>
                                        <td>
                                            <%response.write(rank)
                                             rank = rank + 1
                                             %>
                                        </td>
                            </tr>
                            <% rs.MoveNext 
                        loop 
                        rs.close 
                        conn.close %>
                    </table>
            </fieldset>

            </div>

            <div id="footer">
                本网站由王潞辉设计
            </div>
        </div>

    </body>

    </html>