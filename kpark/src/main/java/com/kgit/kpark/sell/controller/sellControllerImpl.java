package com.kgit.kpark.sell.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller("sellController")
@RequestMapping(value="/sell/*")
public class sellControllerImpl implements sellController {
//	@RequestMapping(value = {"/sell/*"}, method = RequestMethod.GET)
//	private ModelAndView adminSelect(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		String viewName = (String)request.getAttribute("viewName");
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName(viewName);
//		return mav;
//	}
	private static String ARTICLE_IMAGE_REPO = ""; 
	// 경로 각자 본인 것으로 수정

	@Override
	@RequestMapping(value = "/sell/sellForm.do", method = RequestMethod.GET)
	public ModelAndView sellForm(@RequestParam(value = "result", required = false) String result,
			@RequestParam(value = "action", required = false) String action,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
			String viewName = (String)request.getAttribute("viewName"); // 인터셉터를 사용해 요청명에서 뷰 이름 얻음
			HttpSession session = request.getSession();
			session.setAttribute("action", action);
			ModelAndView mav = new ModelAndView();
			mav.addObject("result", result);
			mav.setViewName(viewName);
			return mav;
	}
	
	// 다중 이미지 업로드하기
			private List<String> upload(MultipartHttpServletRequest multipartRequest) throws Exception {
				List<String> fileList = new ArrayList<String>();
				Iterator<String> fileNames = multipartRequest.getFileNames();
				
				while(fileNames.hasNext()) {
					String fileName = fileNames.next();
					MultipartFile mFile = multipartRequest.getFile(fileName);
					String originalFileName = mFile.getOriginalFilename();
					fileList.add(originalFileName);
					File file = new File(ARTICLE_IMAGE_REPO + "/" + fileName);
					if(mFile.getSize() != 0) {
						if(!file.exists()) {
							if(file.getParentFile().mkdirs()) {
								file.createNewFile();
							}
						}
						mFile.transferTo(new File(ARTICLE_IMAGE_REPO + "/temp/" + originalFileName));
					}
				}
				return fileList;
			}
}
