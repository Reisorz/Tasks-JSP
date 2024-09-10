<%@ include file="common/head.jsp"%>

<%@ include file="common/navbar.jsp"%>

<div class="container">

  <div class="text-center" style="margin: 30px">
    <h3> Add task</h3>
  </div>

  <form action="${urlAdd}" modelAttribute="taskForm" method="post">
    <div class="mb-3">
      <label for="taskName" class="form-label">Task</label>
      <input type="text" class="form-control" id="taskName" required="true" name="taskName">
    </div>
    <div class="mb-3">
      <label for="responsiblePerson" class="form-label">Responsible person</label>
      <input type="text" class="form-control" id="responsiblePerson" name="responsiblePerson">
    </div>
    <div class="mb-3">
      <label for="status" class="form-label">Status</label>
      <input type="text" class="form-control" id="status" name="status">
    </div>

    <div class="text-center">
      <button type="submit" class="btn btn-warning btn-sm me-3">Add task</button>
      <a href="${urlHome}" class="btn btn-danger btn-sm">Return</a>
    </div>
  </form>
</div>

<%@ include file="common/footer.jsp"%>