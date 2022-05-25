package org.tukorea.study.persistence;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.tukorea.study.domain.CommentVO;

@Repository
public class CommentDAOImpl implements CommentDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "org.tukorea.study.mapper.CommentMapper";

	public CommentVO read(int id) throws Exception {
	
		CommentVO vo = sqlSession.selectOne(namespace+".selectByid", id);
		return vo;   
	}
 
	public List<CommentVO> readList(int snum) throws Exception {
		List<CommentVO> commentlist = new ArrayList<CommentVO>();
		commentlist = sqlSession.selectList(namespace + ".selectAll", snum);
		return commentlist;
	}
	
	public void add(CommentVO vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);
	}

	public void delete(int id) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace + ".delete", id);
	}

	public void update(CommentVO student) throws Exception {
		// TODO Auto-generated method stub
	    sqlSession.update(namespace + ".update", student);
	}

	

}
