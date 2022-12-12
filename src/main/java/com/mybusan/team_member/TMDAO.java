package com.mybusan.team_member;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;



@Repository
public class TMDAO {
	
	 @Autowired
	    private JdbcTemplate jt;
	    
	    private ResultSet rs=null;
	    private StringBuilder sql=null;
	    
	    public TMDAO() {
	        System.out.println("-----TM()객체 생성됨");
	    }//end
	
	
	    public List<TMDTO> TMlist(int team_mem_no) {
	        List<TMDTO> TMlist=null;
	        try {
	            sql=new StringBuilder();
	            sql.append(" SELECT team_mem_no,team_no,user_id,team_mem_state,team_mem_adate ");
	            sql.append(" FROM team_member ");
	            sql.append(" WHERE team_mem_no = " + team_mem_no);
	            
	            
	            RowMapper<TMDTO> rowMapper=new RowMapper<TMDTO>() {
	                @Override
	                public TMDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
	                	TMDTO dto=new TMDTO();
	                	 
	                           dto.setTeam_mem_no(rs.getInt("team_mem_no"));
	                           dto.setTeam_no(rs.getInt("team_no"));
	                           dto.setUser_id(rs.getString("user_id"));
	                           dto.setTeam_mem_state(rs.getString("team_mem_state"));
	                           dto.setTeam_mem_adate(rs.getString("team_mem_adate"));
	                           return dto;
	                    
	                   
	                }//mapRow() end
	            };//rowMapper end
	            
	            TMlist=jt.query(sql.toString(), rowMapper);

	        }catch(Exception e){
	            System.out.println("Team목록 실패:"+e);
	         }//end
	        
	         return TMlist;
	        
	    }//list() end
	    
	    public int totalRowCount() {
	        int cnt=0;
	        try {
	            sql=new StringBuilder();
	            sql.append(" SELECT COUNT(*) FROM team_member ");
	            cnt=jt.queryForObject(sql.toString(), Integer.class);
	        }catch(Exception e){
	            System.out.println("전체 행 갯수:" + e);
	        }//end
	        return cnt;
	    }//totalRowCount() end
	    
	    
}
