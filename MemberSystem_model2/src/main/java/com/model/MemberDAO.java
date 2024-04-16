package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.spi.DirStateFactory.Result;

public class MemberDAO {

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	private void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2. 커넥션(Connection) 연결
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";

			conn = DriverManager.getConnection(db_url, db_id, db_pw);

			if (conn != null) {
				System.out.println("Connection 연결성공");
			} else {
				System.out.println("Connection 연결실패");
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void close() {// 4. 연결종료
		try {
			if (psmt != null) {
				psmt.close();
			}

			if (conn != null) {
				conn.close();
			}

			if (rs != null) {
				rs.close();
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public int join(MemberDTO dto) {
		// TODO Auto-generated method stub

		getConnection();

		int cnt = 0;

		try {

			// 3. SQL문 작성 및 실행
			String sql = "INSERT INTO MEMBER VALUES(?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getNick());
			psmt.setString(4, dto.getPhone());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}

	public MemberDTO login(MemberDTO dto) {
		// TODO Auto-generated method stub
		MemberDTO info = null; // 자: 처음에는 로그인 안 했으니 null

		getConnection();

		try {

			// 3. SQL문 작성 및 실행
			String sql = "SELECT * FROM MEMBER WHERE ID = ? AND PW = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());

			rs = psmt.executeQuery();

			if (rs.next()) { // 자:로그인 성공시에만 들어올 수 있음! 다음 내용이 있다면 조건문 실행!
				// 로그인이 성공했을 때
				String id = rs.getString("ID");
				String pw = rs.getString("PW");
				String nick = rs.getString("NICK");
				String phone = rs.getString("PHONE");

				info = new MemberDTO(id, pw, nick, phone);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();

		}

		return info;
	}

	public ArrayList<MemberDTO> memberList() {
		// TODO Auto-generated method stub
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		
		//자: 1. db연결
		getConnection();
		
		
		try {
			// sql문 작성
			String sql = "SELECT * FROM MEMBER WHERE NOT ID ='admin'";
			psmt = conn.prepareStatement(sql);
			
			// 표로 반환
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				String id = rs.getString("ID"); //1번 컬럼
				String pw = rs.getString("PW"); //1번 컬럼
				String nick = rs.getString("NICK"); //1번 컬럼
				String phone = rs.getString("PHONE"); //1번 컬럼
				
				MemberDTO dto = new MemberDTO(id, pw, nick, phone);
				list.add(dto);
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		
		
		
		return list;
	}

}
