package com.kgit.kpark.info.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kgit.kpark.admin.goods.vo.SellingCarVO;
import com.kgit.kpark.info.service.infoService;
import com.kgit.kpark.info.vo.infoVO;

@Controller("infoController")
//@RequestMapping(value = "/info/*")
public class infoControllerImpl implements infoController {
@Autowired
private infoService infoService;
@Autowired
infoVO infoVO;
	@Override
	@RequestMapping(value = "/info/brandInfo.do", method = RequestMethod.GET)
	public ModelAndView brandInfo(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		List list = new ArrayList<infoVO>();
		List list1 =new ArrayList<infoVO>();
	 list=infoService.selectHyunList0();
		list1=infoService.selectHyunList1();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("list1", list1);
		mav.setViewName(viewName);
	
		return mav;
	}
	@Override
	@RequestMapping(value = "/info/brandInfo2.do", method = RequestMethod.GET)
	public ModelAndView brandInfo2(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	@Override
	@RequestMapping(value = "/info/brandList.do", method = RequestMethod.POST)
	public ModelAndView brandList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
//	@RequestMapping(value = {"/info/*"}, method = RequestMethod.GET)
//	private ModelAndView adminSelect(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		String viewName = (String)request.getAttribute("viewName");
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName(viewName);
//		return mav;
//	} 

	@Override
	@RequestMapping(value = "/info/brandInfoKia.do", method = RequestMethod.GET)
	public ModelAndView brandInfoKia(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		List list = new ArrayList<infoVO>();
		List list1 =new ArrayList<infoVO>();
		List list3 = new ArrayList<String>();
	 list=infoService.selectKiaList0();
		list1=infoService.selectKiaList1();
	
		
		String img="/kpark/resources/image/info/kia.jpeg";
		String cnt1="서울 특별시 서초구 헌릉로 12";
		String cnt2="기아자동차";
		String cnt3="1944-12-21";
		String cnt4="김철호";
		String cnt5="The Power to Surprise";
		String cnt6="기아자동차";
		String cnt7="1944년 12월 21에 경성정공으로 설립되었으며 1960년대부터 삼륜 트럭을 생산하였다.지구를 상징하는 유연하고 세련된 타원으로 이루어진 심볼은 세계무대로의 도약을 나타내며, 글씨에 쓰인 빨간색은 생동감 있고 진취적인 의지를 나타낸다.";
		list3.add(img);
	    list3.add(cnt1);
		list3.add(cnt2);
		list3.add(cnt3);
		list3.add(cnt4);
		list3.add(cnt5);
		list3.add(cnt6);
		list3.add(cnt7);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("list1", list1);
		mav.addObject("list3", list3);
		mav.setViewName("forward:/info/brandInfo2.do");
		return mav;
	}

	@Override
	@RequestMapping(value = "/info/brandInfoCher.do", method = RequestMethod.GET)
	public ModelAndView brandInfoCher(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		List list = new ArrayList<infoVO>();
		List list1 =new ArrayList<infoVO>();
		List list3 = new ArrayList<String>();
	 list=infoService.selectCherList0();
		list1=infoService.selectCherList1();
		String img="/kpark/resources/image/info/cher.png";
		String cnt1="인천광역시 부평구 부평대로 233";
		String cnt2="General Motors";
		String cnt3="1955-02-00";
		String cnt4="김창원";
		String cnt5="Find new roads";
		String cnt6="";
		String cnt7="미국의 GM그룹의 브랜드인 쉐보레는 1911년 설립되었으며 승용차와 중형트럭 시장에서 20개 이상의 모델을 판매 중이다. 한국GM의 시초는 신진자동차로 1955년 김창원, 김제원 형제에 의해 설립되었다.인천에 본사 및 연구소를 두고 있으며 부평, 군산, 창원, 보령의 4개의 사업장에서 연간 92만대의 완성차와 140만대의 엔진 및 변속기 생산능력을 갖추고 있다.";
		
		list3.add(img);
	    list3.add(cnt1);
		list3.add(cnt2);
		list3.add(cnt3);
		list3.add(cnt4);
		list3.add(cnt5);
		list3.add(cnt6);
		list3.add(cnt7);
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("list1", list1);
		mav.addObject("list3", list3);
		mav.setViewName("forward:/info/brandInfo2.do");
		return mav;
	}
	@Override
	@RequestMapping(value = "/info/brandInfoSs.do", method = RequestMethod.GET)
	public ModelAndView brandInfoSs(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		List list = new ArrayList<infoVO>();
		List list1 =new ArrayList<infoVO>();
		List list3 = new ArrayList<String>();
		list=infoService.selectSsList0();
		list1=infoService.selectSsList1();
		String img="/kpark/resources/image/info/ss.gif";
		String cnt1="경기도 평택시 칠괴동 150-3";
		String cnt2="Mahindras";
		String cnt3="1962-12-06";
		String cnt4="하동환";
		String cnt5="Robust, Specialty and Premium";
		String cnt6="";
		String cnt7="1962년 12월 6일 법인설립한 하동환자동차공업이 모태인 업체로, 회사 초기에는 버스생산에 주력하였다.1998년 대우자동차에 인수되었다. 피인수 후 얼마 지나지 않아 대우그룹도 해체되었고 그 후, 독자경영 체제 및 상하이자동차 산하를 거쳐 2011년 인도의 마힌드라에 매각되었다. 본사는 평택에 소재하며 평택과 창원에 공장을 보유하고 있다. 쌍용자동차의 심볼인 세 개의 원은 인간과 자연과 기술의 조화로 최고의 가치를 추구한다는 의지를 표현한 것이다.";
		list3.add(img);
		list3.add(cnt1);
		list3.add(cnt2);
		list3.add(cnt3);
		list3.add(cnt4);
		list3.add(cnt5);
		list3.add(cnt6);
		list3.add(cnt7);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("list1", list1);
		mav.addObject("list3", list3);
		mav.setViewName("forward:/info/brandInfo2.do");
		return mav;
	}
	@Override
	@RequestMapping(value = "/info/brandInfoSam.do", method = RequestMethod.GET)
	public ModelAndView brandInfoSam(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		List list = new ArrayList<infoVO>();
		List list1 =new ArrayList<infoVO>();
		List list3 = new ArrayList<String>();
		list=infoService.selectSamList0();
		list1=infoService.selectSamList1();
		String img="/kpark/resources/image/info/sam.gif";
		String cnt1="부산광역시 강서구 르노삼성대로 61";
		String cnt2="르노그룹";
		String cnt3="2000-09-01";
		String cnt4="이건희";
		String cnt5="새로운 10년, 세계로의 비상";
		String cnt6="";
		String cnt7="르노삼성자동차는 네덜란드 법인이며 르노그룹 BV와 삼성카드가 2000년 7월 3일에 체결한 합작투자계약에 의거, 2000년 7월 14일에 설립되었고 당해 9월 1일 삼성자동차를 인수하였다.2007년 12월에는 QM5를 2013년 3월에 QM3 출시하였으며 14년 기준 국내에서 약 5%의 시장점유율을 기록하고 있다. 르노삼성자동차의 심볼은 태풍의 눈을 형상화한 것으로 차별화된 자동차를 만들겠다는 역동성과 고객중심의 경영 방침을 실행하겠다는 신뢰성의 의미를 갖고 있다.";
		list3.add(img);
		list3.add(cnt1);
		list3.add(cnt2);
		list3.add(cnt3);
		list3.add(cnt4);
		list3.add(cnt5);
		list3.add(cnt6);
		list3.add(cnt7);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("list1", list1);
		mav.addObject("list3", list3);
		mav.setViewName("forward:/info/brandInfo2.do");
		return mav;
	}
	@Override
	@RequestMapping(value = "/info/brandInfoBMW.do", method = RequestMethod.GET)
	public ModelAndView brandInfoBMW(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		List list = new ArrayList<infoVO>();
		List list1 =new ArrayList<infoVO>();
		List list3 = new ArrayList<String>();
		list=infoService.selectBMWList0();
		list1=infoService.selectBMWList1();
		String img="/kpark/resources/image/info/bmw.gif";
		String cnt1="독일 바이에른주 뮌헨";
		String cnt2="BMW AG";
		String cnt3="1916-00-00";
		String cnt4="프란츠 요세프 포프";
		String cnt5="Sheer Driving Pleasure";
		String cnt6="";
		String cnt7="1916년 프란츠 요세프 포프가 독일 공군에 엔진을 납품하던 업체인 Rapp Motoren Werke GmbH 인수하였고 1917년에 Bayerische Motoren Werke로 사명을 변경했으며 현재도 사용되고 있는 BMW 트레이드마크를 등록하였다. 이때부터 약자로 BMW로 불리게 되었다. 1918년 독일이 1차대전에서 패전하고 베르사이유 조약에 따라 항공기 엔진 생산을 금지당한 BMW는 1923년부터 모터사이클을 제조하기 시작했고 1928년 Austin Motor의 Austin7을 베이스로 한 Dixi 자동차를 생산하며 사업영역을 확장하였다.";
		list3.add(img);
		list3.add(cnt1);
		list3.add(cnt2);
		list3.add(cnt3);
		list3.add(cnt4);
		list3.add(cnt5);
		list3.add(cnt6);
		list3.add(cnt7);
	
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("list1", list1);
		mav.addObject("list3", list3);
		mav.setViewName("forward:/info/brandInfo2.do");
		return mav;
	}
	@Override
	@RequestMapping(value = "/info/brandInfoBen.do", method = RequestMethod.GET)
	public ModelAndView brandInfoBen(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		List list = new ArrayList<infoVO>();
		List list1 =new ArrayList<infoVO>();
		List list3 = new ArrayList<String>();
		list=infoService.selectBenList0();
		list1=infoService.selectBenList1();
		String img="/kpark/resources/image/info/benz.gif";
		String cnt1="독일 바덴뷔르템베르크주 슈투트가르트";
		String cnt2="Daimler AG";
		String cnt3="1883-10-00";
		String cnt4="칼 벤츠, 고틀립 다임러";
		String cnt5="The best or nothing";
		String cnt6="";
		String cnt7="1883년 10월 칼 벤츠가 설립한 Benz&Cie와 1890년 고틀립 다임러가 설립한 DMG(Daimer Motren Gesellschaft)가 1926년 Daimer- Benz AG로 합병하면서 출시한 브랜드이다.현재 메르세데스-벤츠는 소형차 A클래스와 C, E, S클래스로 이어지는 중·대형 세단 및 스포츠카, RV 등을 생산하고 있다. 메르세데스-벤츠의 엠블럼은 DMG와 벤츠의 합병으로 결정되었고, 이후 복잡해 보이는 요소를 치우고 지금의 단순한 원과 세 꼭지 별만 남게 되었다.";
		list3.add(img);
		list3.add(cnt1);
		list3.add(cnt2);
		list3.add(cnt3);
		list3.add(cnt4);
		list3.add(cnt5);
		list3.add(cnt6);
		list3.add(cnt7);
	
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("list1", list1);
		mav.addObject("list3", list3);
		mav.setViewName("forward:/info/brandInfo2.do");
		return mav;
	}
	@Override
	@RequestMapping(value = "/info/brandInfoAudi.do", method = RequestMethod.GET)
	public ModelAndView brandInfoAudi(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		List list = new ArrayList<infoVO>();
		List list1 =new ArrayList<infoVO>();
		List list3 = new ArrayList<String>();
		list=infoService.selectAudiList0();
		list1=infoService.selectAudiList1();
		String img="/kpark/resources/image/info/audi.gif";
		String cnt1="독일 바이에른주 잉골슈타트";
		String cnt2="Volkswagen AG";
		String cnt3="1909-07-16";
		String cnt4="아우구스트 호르히";
		String cnt5="기술을 통한 진보(Vorsprung durch Technik)";
		String cnt6="";
		String cnt7="1909년 7월 16일 아우구스트 호르히가 설립한 아우디(Audi Automobilwerke GmbH)가 회사의 전신이다.1932년 작센 행정당국의 계속된 압력과 불황 타계의 대책으로 아우디는 작센지역의 다른 군소 메이커인 호르히(A. Horch & Cie), 반더러(Wanderer), 데카베(Dampf-Kraft-Wagen)와 함께 아우토 우니온(Auto Union AG)이란 합병회사를 출범시켰다. 이 합병회사의 명칭이 아우디로 변경된 것은 그로부터 50여년이 지난 1985년이다.현재, A라인, S라인, Q라인, RS라인, R라인 등의 모델에 1,3,5,7 등의 숫자를 붙여 모델을 출시하고 있다. 폭스바겐 그룹이 전체 지분의 99%를 소유하고 있으며 자회사로는 콰트로 GmbH와 슈퍼카 제조업체 람보르기니가 있다." ; 			
		list3.add(img);
		list3.add(cnt1);
		list3.add(cnt2);
		list3.add(cnt3);
		list3.add(cnt4);
		list3.add(cnt5);
		list3.add(cnt6);
		list3.add(cnt7);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("list1", list1);
		mav.addObject("list3", list3);
		mav.setViewName("forward:/info/brandInfo2.do");
		return mav;
	}
	@Override
	@RequestMapping(value = "/info/brandInfoVol.do", method = RequestMethod.GET)
	public ModelAndView brandInfoVol(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		List list = new ArrayList<infoVO>();
		List list1 =new ArrayList<infoVO>();
		List list3 = new ArrayList<String>();
		list=infoService.selectVolList0();
		list1=infoService.selectVolList1();
		String img="/kpark/resources/image/info/volks.gif";
		String cnt1="독일 니더작센주 볼프스부르크";
		String cnt2="Volkswagen AG";
		String cnt3="1937-05-28";
		String cnt4="페르디난트 포르쉐";
		String cnt5="Das Auto";
		String cnt6="";
		String cnt7="독일이 나치당 손아귀에 넘어간 후, 1934년 6월, 아돌프 히틀러가 포르쉐의 설립자 페르디난트 포르쉐에게 국민차 개발을 지시하면서 시작된 프로젝트에 따라 1937년 5월, 베를린에서 독일노동전선(German Labour Front)에 의해 설립된 회사로, 1938년 9월 폭스바겐(Volkswagenwerk GmbH)으로 사명을 변경하였다.폭스바겐이라는 브랜드 이름 자체가 독일어로 ‘국민차’라는 뜻이며 폭스바겐의 앰블럼은 사내 직원들의 공모를 통하여 선정되었는데, 비틀의 엔지니어였던 프란츠 라임스피스가 제안한 W자 위에 V자가 얹혀진 단순하고 논리적으로 보이는 로고가 채택된 것이다. ";
		list3.add(img);
		list3.add(cnt1);
		list3.add(cnt2);
		list3.add(cnt3);
		list3.add(cnt4);
		list3.add(cnt5);
		list3.add(cnt6);
		list3.add(cnt7);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("list1", list1);
		mav.addObject("list3", list3);
		mav.setViewName("forward:/info/brandInfo2.do");
		return mav;
	}
	@Override
	@RequestMapping(value = "/info/brandDetail.do", method = RequestMethod.GET)
	public ModelAndView brandDetail(@RequestParam ("model") String model, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String viewName = (String)request.getAttribute("viewName"); // 인터셉터를 사용해 요청명에서 뷰 이름 얻음
		ModelAndView mav = new ModelAndView();
		infoVO car = infoService.carInfo(model);
		mav.addObject("car", car);
		mav.setViewName(viewName);
		return mav;
	}


	
}
