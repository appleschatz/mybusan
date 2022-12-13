package com.mybusan.schedule;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


@Repository
public class ScheduleDAO {

    @Autowired
    private JdbcTemplate jt;
    
    private ResultSet rs=null;
    private StringBuilder sql=null;
    
    public ScheduleDAO() {
        System.out.println("-----scheduleDAO()객체 생성됨");
    }//end

    
    
//		    public List<TeamDTO> list() {
//		        List<TeamDTO> list=null;
//		        try {
//		            sql=new StringBuilder();
//		            sql.append(" SELECT team_no, s_no, user_id, team_name, team_intro, team_interest, team_number,team_sdate,team_edate,team_state ");
//		            sql.append(" FROM team ");
//		            
//		            
//		            RowMapper<TeamDTO> rowMapper=new RowMapper<TeamDTO>() {
//		                @Override
//		                public TeamDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
//		                	TeamDTO dto=new TeamDTO();
//		                	 
//		                           dto.setTeam_no(rs.getInt("team_no"));
//		                           dto.setS_no(rs.getInt("s_no"));
//		                           dto.setUser_id(rs.getString("user_id"));
//		                           dto.setTeam_name(rs.getString("team_name"));
//		                           dto.setTeam_intro(rs.getString("team_intro"));
//		                           dto.setTeam_interest(rs.getString("team_interest"));
//		                           dto.setTeam_number(rs.getInt("team_number"));
//		                           dto.setTeam_sdate(rs.getString("team_sdate"));
//		                           dto.setTeam_edate(rs.getString("team_edate"));
//		                           dto.setTeam_state(rs.getString("team_state"));
//		                           return dto;
//		                    
//		                   
//		                }//mapRow() end
//		            };//rowMapper end
//		            
//		            list=jt.query(sql.toString(), rowMapper);
//		
//		        }catch(Exception e){
//		            System.out.println("Team목록 실패:"+e);
//		         }//end
//		        
//		         return list;
//		        
//		    }//list() end
//		    
//		    public int totalRowCount() {
//		        int cnt=0;
//		        try {
//		            sql=new StringBuilder();
//		            sql.append(" SELECT COUNT(*) FROM team ");
//		            cnt=jt.queryForObject(sql.toString(), Integer.class);
//		        }catch(Exception e){
//		            System.out.println("전체 행 갯수:" + e);
//		        }//end
//		        return cnt;
//		    }//totalRowCount() end
//		    
//		    
		    public int create(ScheduleDTO dto) {
		        int cnt = 0;
		        try {
		            sql = new StringBuilder();
		            
		            
		            sql.append(" INSERT INTO (team_no,s_no,user_id,team_name, team_intro, team_interest, team_number, team_sdate,team_edate,team_state) ");
		            sql.append(" VALUES( (select ifnull(max(team_no)+1,1) from team as TM), ?, ?, ?, ?, ?,?,now(),?, '진행중') ");
		            
		           
		            //Maria DB
		            //sql.append(" INSERT INTO media(mediano, title, rdate, poster, filename, filesize, mview, mediagroupno)");
		            //sql.append(" VALUES((select ifnull(max(mediano),0)+1 from media as TB), ?, now(), ?, ?, ?, 'Y', ?)");            
		            
		            cnt=jt.update(sql.toString(),dto.getS_no(), dto.getUser_id(), dto.getTeam_name(), dto.getTeam_intro(), dto.getTeam_interest(), dto.getTeam_number(),dto.getTeam_edate());
		        } catch (Exception e) {
		            System.out.println("팀등록실패"+e);
		        }//end
		        
		        return cnt;
		        
		    }//create() end
//		    
//		    
//		    // 팀 정원옆에 현재 모집인원도 있으면 좋을듯!! 현재인원 칼럼을 새로 만들어야 되나?
//		    public TeamDTO read(int team_no) {
//		        TeamDTO dto = null;
//		        try {
//		          sql = new StringBuilder();
//		          sql.append(" SELECT team_no, team_name, team_intro, team_interest, team_number, team_sdate, team_edate, team_state ");
//		          sql.append(" FROM team ");
//		          sql.append(" WHERE team_no = " + team_no);
//		          
//		          RowMapper<TeamDTO> rowMapper=new RowMapper<TeamDTO>() {
//		              @Override
//		              public TeamDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
//		                  TeamDTO dto=new TeamDTO();
//		                  dto.setTeam_no(rs.getInt("team_no"));
//		                  dto.setTeam_name(rs.getString("team_name"));
//		                  dto.setTeam_intro(rs.getString("team_intro"));
//		                  dto.setTeam_interest(rs.getString("team_interest"));
//		                  dto.setTeam_number(rs.getInt("team_number"));
//		                  dto.setTeam_sdate(rs.getString("team_sdate"));
//		                  dto.setTeam_edate(rs.getString("team_edate"));
//		                  dto.setTeam_state(rs.getString("team_state"));
//		                  return dto;
//		              }//mapRow() end
//		          };//rowMapper end
//		
//		          dto = jt.queryForObject(sql.toString(), rowMapper);
//		          
//		        } catch (Exception e) {
//		            System.out.println("상세보기실패"+e);
//		        }//end
//		        return dto;
//		    }//read() end
//		    
//		    public int delete(int team_no) {
//		        int cnt = 0;
//		        try {
//		          sql = new StringBuilder();
//		          sql.append(" DELETE FROM team" );
//		          sql.append(" WHERE team_no=? ");  
//		          cnt = jt.update(sql.toString(), team_no);
//		        } catch (Exception e) {
//		            System.out.println("삭제실패"+e);
//		        }//end
//		        return cnt;
//		    }//delete() end
//		    
//		    public int update(TeamDTO dto) {
//		        int cnt = 0;
//		        try {
//		          sql = new StringBuilder();
//		          sql.append(" UPDATE team ");
//		          sql.append(" SET team_name=?, team_intro=?, team_interest=?, team_number=?, team_edate=? ");
//		          sql.append(" WHERE team_no=? "); 
//		          cnt = jt.update(sql.toString(), dto.getTeam_name(), dto.getTeam_intro(), dto.getTeam_interest(), dto.getTeam_number(), dto.getTeam_edate());
//		        } catch (Exception e) {
//		           System.out.println("수정실패"+e);
//		        }//end
//		        return cnt;
//		    }//update end
//		    
//		    public int updatestate(TeamDTO dto) {
//		        int cnt = 0;
//		        try {
//		          sql = new StringBuilder();
//		          sql.append(" UPDATE team ");
//		          sql.append(" SET team_state='완료' ");
//		          sql.append(" WHERE team_no=? "); 
//		          cnt = jt.update(sql.toString());
//		        } catch (Exception e) {
//		           System.out.println("수정실패"+e);
//		        }//end
//		        return cnt;
//		    }//update end
}
  