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
                </tr>
                </thead>
                <tbody>
                <c:forEach var="task" items="${tasks}">
                    <tr>
                        <th scope="row">${task.taskId}</th>
                        <td>${task.taskName}</td>
                        <td>${task.responsiblePerson}</td>
                        <td>${task.status}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

<%@ include file="common/footer.jsp"%>