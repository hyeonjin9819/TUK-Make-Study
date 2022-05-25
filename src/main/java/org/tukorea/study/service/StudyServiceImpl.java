package org.tukorea.study.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.tukorea.study.domain.StudyVO;
import org.tukorea.study.persistence.StudyDAO;

@Service
public class StudyServiceImpl implements StudyService {
	
	@Autowired
	private StudyDAO studyDAO;

	public StudyVO readStudy(int snum) throws Exception {
		// TODO Auto-generated method stub
		return studyDAO.read(snum);
	}

	public List<StudyVO> readStudyList() throws Exception {
		return studyDAO.readList();
	}

	public void addStudy(StudyVO study) throws Exception {
		studyDAO.add(study);
	}
	
	public void deleteStudy(int snum) throws Exception {
		studyDAO.delete(snum);
	}

	public void updateStudy(StudyVO study) throws Exception {
		studyDAO.update(study);
	}

}
