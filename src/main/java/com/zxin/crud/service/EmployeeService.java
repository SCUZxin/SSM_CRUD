package com.zxin.crud.service;

import com.zxin.crud.bean.Employee;
import com.zxin.crud.bean.EmployeeExample;
import com.zxin.crud.dao.EmployeeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class EmployeeService {
    @Autowired
    EmployeeMapper employeeMapper;

    /**
     * 查询所有员工
     * @return
     */
    public List<Employee> getAll() {
        return employeeMapper.selectByExampleWithDept(null);
    }

    /**
     * 员工保存
     * @param employee
     */
    public void saveEmp(Employee employee) {
        employeeMapper.insertSelective(employee);
    }

    /**
     * 检验用户名是否可用
     * @param empName
     * @return  true:代表当前姓名可用    false：不可用
     */
    public boolean checkUser(String empName) {
        EmployeeExample example = new EmployeeExample();
        EmployeeExample.Criteria criteria = example.createCriteria();
        criteria.andEmpNameEqualTo(empName);
        long count = employeeMapper.countByExample(example);
        return count == 0;
    }

    public Employee getEmp(Integer id) {
        Employee employee = employeeMapper.selectByPrimaryKey(id);
        return employee;
    }

    public void updateEmp(Employee employee) {
        employeeMapper.updateByPrimaryKeySelective(employee);
    }

    /**
     * 员工删除
     * @param empId
     */
    public void deleteEmp(Integer empId) {
        employeeMapper.deleteByPrimaryKey(empId);
    }

    public void deleteBatch(ArrayList<Integer> del_ids) {
        EmployeeExample example = new EmployeeExample();
        EmployeeExample.Criteria criteria = example.createCriteria();
        //delete from XXX where emp_id in(1,2,3);
        criteria.andEmpIdIn(del_ids);
        employeeMapper.deleteByExample(example);
    }
}
