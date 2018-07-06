package com.zxin.crud.controller;

import com.zxin.crud.bean.Department;
import com.zxin.crud.bean.Msg;
import com.zxin.crud.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
@Controller
public class DepartmentController {

    @Autowired
    private DepartmentService departmentService;

    /**
     * 返回所有的部门信息
     * @return
     */
    @RequestMapping("/depts")
    @ResponseBody
    public Msg getDepts(){
        //查出所有的部门信息
        List<Department> list =  departmentService.getDepts();
        return Msg.success().add("depts", list);
    }
}
