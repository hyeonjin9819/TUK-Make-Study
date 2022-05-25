package org.tukorea.study.persistence;

import java.util.List;

import org.tukorea.study.domain.StudyVO;

public interface StudyDAO {
	public void add(StudyVO study) throws Exception;
	public List<StudyVO> readList() throws Exception;
	public StudyVO read(int snum) throws Exception;
	public void delete(int snum) throws Exception;
	public void update(StudyVO study) throws Exception;
}
