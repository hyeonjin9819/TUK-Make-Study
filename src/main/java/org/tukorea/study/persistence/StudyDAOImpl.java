package org.tukorea.study.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.tukorea.study.domain.StudyVO;

@Repository
public class StudyDAOImpl implements StudyDAO{
	
	@Autowired
	private SqlSession sqlSession;
	private static final String namespace="org.tukorea.study.mapper.StudyMapper";
	

	public StudyVO read(int snum) throws Exception {
		StudyVO vo = sqlSession.selectOne(namespace + ".selectByNum", snum);
		return vo;
	}
	
	public void add(StudyVO vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);
	}

	public List<StudyVO> readList() throws Exception {
		// TODO Auto-generated method stub
		List<StudyVO> voList = sqlSession.selectList(namespace+".selectAll");
		return voList;
	}


	public void delete(int snum) throws Exception {
		sqlSession.delete(namespace + ".delete", snum);
	}


	public void update(StudyVO study) throws Exception {
		sqlSession.update(namespace + ".update", study);
	}
}
