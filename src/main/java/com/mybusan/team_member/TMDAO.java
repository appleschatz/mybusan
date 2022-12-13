//package com.mybusan.team_member;
//
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.jdbc.core.JdbcTemplate;
//import org.springframework.jdbc.core.RowMapper;
//import org.springframework.stereotype.Repository;
//
//
//
//
//@Repository
//public class TMDAO {
//	
//	 @Autowired
//	    private JdbcTemplate jt;
//	    
//	    private ResultSet rs=null;
//	    private StringBuilder sql=null;
//	    
//	    public TMDAO() {
//	        System.out.println("-----TM()객체 생성됨");
//	    }//end
//	
//	
//	    public int create(TMDTO dto) {
//	        int cnt = 0;
//	        try {
//	            sql = new StringBuilder();
//	            
//	           
//	            sql.append(" INSERT INTO team_member(team_mem_no,team_no,user_id,team_mem_state,team_mem_adate) ");
//	            sql.append(" VALUES( (select ifnull(max(team_no)+1,1) from team_member as TM), ?, ?, ?, ?, ?,?,now(),?, '진행중') ");
//	            
//	           
//	            //Maria DB
//	            //sql.append(" INSERT INTO media(mediano, title, rdate, poster, filename, filesize, mview, mediagroupno)");
//	            //sql.append(" VALUES((select ifnull(max(mediano),0)+1 from media as TB), ?, now(), ?, ?, ?, 'Y', ?)");            
//	            
//	            cnt=jt.update(sql.toString(),dto.getS_no(), dto.getUser_id(), dto.getTeam_name(), dto.getTeam_intro(), dto.getTeam_interest(), dto.getTeam_number(),dto.getTeam_edate());
//	        } catch (Exception e) {
//	            System.out.println("팀등록실패"+e);
//	        }//end
//	        
//	        return cnt;
//	        
//	    }//create() end
//	    
//	    
//	    public int totalRowCount() {
//	        int cnt=0;
//	        try {
//	            sql=new StringBuilder();
//	            sql.append(" SELECT COUNT(*) FROM team_member ");
//	            cnt=jt.queryForObject(sql.toString(), Integer.class);
//	        }catch(Exception e){
//	            System.out.println("전체 행 갯수:" + e);
//	        }//end
//	        return cnt;
//	    }//totalRowCount() end
//	    
//	    
//}
