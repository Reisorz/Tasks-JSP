<%@ include file="common/head.jsp"%>

<%@ include file="common/navbar.jsp"%>


<!-- Tasks table-->
    <div class="container">
        <div class="text-center" style="margin: 30px">
            <h3> Tasks system</h3>
        </div>
        <div class="container">
            <table class="table table-striped table-hover table-bordered align-middle">
                <thead class="table-dark text-center">
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Task</th>
                    <th scope="col">Responsible person</th>
                    <th scope="col">Status</th>
                    <th scope="col"></th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="task" items="${tasks}">
                    <tr>
                        <th scope="row">${task.taskId}</th>
                        <td>${task.taskName}</td>
                        <td>${task.responsiblePerson}</td>
                        <td>${task.status}</td>
                        <td class="text-center">
                            <c:set var="urlEdit">
                                <c:url value="${application.contextPath}/edit">
                                    <c:param name="taskId" value ="${task.taskId}"/>
                                </c:url>
                            </c:set>
                            <a href="${urlEdit}" class="btn btn-warning btn-sm me-3">Edit</a>
                            <c:set var="urlDelete">
                                <c:url value="${application.contextPath}/delete">
                                    <c:param name="taskId" value ="${task.taskId}"/>
                                </c:url>
                            </c:set>
                            <a href="${urlDelete}" class="btn btn-danger btn-sm">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

<%@ include file="common/footer.jsp"%>