package org.tukorea.study.persistence;

import java.util.List;

import org.tukorea.study.domain.CommentVO;

public interface CommentDAO {
	public void add(CommentVO comment) throws Exception;
	public List<CommentVO> readList(int snum) throws Exception;
	public CommentVO read(int id) throws Exception;
	public void delete(int id) throws Exception;
	public void update(CommentVO comment) throws Exception;
}