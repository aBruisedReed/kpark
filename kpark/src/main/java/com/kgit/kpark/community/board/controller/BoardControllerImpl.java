package com.kgit.kpark.community.board.controller;

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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kgit.kpark.community.board.service.BoardService;
import com.kgit.kpark.community.board.vo.ArticleVO;
import com.kgit.kpark.community.board.vo.ImageVO;
import com.kgit.kpark.member.vo.MemberVO;

@Controller("boardController")
public class BoardControllerImpl implements BoardController{
	private static final String ARTICLE_IMAGE_REPO = "E:\\board\\article_image";
	@Autowired
	BoardService boardService;
	@Autowired
	ArticleVO articleVO;
	
	// 글목록
		@Override
		@RequestMapping(value="/community/board_listArticles.do", method= {RequestMethod.GET, RequestMethod.POST})
		public ModelAndView board_listArticles(HttpServletRequest request, HttpServletResponse response) throws Exception {
			// TODO Auto-generated method stub
			String viewName = (String)request.getAttribute("viewName");
			List articlesList = boardService.board_listArticles();
			ModelAndView mav = new ModelAndView(viewName);
			mav.addObject("articlesList", articlesList);
			return mav;
		}	
	
	
	// 글쓰기	
		@Override
		@RequestMapping(value="/community/board_addNewArticle.do", method=RequestMethod.POST)
		@ResponseBody
		public ResponseEntity board_addNewArticle(MultipartHttpServletRequest multipartRequest, HttpServletResponse response)
				throws Exception {
			// TODO Auto-generated method stub
			multipartRequest.setCharacterEncoding("utf-8");
			String imageFileName = null;
			
			Map articleMap = new HashMap();
			Enumeration enu = multipartRequest.getParameterNames();
			while(enu.hasMoreElements()) {
				String name= (String)enu.nextElement();
				String value= multipartRequest.getParameter(name);
				articleMap.put(name, value);
			}
			
			HttpSession session = multipartRequest.getSession();
			MemberVO memberVO = (MemberVO)session.getAttribute("member");
			String id =memberVO.getUser_id();
			articleMap.put("id", id);
			
			List<String> fileList = upload(multipartRequest);
			List<ImageVO> imageFileList = new ArrayList<ImageVO>();
			if(fileList != null && fileList.size() != 0) {
				for (String fileName:fileList) {
					ImageVO imageVO = new ImageVO();
					imageVO.setImageFileName(fileName);
					imageFileList.add(imageVO);
					System.out.println("실행");
				}
				articleMap.put("imageFileList", imageFileList);
			} else {
				articleMap.put("imageFile", null);
				
			}
			String message;
			ResponseEntity resEnt = null;
			HttpHeaders responseHeaders = new HttpHeaders();
			responseHeaders.add("Content-Type", "text/html;charset=utf-8");

			try {
				int i=0;
				int articleNO = boardService.board_addNewArticle(articleMap);
				if(imageFileList != null && imageFileList.size() != 0) {
					for(ImageVO imageVO : imageFileList) {
						imageFileName = imageVO.getImageFileName();

						File srcFile = new File(ARTICLE_IMAGE_REPO+"\\"+"temp"+"\\"+imageFileName);
						File destDir = new File(ARTICLE_IMAGE_REPO+"\\"+articleNO);
						//destDir.mkdirs();
						FileUtils.moveFileToDirectory(srcFile, destDir, true);
						i++;
					}
				}
				message = "<script>";
				message += " alert('새글을 추가했습니다.');";
				message += " location.href='"+multipartRequest.getContextPath()+"/community/board_listArticles.do';";
				message += " </script>";
				resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
				
			} catch (Exception e) {
				if (imageFileList != null && imageFileList.size() != 0) {
					for(ImageVO imageVO : imageFileList) {
						imageFileName = imageVO.getImageFileName();
						File srcFile = new File(ARTICLE_IMAGE_REPO+"\\"+"temp"+"\\" + imageFileName);
						srcFile.delete();
					}
				}
				message = "<script>";
				message = " alert('오류가 발생했습니다. 다시 시도하세요');";
				message = " location.href='" + multipartRequest.getContextPath()+"/community/board_articleForm.do';";
				message = " </script>";
				resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
				e.printStackTrace();
					
			}
			return resEnt;
		}


