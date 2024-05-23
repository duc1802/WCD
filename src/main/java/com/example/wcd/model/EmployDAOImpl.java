package com.example.wcd.model;

import com.example.wcd.entity.Employee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployDAOImpl implements EmployDAO{
        private static final String INSERT_EMPLOYEE_SQL = "INSERT INTO Employee ( name, birthday, address, position, department) VALUES ( ?, ?, ?, ?, ?)";
        private static final String SELECT_ALL_EMPLOYEE = "SELECT * FROM Employee";

    @Override
    public void insertEmployee(Employee employee) throws SQLException {
        try (Connection connection = MyConnection.getMySQLConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_EMPLOYEE_SQL)) {
            preparedStatement.setString(1, employee.getName());
            preparedStatement.setString(2, employee.getBirthday());
            preparedStatement.setString(3, employee.getAddress());
            preparedStatement.setString(4, employee.getPosition());
            preparedStatement.setString(5, employee.getDepartment());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }



    @Override
    public List<Employee> selectAllEmployees() {
//        List<Employee> employees = new ArrayList<>();
//        try (Connection connection = MyConnection.getMySQLConnection();
//             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_EMPLOYEE)) {
//            ResultSet rs = preparedStatement.executeQuery();
//            while (rs.next()) {
//                int id = rs.getInt("id");
//                String name = rs.getString("name");
//                String birthday = rs.getString("birthday");
//                String address = rs.getString("address");
//                String position = rs.getString("position");
//                String department = rs.getString("department");
//                employees.add(new Employee(name, birthday, address,position, department ));
//            }
//        } catch (SQLException e) {
//            printSQLException(e);
//        }
        List<Employee> employees = new ArrayList<>();
        try (Connection connection = MyConnection.getMySQLConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_EMPLOYEE)) {
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String birthday = rs.getString("birthday");
                String address = rs.getString("address");
                String position = rs.getString("position");
                String department = rs.getString("department");
                employees.add(new Employee(name, birthday, address, position, department));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return employees;
    }
    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
