package org.tukorea.study.service;

import java.util.List;

import org.tukorea.study.domain.CommentVO;

public interface CommentService {
	public CommentVO readComment(int cnum) throws Exception;
	public List<CommentVO> readCommentList(int snum) throws Exception;
	public void addComment(CommentVO comment) throws Exception;
	public void deleteComment(int cnum) throws Exception;
	public void updateComment(CommentVO comment) throws Exception;
}
