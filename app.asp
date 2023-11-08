<%
function checkIsLogin()
    if session("isLogin") = "" then
        response.redirect "login.asp"
    else 
    response.write(session("isLogin"))
    end if
    end function
%>