	// 다중 이미지 업로드
	private List<String> upload(MultipartHttpServletRequest multipartRequest) throws Exception{
		List<String> fileList= new ArrayList<String>();
		Iterator<String> fileNames = multipartRequest.getFileNames();
		String originalFileName = null;
		while(fileNames.hasNext()){
			String fileName = fileNames.next();
			MultipartFile mFile = multipartRequest.getFile(fileName);
			originalFileName=mFile.getOriginalFilename();
			fileList.add(originalFileName);
			File file = new File(ARTICLE_IMAGE_REPO +"\\"+ fileName);
			if(mFile.getSize()!=0){ //File Null Check
				if(! file.exists()){ //경로상에 파일이 존재하지 않을 경우
					if(file.getParentFile().mkdirs()){ //경로에 해당하는 디렉토리들을 생성
							file.createNewFile(); //이후 파일 생성
					}
				}
				mFile.transferTo(new File(ARTICLE_IMAGE_REPO +"\\"+"temp"+ "\\"+originalFileName)); //임시로 저장된 multipartFile을 실제 파일로 전송
			}
		}
		if (originalFileName != null) {
			return fileList = null;
		}
		return fileList;
	}
	
	// 다중 이미지 보기
	@RequestMapping(value="/community/board_viewArticle.do", method=RequestMethod.GET)
	public ModelAndView board_viewArticle(@RequestParam("articleNO") int articleNO,
			HttpSession session, 
			HttpServletRequest request, 
			HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		String viewName = (String)request.getAttribute("viewName");
		Map articleMap = boardService.board_viewArticle(articleNO);
		boardService.board_increaseViewcnt(articleNO, session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("articleMap", articleMap);
		return mav;
	}
	
	// 이미지 수정
	@RequestMapping(value="/community/board_modArticle.do", method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity board_modArticle(MultipartHttpServletRequest multipartRequest, 
			HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		multipartRequest.setCharacterEncoding("utf-8");
		Map<String,Object> articleMap = new HashMap<String, Object>();
		Enumeration enu=multipartRequest.getParameterNames();
		while(enu.hasMoreElements()){
			String name=(String)enu.nextElement();
			String value=multipartRequest.getParameter(name);
			articleMap.put(name,value);
		}
		
		List<String> imageFileName = upload(multipartRequest);
		HttpSession session = multipartRequest.getSession();
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		String id = memberVO.getUser_id();
		articleMap.put("id", id);
		articleMap.put("imageFileName", imageFileName);
		
		String articleNO=(String)articleMap.get("articleNO");
		String message;
		ResponseEntity resEnt=null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
	    try {
	       boardService.board_modArticle(articleMap);
	       if(imageFileName!=null && ((File) imageFileName).length()!=0) {
	         File srcFile = new File(ARTICLE_IMAGE_REPO+"\\"+"temp"+"\\"+imageFileName);
	         File destDir = new File(ARTICLE_IMAGE_REPO+"\\"+articleNO);
	         FileUtils.moveFileToDirectory(srcFile, destDir, true);
	         
	         String originalFileName = (String)articleMap.get("originalFileName");
	         File oldFile = new File(ARTICLE_IMAGE_REPO+"\\"+articleNO+"\\"+originalFileName);
	         oldFile.delete();
	       }	
	       message = "<script>";
			message += " alert('수정 되었습니다.');";
			message += " location.href='" + multipartRequest.getContextPath()+"/community/board_viewArticle.do?articleNO="+articleNO+"';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
		} catch(Exception e) {
			File srcFile = new File(ARTICLE_IMAGE_REPO+"\\"+"temp"+"\\"+imageFileName);
			srcFile.delete();
			message = "<script>";
			message += " alert('수정이 취소 되었습니다.');";
			message += " location.href='"+multipartRequest.getContextPath()+"/community/board_viewArticle.do?articleNO="+articleNO+"';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
		}
		return resEnt;
	}
	
	// 글삭제
	@Override
	@RequestMapping(value="/community/board_removeArticle.do", method= RequestMethod.POST)
	@ResponseBody
	public ResponseEntity board_removeArticle(@RequestParam("articleNO") int articleNO, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		String message;
		ResponseEntity resEnt = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type",	"text/html;charset=utf-8");
		try {
			boardService.board_removeArticle(articleNO);
			File destDir = new File(ARTICLE_IMAGE_REPO+"\\"+articleNO);
			FileUtils.deleteDirectory(destDir);
			
			message = "<script>";
			message += " alert('삭제 되었습니다.');";
			message += " location.href='" + request.getContextPath()+"/community/board_listArticles.do';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
		} catch(Exception e) {
			message = "<script>";
			message += " alert('삭제가 취소되었습니다.');";
			message += " location.href='"+request.getContextPath()+"/community/board_listArticles.do';";
			message += " </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			e.printStackTrace();
		}
		return resEnt;
	}	
	
	@RequestMapping(value="/community/*Form.do", method=RequestMethod.GET)
	public ModelAndView form(HttpServletRequest request, HttpServletResponse response) throws Exception{
		//String viewName = getViewName(request);
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
}