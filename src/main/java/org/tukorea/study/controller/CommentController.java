package org.tukorea.study.controller;

import java.time.LocalDate;
import java.util.Date;
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
import org.tukorea.study.service.CommentService;

@Controller
@RequestMapping(value="/comment")
public class CommentController {
	@Autowired
	private CommentService commentService;
	
	private static final Logger logger = LoggerFactory.getLogger(CommentController.class);
	
	/*
	 * @RequestMapping(value= {"/list"}, method = RequestMethod.GET) public String
	 * listComment(Model model) throws Exception { List<CommentVO> comments =
	 * commentService.readCommentList(snum);
	 * 
	 * logger.info(" /list URL called. then listComment method executed.");
	 * model.addAttribute("comments", comments); return "/study/study_read"; }
	 */
	
	@RequestMapping(value = {"/register"}, method = RequestMethod.GET)
	public String createCommentGet() throws Exception {
		logger.info(" /register URL GET method called. then forward comment_register.jsp.");
		return "/study/study_read";
	}
	
    
    @RequestMapping(value = {"/register"}, method = RequestMethod.POST)
	public String createMemberPost( @ModelAttribute("comment") CommentVO vo,HttpServletRequest request) throws Exception {
		// id 설정
    	HttpSession httpSession = request.getSession(true);
		String id = (String) httpSession.getAttribute("id");
		vo.setSid(id);
		
		
		// 현재시간 설정
		vo.setReg_date(new Date());
		
		// register
    	commentService.addComment(vo);
		logger.info(vo.toString());
		logger.info(" /register URL POST method called. then createComment method executed.");
		return "redirect:/read?snum="+vo.getSnum();
	}
    
    @RequestMapping(value = "/modify", method = RequestMethod.GET)
    public String modifyCommentGet(@RequestParam("cnum") int cnum, Model model) throws Exception {
    	CommentVO comment = commentService.readComment(cnum);
    	
		logger.info(" /modify?id=? URL GET method called. then forward comment_modify.jsp.");
        model.addAttribute("comment", comment);
        return "study/study_read";
    }
    
    @RequestMapping(value = "/modify", method = RequestMethod.POST)
    public String modifyCommentPost(@ModelAttribute("comment") CommentVO vo) throws Exception {
    	logger.info(vo.toString());
    	commentService.updateComment(vo);
		logger.info(vo.toString());
		logger.info(" /modify?id=? URL POST method called. then commentMemberPost method executed.");
        return "redirect:/study/study_read";
    }
    
    
    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String deleteCommentGet(@RequestParam("cnum") int cnum, @RequestParam("snum") int snum) throws Exception {
    	commentService.deleteComment(cnum);
    	
		logger.info(" /delete?cnum=? URL GET method called. then forward comment_delete.jsp.");
        return "redirect:/read?snum="+snum;
    }
    
}
