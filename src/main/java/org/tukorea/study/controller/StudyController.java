package org.tukorea.study.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.tukorea.study.domain.CommentVO;
import org.tukorea.study.domain.StudentVO;
import org.tukorea.study.domain.StudyVO;
import org.tukorea.study.service.CommentService;
import org.tukorea.study.service.StudyService;

@Controller
@RequestMapping(value="/")
public class StudyController {
	@Autowired
	private StudyService studyService;
	
	@Autowired
	private CommentService commentService;
	
	private static final Logger logger = LoggerFactory.getLogger(StudyController.class);
	
	@RequestMapping(value= {"/list"}, method = RequestMethod.GET)
	 public String listStudy(Model model) throws Exception {
    	List<StudyVO> studys = studyService.readStudyList();
    	
		logger.info(" /list URL called. then listStudy method executed.");
        model.addAttribute("studys", studys);
        return "/study/study_list";
    }
	
	@RequestMapping(value = {"/register"}, method = RequestMethod.GET)
	public String createStudyGet() throws Exception {
		logger.info(" /register URL GET method called. then forward study_register.jsp.");
		return "/study/study_register";
	}
	
	@RequestMapping(value = "/read", method = RequestMethod.GET)
    public String readStudy(@RequestParam("snum") int id, Model model) throws Exception {
		StudyVO study = studyService.readStudy(id);
		List<CommentVO> comments = commentService.readCommentList(id);
    	
		logger.info(" /read?id=? URL called. then readStudy method executed.");
        model.addAttribute("study", study);
        model.addAttribute("comments",comments);
        return "study/study_read";
    }
    
    @RequestMapping(value = {"/register"}, method = RequestMethod.POST)
	public String createMemberPost( @ModelAttribute("study") StudyVO vo,HttpServletRequest request) throws Exception {
		HttpSession httpSession = request.getSession(true);
		String id = (String) httpSession.getAttribute("id");
		
		vo.setSowner(id);
    	studyService.addStudy(vo);
		logger.info(vo.toString());
		logger.info(" /register URL POST method called. then createStudy method executed.");
		return "redirect:/list";
	}
    
    @RequestMapping(value = "/modify", method = RequestMethod.GET)
    public String modifyStudyGet(@RequestParam("snum") int snum, Model model) throws Exception {
    	StudyVO study = studyService.readStudy(snum);
    	
		logger.info(" /modify?id=? URL GET method called. then forward study_modify.jsp.");
        model.addAttribute("study", study);
        return "study/study_modify";
    }
    
    @RequestMapping(value = "/modify", method = RequestMethod.POST)
    public String modifyStudyPost(@ModelAttribute("study") StudyVO vo) throws Exception {
    	logger.info(vo.toString());
    	studyService.updateStudy(vo);
		logger.info(vo.toString());
		logger.info(" /modify?id=? URL POST method called. then studyMemberPost method executed.");
        return "redirect:/list";
    }
    
    
    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String deleteStudyGet(@RequestParam("snum") int snum) throws Exception {
    	studyService.deleteStudy(snum);
    	
		logger.info(" /delete?snum=? URL GET method called. then forward study_delete.jsp.");
        return "redirect:/list";
    }
    
}
