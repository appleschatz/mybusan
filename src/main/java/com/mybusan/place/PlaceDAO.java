package com.mybusan.place;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


@Repository
public class PlaceDAO {

	@Autowired
	private JdbcTemplate jt;
	
	private ResultSet rs=null;
	private StringBuilder sql=null;
	
	public PlaceDAO() {
		System.out.println("--------PlaceDAO 객체생성됨");
	}//end
	
	 public List<PlaceDTO> list() {
	        List<PlaceDTO> list=null;
	        try {
	            sql=new StringBuilder();
	            sql.append(" SELECT p_code, p_name, p_category, p_sido, p_sigungu, p_umd, p_ri, p_address, p_lng, p_lat ");
	            sql.append(" FROM place where p_code <= 50 ");
	            
	            
	            RowMapper<PlaceDTO> rowMapper=new RowMapper<PlaceDTO>() {
	                @Override
	                public PlaceDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
	                	PlaceDTO dto=new PlaceDTO();
	                	 
	                           dto.setP_code(rs.getInt("p_code"));
	                           dto.setP_name(rs.getString("p_name"));
	                           dto.setP_category(rs.getString("p_category"));
	                           dto.setP_sido(rs.getString("p_sido"));
	                           dto.setP_sigungu(rs.getString("p_sigungu"));
	                           dto.setP_umd(rs.getString("p_umd"));
	                           dto.setP_ri(rs.getString("p_ri"));
	                           dto.setP_address(rs.getString("p_address"));
	                           dto.setP_lng(rs.getFloat("p_lng"));
	                           dto.setP_lat(rs.getFloat("p_lat"));
	                           return dto;
	                    
	                   
	                }//mapRow() end
	            };//rowMapper end
	            
	            list=jt.query(sql.toString(), rowMapper);
	        }catch(Exception e){
	            System.out.println("장소 불러오기 실패:"+e);
	         }//end
	        
	         return list;
	        
	    }//list() end

	 
	 public List<PlaceDTO> list2() {
	        List<PlaceDTO> list2=null;
	        try {
	            sql=new StringBuilder();
	            sql.append(" SELECT p_sigungu, p_lat, p_lng ");
	            sql.append(" FROM place where p_sido='부산광역시' group by p_sigungu order by p_sigungu ");
	            
	            
	            RowMapper<PlaceDTO> rowMapper=new RowMapper<PlaceDTO>() {
	                @Override
	                public PlaceDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
	                		PlaceDTO dto=new PlaceDTO();	                	                           
	                           dto.setP_sigungu(rs.getString("p_sigungu"));
	                           dto.setP_lat(rs.getFloat("p_lat"));
	                           dto.setP_lng(rs.getFloat("p_lng"));
	                           return dto;               
	                   
	                }//mapRow() end
	            };//rowMapper end
	            
	            list2=jt.query(sql.toString(), rowMapper);

	        }catch(Exception e){
	            System.out.println("장소 불러오기 실패:"+e);
	         }//end
	        
	         return list2;
	        
	    }//list2() end
	 
	 
	 
	 
	 public List<PlaceDTO> list3(String p_sigungu) {
	        List<PlaceDTO> list3=null;
	        try {
	            sql=new StringBuilder();
	            sql.append(" SELECT distinct(p_umd)");
	            sql.append(" FROM place where p_sigungu="+"'"+p_sigungu+"'");
//	            order by p_umd
	          
	           
	           
	            
	            RowMapper<PlaceDTO> rowMapper=new RowMapper<PlaceDTO>() {
	                @Override
	                public PlaceDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
	                		PlaceDTO dto=new PlaceDTO();	    
	                           dto.setP_umd(rs.getString("p_umd"));
	                      
	                           return dto;               
	                   
	                }//mapRow() end
	            };//rowMapper end
	            
	            list3=jt.query(sql.toString(), rowMapper);

	        }catch(Exception e){
	            System.out.println("장소 불러오기 실패:"+e);
	         }//end
	        
	         return list3;
	        
	    }//list3() end	 
	 
	 
	}

