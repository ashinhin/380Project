<!DOCTYPE html>
<html>
    <body>
        <c:url var="logoutUrl" value="/logout"/>
        <form action="${logoutUrl}" method="post">
            <input type="submit" value="Log out" />
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
        <br /><br />
        <a href="<c:url value="/ticket" />">Return to list lectures</a><br /><br />
        
        <a href="<c:url value="/user/create" />">Create a Stduent account</a><br /><br />
        <h2>Users</h2>
        <c:choose>
            <c:when test="${fn:length(ticketUsers) == 0}">
                <i>There are no student in the website.</i>
            </c:when>
            <c:otherwise>
                <table>
                    <tr>
                        <th>Username</th><th>Password</th><th>Roles</th><th>Action</th>
                    </tr>
                    <c:forEach items="${ticketUsers}" var="user">
                        <tr>
                            <td>${user.username}</td><td>${user.password}</td>
                            <td>
                                <c:forEach items="${user.roles}" var="role" varStatus="status">
                                    <c:if test="${!status.first}"> </c:if>
                                    <c:choose>
                                        <c:when test="${role.role.equals('ROLE_ADMIN')}">
                                            Lecturer
                                        </c:when>
                                        <c:otherwise>
                                            Student
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                            </td>
                            <td>
                                [<a href="<c:url value="/user/delete/${user.username}" />">Delete</a>]
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </c:otherwise>
        </c:choose>
    </body>
</html>