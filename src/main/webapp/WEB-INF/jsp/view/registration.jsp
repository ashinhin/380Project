<%-- 
    Document   : registration
    Created on : 2019/4/11, 下午 05:27:42
    Author     : allanlam
--%>

<html>
    <head>
        <title>Online Course Website</title>
    </head>
    <body>
        <a href="<c:url value="/login" />">Sign In</a><br/>
        <h2>Create a Account(Sign Up):</h2>
        <form:form method="POST" enctype="multipart/form-data"
                   modelAttribute="ticketUser">
            <form:label path="username">Username:</form:label><br/>
            <form:input type="text" path="username" /><br/><br/>
            <form:label path="password">Password:</form:label><br/>
            <form:input type="text" path="password" /><br/><br/>
            <form:label path="roles">Roles</form:label><br/>
            <form:radiobutton  path="roles" value="ROLE_USER"  checked="checked" label="Student"/>
            <br /><br />
            <input type="submit" value="Create User"/>
        </form:form>
    </body>
</html>