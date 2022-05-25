package org.tukorea.study.service;

import java.util.List;

import org.tukorea.study.domain.StudyVO;

public interface StudyService {
	public StudyVO readStudy(int snum) throws Exception;
	public List<StudyVO> readStudyList() throws Exception;
	public void addStudy(StudyVO study) throws Exception;
	public void deleteStudy(int snum) throws Exception;
	public void updateStudy(StudyVO study) throws Exception;
}
