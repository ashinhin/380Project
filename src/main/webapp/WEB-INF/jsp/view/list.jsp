<!DOCTYPE html>
<html>
    <head>
        <title>Online Course Website</title>
    </head>
    <body>
        <c:url var="logoutUrl" value="/logout"/>
        <form action="${logoutUrl}" method="post">
            <input type="submit" value="Log out" />
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <h2>Lecture</h2>   
        <a href="<c:url value="/user" />">Manage User Accounts</a><br /><br />
        <a href="<c:url value="/ticket/create" />">Create a Material</a><br /><br />
       
        <c:choose>
            <c:when test="${fn:length(ticketDatabase) == 0}">
                <i>There are no material in the website.</i>
            </c:when>
            <c:otherwise>
                <c:forEach items="${ticketDatabase}" var="ticket">
                    Lecture ${ticket.id}:
                    <a href="<c:url value="/ticket/view/${ticket.id}" />">
                        <c:out value="${ticket.subject}" /></a>
                    (Lecturer: <c:out value="${ticket.customerName}" />)
                        [<a href="<c:url value="/ticket/edit/${ticket.id}" />">Edit</a>]
                        [<a href="<c:url value="/ticket/delete/${ticket.id}" />">Delete</a>]
                    <br /><br />
                </c:forEach>
            </c:otherwise>
        </c:choose>
    </body>
</html>
