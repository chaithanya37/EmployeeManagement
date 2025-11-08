package com.servlet.emp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.servlet.emp.dto.Employee;
import com.servlet.util.DBConnection;


public class EmployeeDAOImp1 implements EmployeeDAO {


	@Override
	public boolean registerEmployee(Employee emp) {

		String iqry = "INSERT INTO EMPDATA VALUES (?,?,?,?,?,?,?)";
		try {
			Connection con = DBConnection.getConnector();
			PreparedStatement pstmt= con.prepareStatement(iqry);
			pstmt.setInt(1, emp.getEmpId());
			pstmt.setString(2, emp.getEname());
			pstmt.setString(3, emp.getDept());
			pstmt.setDouble(4, emp.getSal());
			pstmt.setLong(5, emp.getPhone());
			pstmt.setString(6, emp.getEmail());
			pstmt.setString(7, emp.getPassword());

			int count = pstmt.executeUpdate();
			if (count > 0) {
				return true;
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return false;
	}

	@Override
	public Employee loginEmployee(String email, String password) {

		String lquery = "SELECT * FROM EMPDATA WHERE email=? AND password=?";
		Employee emp = null;
		try {
			 Connection con = DBConnection.getConnector();
			PreparedStatement pstmt = con.prepareStatement(lquery);
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				emp = new Employee();
				emp.setEmpId(rs.getInt("empid"));
				emp.setEname(rs.getString("ename"));
				emp.setEmail(rs.getString("email"));
				emp.setPassword(rs.getString("password"));
				emp.setDept(rs.getString("dept"));
				emp.setPhone(rs.getLong("phone"));
				emp.setSal(rs.getDouble("sal"));

				return emp;
			}


		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}
	
	@Override
	public List<Employee> getEmployees() {
		
		String squery="SELECT * FROM EMPDATA";
		PreparedStatement pstmt;
		List<Employee> empList = new ArrayList<Employee>();
		Employee emp=null;
		try {
			 Connection con = DBConnection.getConnector();
			pstmt = con.prepareStatement(squery);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
				emp=new Employee();
				
				emp.setEmpId(rs.getInt("empid"));
				emp.setEname(rs.getString("ename"));
				emp.setEmail(rs.getString("email"));
				emp.setPassword(rs.getString("password"));
				emp.setDept(rs.getString("dept"));
				emp.setPhone(rs.getLong("phone"));
				emp.setSal(rs.getDouble("sal"));
				
				empList.add(emp);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return empList;
	}

	@Override
	public boolean deleteEmployee(int eid) {
		String dquery="DELETE FROM EMPDATA WHERE EmpID=?";
		Connection con=DBConnection.getConnector();
		try {
			PreparedStatement pstmt =con.prepareStatement(dquery);
			pstmt.setInt(1,eid);
			int count=pstmt.executeUpdate();
			if(count>0)
			{
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public Employee findEmployeeById(int eid) {
		String fquery="Select * from empdata where empid=?";
		Connection con=DBConnection.getConnector();
		Employee emp=null;	
		try {
			PreparedStatement pstmt=con.prepareStatement(fquery);
			pstmt.setInt(1, eid);
			ResultSet rs=pstmt.executeQuery();
			if(rs.next())
			{
				emp=new Employee();
				emp.setEmpId(rs.getInt("empid"));
				emp.setEname(rs.getString("ename"));
				emp.setEmail(rs.getString("email"));
				emp.setPassword(rs.getString("password"));
				emp.setDept(rs.getString("dept"));
				emp.setPhone(rs.getLong("phone"));
				emp.setSal(rs.getDouble("sal"));

				return emp;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	
	@Override
	public boolean EditEmployee(Employee emp) {
	    String uquery = "UPDATE EMPDATA SET ename=?, dept=?, sal=?, phone=?, email=?, password=? WHERE empid=?";

	    try {
	        Connection con = DBConnection.getConnector();
	        PreparedStatement pstmt = con.prepareStatement(uquery);
	        pstmt.setString(1, emp.getEname());
	        pstmt.setString(2, emp.getDept());
	        pstmt.setDouble(3, emp.getSal());
	        pstmt.setLong(4, emp.getPhone());
	        pstmt.setString(5, emp.getEmail());
	        pstmt.setString(6, emp.getPassword());
	        pstmt.setInt(7, emp.getEmpId());

	        int count = pstmt.executeUpdate();
	        if (count > 0) {
	            return true;
	        }


	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return false;
	}

}
