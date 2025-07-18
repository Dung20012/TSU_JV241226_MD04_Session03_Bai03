package com.data.session_03.controller;

import com.data.session_03.model.Project;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/projects")
public class ProjectController {
    // Dùng để giữ danh sách tạm thời (giả lập DB)
    private List<Project> projectList = new ArrayList<>();

    public ProjectController() {
        projectList.add(new Project(1, "Website Bán Hàng", "Hệ thống bán hàng online", "image1.jpg"));
        projectList.add(new Project(2, "Quản lý sinh viên", "Quản lý thông tin sinh viên", "image2.jpg"));
        projectList.add(new Project(3, "Hệ thống ngân hàng", "Quản lý tài khoản và giao dịch", "image3.jpg"));
    }

    @GetMapping("/list")
    public String showProjects(Model model) {
        model.addAttribute("projects", projectList);
        return "list";
    }

    @GetMapping("/add")
    public String showAddForm() {
        return "add";
    }

    @PostMapping("/add")
    public String addProject(@RequestParam("id") int id,
                             @RequestParam("name") String name,
                             @RequestParam("description") String description,
                             @RequestParam("image") String image) {

        Project newProject = new Project(id, name, description, image); // dùng đúng id người nhập
        projectList.add(newProject);

        return "redirect:/projects/list";
    }

    @GetMapping("/delete/{id}")
    public String deleteProject(@PathVariable int id) {
        // Tìm và xóa project theo id
        projectList.removeIf(p -> p.getId() == id);
        return "redirect:/projects/list";
    }
}
