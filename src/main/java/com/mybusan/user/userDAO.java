package com.mybusan.user;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Map;

@Repository
public class userDAO {
    @Autowired
    SqlSession sqlSession;

    public String login(String l_user_id){
        return sqlSession.selectOne("user.login", l_user_id);
    }
    public void register(Map<String, Object> map){
        sqlSession.insert("user.register", map);
    }

    /*public String FindID(String s_user_name){
        return sqlSession.selectOne("user.findid");
    }*/
}