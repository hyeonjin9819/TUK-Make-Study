package org.tukorea.study.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.tukorea.study.domain.CommentVO;
import org.tukorea.study.persistence.CommentDAO;

@Service
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	private CommentDAO commentDAO;

	public CommentVO readComment(int cnum) throws Exception {
		// TODO Auto-generated method stub
		return commentDAO.read(cnum);
	}

	public List<CommentVO> readCommentList(int snum) throws Exception {
		return commentDAO.readList(snum);
	}

	public void addComment(CommentVO comment) throws Exception {
		commentDAO.add(comment);
	}
	
	public void deleteComment(int cnum) throws Exception {
		commentDAO.delete(cnum);
	}

	public void updateComment(CommentVO comment) throws Exception {
		commentDAO.update(comment);
	}

}
