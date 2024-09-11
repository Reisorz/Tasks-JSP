package gm.Tasks.Controller;

import gm.Tasks.Model.Task;
import gm.Tasks.Service.TaskService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class IndexController {
    private static final Logger logger = LoggerFactory.getLogger(IndexController.class);

    @Autowired
    TaskService taskService;

    @RequestMapping(value="/", method = RequestMethod.GET)
    public String initiate(ModelMap model) {
        List<Task> tasks = taskService.listTasks();
        tasks.forEach((task -> logger.info(task.toString())));
        //To share the model with the view
        model.put("tasks", tasks);
        return "index"; //index.jsp
    }

    @RequestMapping(value="/add", method = RequestMethod.GET)
    public String showAdd() {
        return "add"; // add.jsp
    }

    @RequestMapping(value="/add", method = RequestMethod.POST)
    public String addTask(@ModelAttribute("taskForm") Task task) {
        logger.info("Added task: " + task);
        taskService.saveTask(task);
        return "redirect:/"; //redirects to path "/"
    }

    @RequestMapping(value="/edit", method=RequestMethod.GET)
    public String showEdit(@RequestParam int taskId, ModelMap model) {
        Task task = taskService.searchTaskById(taskId);
        logger.info("Task to edit: " + task);
        model.put("task", task);
        return "edit";
    }

    @RequestMapping(value="/edit", method = RequestMethod.POST)
    public String editTask(@ModelAttribute("taskForm") Task task) {
        logger.info("Task to edit: " + task);
        taskService.saveTask(task);
        return "redirect:/";
    }
}
