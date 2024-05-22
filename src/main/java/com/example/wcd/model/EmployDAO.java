package com.example.wcd.model;

import com.example.wcd.entity.Employee;

import java.sql.SQLException;
import java.util.List;

public interface EmployDAO {
    void insertEmployee(Employee employee) throws SQLException;
    List<Employee> selectAllUsers();
}
