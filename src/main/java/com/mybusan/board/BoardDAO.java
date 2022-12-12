package com.mybusan.board;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
		
	public BoardDAO() {
		System.out.println("-----boardDAO() 객체 생성됨");
	}//end
	
	//스프링 빈으로 생성된객체를 가져와서 연결하기
	@Autowired
	
	SqlSession sqlSession;
	
	public List<Map<String, Object>> list(int pageNum){
		return sqlSession.selectList("board.list",pageNum);
	}
	
	public void insert(Map<String, Object> map) {
		sqlSession.insert("board.insert",map);
	}//insert() end
	
	
	public List<Map<String, Object>> search(String ce_name){
		return sqlSession.selectList("board.search","%" + ce_name + "%");
	}
	
	public Map<String, Object> detail(String ce_sequence ){
		return sqlSession.selectOne("board.detail", ce_sequence);
	}//detail() end
	
	public void update(Map<String, Object> map) {
		sqlSession.update("board.update", map);
	}//update() end
	
	public String filename(int ce_sequence) {
		return sqlSession.selectOne("board.filename" , ce_sequence);
	}//filename () end
	
	public void delete(int ce_sequence) {
		sqlSession.delete("board.delete", ce_sequence);
	}//delete() end



}//class end