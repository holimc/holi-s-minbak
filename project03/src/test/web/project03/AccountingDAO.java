package test.web.project03;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import test.web.calendar.ReservationVO;

public class AccountingDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private Connection getConnection() throws Exception{
		Context initCtx = new InitialContext();	
		Context envCtx =(Context)initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/xe");
		return ds.getConnection();
	}
	
	//월별 총 수입 가져오기 
	public List month_income(int year, int month){
		List list = new ArrayList();
		try {
			conn = getConnection();
			String sql="select price from reservation_table where year=? and month =? and chkpayment='check'";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, year);
			pstmt.setInt(2, month);
			rs = pstmt.executeQuery();

			while(rs.next()) {
				ReservationVO vo = new ReservationVO();
				list.add(rs.getInt("price"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(rs != null) try {rs.close();}catch(SQLException e) {}
			if(pstmt != null) try {pstmt.close();}catch(SQLException e) {}
			if(conn != null) try {conn.close();}catch(SQLException e) {}
		}
		return list;
	}
	
	public List room_month_income(int year, int month, String roomname){
		List list = new ArrayList();
		try {
			conn = getConnection();
			String sql="select price from reservation_table where year=? and month =? and roomname=? and chkpayment='check'";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, year);
			pstmt.setInt(2, month);
			pstmt.setString(3, roomname);
			rs = pstmt.executeQuery();

			while(rs.next()) {
				ReservationVO vo = new ReservationVO();
				list.add(rs.getInt("price"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(rs != null) try {rs.close();}catch(SQLException e) {}
			if(pstmt != null) try {pstmt.close();}catch(SQLException e) {}
			if(conn != null) try {conn.close();}catch(SQLException e) {}
		}
		return list;
	}
	
	
	
	
	
	//test중 
	public List Room_M_income(String today){
		List list = new ArrayList();
		try {
			conn = getConnection();
			String sql="select price from reservation_table where reg_date=? and chkpayment='check'";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, today);
			rs = pstmt.executeQuery();

			while(rs.next()) {
				ReservationVO vo = new ReservationVO();
				vo.setPrice(rs.getInt("price"));
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(rs != null) try {rs.close();}catch(SQLException e) {}
			if(pstmt != null) try {pstmt.close();}catch(SQLException e) {}
			if(conn != null) try {conn.close();}catch(SQLException e) {}
		}
		return list;
	}

		
}