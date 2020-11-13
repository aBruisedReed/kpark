package com.kgit.kpark.admin.goods.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kgit.kpark.admin.goods.controller.SellingCarController;
import com.kgit.kpark.admin.goods.service.SellingCarService;
import com.kgit.kpark.admin.goods.vo.ImageVO;
import com.kgit.kpark.admin.goods.vo.SellingCarVO;
import com.kgit.kpark.member.vo.MemberVO;

@Controller("sellingCarController")
@EnableAspectJAutoProxy
public class SellingCarControllerImpl implements SellingCarController {
	private static final Logger logger = LoggerFactory.getLogger(SellingCarControllerImpl.class);
	
	private static final String ARTICLE_IMAGE_REPO = "/Users/younjiwon/Desktop/workspace/Final/image_repo";
	
	@Autowired 
	SellingCarService sellingCarService;
	@Autowired
	SellingCarVO sellingCarVO;
	
//	@Override
//	@RequestMapping(value = "admin/addCar.do", method = RequestMethod.POST)
//	public ModelAndView addCar(SellingCarVO sellingCarVO, HttpServletRequest request, HttpServletResponse response) throws Exception {
//		request.setCharacterEncoding("utf-8");
//		int result = sellingCarService.addCar(sellingCarVO);
//		ModelAndView mav = new ModelAndView("redirect:/admin/adminSelect.do");
//		return mav;
//	}
	
	@Override
	@RequestMapping(value = "admin/addCar.do", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity addCar(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)
			throws Exception {
		multipartRequest.setCharacterEncoding("utf-8");
		String imageFileName = null;
		Map articleMap = new HashMap();
		
		Enumeration enu = multipartRequest.getParameterNames();
		while(enu.hasMoreElements()) {
			String name = (String)enu.nextElement();
			String value = multipartRequest.getParameter(name);
			articleMap.put(name, value);
		}
		
		HttpSession session = multipartRequest.getSession();
//		MemberVO memberVO = (MemberVO)session.getAttribute("member");
//		String id = memberVO.getId();
//		articleMap.put("id", id);
		
		List<String> fileList = upload(multipartRequest);
		List<ImageVO> imageFileList = new ArrayList<ImageVO>();
		if(fileList!=null && fileList.size()!=0) {
			for(String fileName:fileList) {
				ImageVO imageVO = new ImageVO();
				imageVO.setImageFileName(fileName);
				imageFileList.add(imageVO);
			}
			articleMap.put("imageFileList", imageFileList);
		}

		String message;
		ResponseEntity resEnt = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html;charset=utf-8");
		int serial = sellingCarService.getSerialMax() + 1;
		try {
			int addCar = sellingCarService.addCar((HashMap)articleMap);
			if(imageFileList!=null && imageFileList.size()!=0) {
				for(ImageVO imageVO:imageFileList) {
					imageFileName = imageVO.getImageFileName();
					File srcFile = new File(ARTICLE_IMAGE_REPO + "/temp/" + imageFileName);
					File destDir = new File(ARTICLE_IMAGE_REPO + "/" + serial);
					FileUtils.moveFileToDirectory(srcFile, destDir, true);
				}
			}
			message = "<script> alert('새글을 추가했습니다.');"
					+ " location.href='" + multipartRequest.getContextPath() + "/buy/search.do';"
							+ " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
		} catch (Exception e) {
			if(imageFileList!=null && imageFileList.size()!=0) {
				for(ImageVO imageVO:imageFileList) {
					imageFileName = imageVO.getImageFileName();
					File srcFile = new File(ARTICLE_IMAGE_REPO + "/temp/" + imageFileName);
					srcFile.delete();
				}
			}
			
			message = "<script> alert('오류가 발생했습니다. 다시 시도해 주세요.');"
					+ " location.href='" + multipartRequest.getContextPath() + "/admin/adminSellForm.do'; "
							+ " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			e.printStackTrace();
		}
		return resEnt;
	}
	
	// 다중 이미지 업로드
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
