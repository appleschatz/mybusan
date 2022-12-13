package com.mybusan.qna;

import java.sql.ResultSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class QnADAO {

	@Autowired
	private JdbcTemplate jt;
	
	private ResultSet rs=null;
	private StringBuilder sql=null;
	
	public QnADAO() {
		System.out.println("-------QnaDAO 객체생성됨");
	}//end
	
	public int create(QnADTO dto) {
		int cnt=0;
		try {
			sql = new StringBuilder();
			
			sql.append(" INSERT INTO Questions(q_no, user_id, q_address, q_contents, q_filename, q_filepath) ");
			sql.append(" VALUES ((select ifnull(max(q_no),0)+1 from Questions as TB), 'kim111', ?, ?, ?, ?) ");
			
			cnt=jt.update(sql.toString(), dto.getQ_address(), dto.getQ_contents(), dto.getQ_filename(), dto.getQ_filepath());
		} catch (Exception e) {
			System.out.println("QnA 등록실패"+e);
		}//end
		
		return cnt;
	}//create end
}//class end
