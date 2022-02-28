package com.company.lottomon.controller;

import com.company.lottomon.common.HtmlCrawling;
import com.company.lottomon.model.*;
import com.company.lottomon.service.*;
import org.apache.log4j.Logger;

import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@Component
public class ViewController {
    Logger log = Logger.getLogger(this.getClass());

	@Autowired
	@Resource(name = "boardService")
	private BoardService boardService;

    @Autowired
    @Resource(name = "membershipService")
    private MembershipService membershipService;

    @Autowired
    @Resource(name = "lottoService")
    private LottoService lottoService;

    @Autowired
    @Resource(name = "userService")
    private UserService userService;

    /**
     * 로그인 페이지
     */
    @RequestMapping(value = "/login/login.do", method = RequestMethod.GET)
    public String login(HttpServletRequest request, HttpSession session) {
        log.debug(session.getAttribute("user_id") + "세션 아이디입니다.");
        System.out.println(session.getAttribute("user_id") + "세션 아이디입니다.");

        return "login/login";
    }

    /**
     * 사이트 소개 페이지
     */
    @RequestMapping(value = "/lotto/introduce.do", method = RequestMethod.GET)
    public String introduce(HttpServletRequest request, HttpSession session) {

        return "login/findUser";
    }

    /**
     * 회원 가입 약관 동의 페이지 호출
     */
    @RequestMapping(value = "/login/joinAgree.do", method = RequestMethod.GET)
    public String join(HttpServletRequest request, HttpSession session) {

        return "login/joinAgree";
    }

    /**
     * 회원 가입 정보 입력 페이지 호출
     */
    @RequestMapping(value = "/login/joinInfo.do", method = RequestMethod.GET)
    public String joininfo(HttpServletRequest request, HttpSession session) {

        return "login/joinInfo";
    }

    /**
     * 회원 정보 찾기 페이지
     */
    @RequestMapping(value = "/login/findUser.do", method = RequestMethod.GET)
    public String findUser(HttpServletRequest request, HttpSession session) {

        return "login/findUser";
    }

    /**
     * 회원 가입 완료
     */
    @RequestMapping(value = "/login/joinSuc.do", method = RequestMethod.GET)
    public String joinSuc(HttpServletRequest request, HttpSession session) {

        return "login/joinSuc";
    }

    /**
     * 계정 정보 변경
     */
    @RequestMapping(value = "/myUpdate.do", method = RequestMethod.GET)
    public String myUpdate(HttpServletRequest request, HttpSession session, Model model) {
        if(session.getAttribute("user_id") == null){
            model.addAttribute("message","로그인이 필요한 서비스입니다.");
            model.addAttribute("redirectUrl","/myUpdate.do");
            return "/login/login";
        }
        UserInfo userInfo = new UserInfo();
        model.addAttribute("userInfo", userService.getUserInfo((String)session.getAttribute("user_id")));

        return "login/myUpdate";
    }

    /**
     * 메인 페이지
     */
    @RequestMapping(value = "/main.do", method = RequestMethod.GET)
    public String main(HttpServletRequest request, HttpSession session, Model model) {
        try {
            //로또 정보 최신화 (배치 대용)
            latestLottoData();

            model.addAttribute("lottoData3Week", lottoService.select3WeeksNumberList());
            model.addAttribute("selectOrderingNo1", lottoService.selectOrderingNo1());
            model.addAttribute("selectPlaceList", lottoService.selectPlaceList());

            Board board = new Board();
            board.setStart_row_num(0);
            board.setPost_num_base_cnt(5);

            board.setType("01");
            model.addAttribute("board_free", boardService.selectList(board));
            board.setType("02");
            model.addAttribute("board_debate", boardService.selectList(board));
            board.setType("03");
            model.addAttribute("board_winhope", boardService.selectList(board));
            board.setType("04");
            model.addAttribute("board_win", boardService.selectList(board));

        }catch (Exception e){
            e.printStackTrace();
        }
        return "main";
    }


    /**
     * 멤버쉽 페이지
     */
    @RequestMapping(value = "/membership.do", method = RequestMethod.GET)
    public String membership(HttpServletRequest request, HttpSession session, Model model) {
        try {
            ArrayList<Membership> memberships = (ArrayList<Membership>) membershipService.selectList();
            ArrayList<MembershipPrice> membershipPrice = (ArrayList<MembershipPrice>) membershipService.getPrice();

            for (int i = 0; i < membershipPrice.size(); i++) {
                MembershipPrice tmpMsp = (MembershipPrice)membershipPrice.get(i);
                if(tmpMsp.getMembership_seq().equals("1")){
                    model.addAttribute("vip"+tmpMsp.getMaintain_month(), tmpMsp.getPrice());
                }else if(tmpMsp.getMembership_seq().equals("2")){
                    model.addAttribute("gold"+tmpMsp.getMaintain_month(), tmpMsp.getPrice());
                }else if(tmpMsp.getMembership_seq().equals("3")){
                    model.addAttribute("silver"+tmpMsp.getMaintain_month(), tmpMsp.getPrice());
                }
            }
            model.addAttribute("membershipList", memberships);

        }catch (Exception e){
            e.printStackTrace();
        }
        return "membership/membership";
    }

    /**
     * 멤버쉽 결제 페이지
     */
    @RequestMapping(value = "/membershipPay.do", method = RequestMethod.GET)
    public String membershipPay(HttpServletRequest request, HttpSession session, Model model) {
        try {
            if(session.getAttribute("user_id") == null){
                model.addAttribute("message","로그인이 필요한 서비스입니다.");
                model.addAttribute("redirectUrl","/myUpdate.do");
                return "/login/login";
            }

            String sg = request.getParameter("sg");

            ArrayList<Membership> memberships = (ArrayList<Membership>) membershipService.selectList();
            ArrayList<MembershipPrice> membershipPrice = (ArrayList<MembershipPrice>) membershipService.getPrice();

            model.addAttribute("sg", sg);
            model.addAttribute("membershipList", memberships);
            model.addAttribute("membershipPriceList", membershipPrice);

        }catch (Exception e){
            e.printStackTrace();
        }
        return "membership/membership_pay";
    }

    /**
     * 로또당첨결과 페이지
     */
    @RequestMapping(value = "/winning.do", method = RequestMethod.GET)
    public String winning(HttpServletRequest request, HttpSession session, Model model) {
        try {
            LottoData lottoData = lottoService.selectData();

            model.addAttribute("lottoData", lottoData);
        }catch (Exception e){
            e.printStackTrace();
        }
        return "lotto/lottoWinning";
    }


    public void latestLottoData(){

        SimpleDateFormat format = new SimpleDateFormat ( "HH:mm:ss");
        Calendar time = Calendar.getInstance();

        String now = format.format(time.getTime());

        System.out.println(now);

        if(now.contains("20:") || now.contains("21:")){
            return;
        }


        int serveLatestDrw = lottoService.selectLastDrwNo();
        int dhLatestDrw = crawlingDrwno();

        if(dhLatestDrw != 0 && serveLatestDrw != dhLatestDrw ){
            for (int i = ++serveLatestDrw; i <= dhLatestDrw; i++) {
                latestInsertDrw(i);
                latestInsertStore(i);
            }
        }
    }

    private int crawlingDrwno(){
        try {
            String url = "https://dhlottery.co.kr/gameResult.do?method=byWin";

            HtmlCrawling hc = new HtmlCrawling();
            Document doc = (Document) hc.getHtml(url);

            //동행복권 최신 로또 회차 가져오기
            Elements drwNoEle = doc.select(".win_result").eq(0).select("strong");
            String drwNo = drwNoEle.get(0).text().replaceAll("회", "");

            return Integer.parseInt(drwNo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public void latestInsertDrw(int insertDrw){
        try {
            String param = "&drwNo="+insertDrw;
            String url = "https://dhlottery.co.kr/gameResult.do?method=byWin" + param;

            HtmlCrawling hc = new HtmlCrawling();
            Document doc = (Document) hc.getHtml(url);

            LottoData ld = new LottoData();

            //당첨 금액, 인원수 추출
            Elements mElementDatas = doc.select(".tbl_data_col").eq(0).select("tr");
            int i = 0;
            ld.setDrwNo(insertDrw);
            for  (Element ele : mElementDatas){
                Elements tdList = ele.select("td");
                if(i==0){
                    i++;
                }else if(i==1){
                    ld.setPlaceNo1_cnt(Integer.parseInt(tdList.eq(2).text().replaceAll(",","")));
                    ld.setPlaceNo1_price(tdList.eq(3).text().replaceAll(",","").replaceAll("원", ""));
                    i++;
                }else if(i==2){
                    ld.setPlaceNo2_cnt(Integer.parseInt(tdList.eq(2).text().replaceAll(",","")));
                    ld.setPlaceNo2_price(tdList.eq(3).text().replaceAll(",","").replaceAll("원", ""));
                    i++;
                }else if(i==3){
                    ld.setPlaceNo3_cnt(Integer.parseInt(tdList.eq(2).text().replaceAll(",","")));
                    ld.setPlaceNo3_price(tdList.eq(3).text().replaceAll(",","").replaceAll("원", ""));
                    i++;
                }else if(i==4){
                    ld.setPlaceNo4_cnt(Integer.parseInt(tdList.eq(2).text().replaceAll(",","")));
                    ld.setPlaceNo4_price(tdList.eq(3).text().replaceAll(",","").replaceAll("원", ""));
                    i++;
                }else if(i==5){
                    ld.setPlaceNo5_cnt(Integer.parseInt(tdList.eq(2).text().replaceAll(",","")));
                    ld.setPlaceNo5_price(tdList.eq(3).text().replaceAll(",","").replaceAll("원", ""));
                    i++;
                }
            }

            Elements mElementNo = doc.select(".ball_645");
            i = 1;
            for  (Element ele : mElementNo){
                switch (i){
                    case 1:
                        ld.setDrwtNo1(Integer.parseInt(ele.text()));
                    case 2:
                        ld.setDrwtNo2(Integer.parseInt(ele.text()));
                    case 3:
                        ld.setDrwtNo3(Integer.parseInt(ele.text()));
                    case 4:
                        ld.setDrwtNo4(Integer.parseInt(ele.text()));
                    case 5:
                        ld.setDrwtNo5(Integer.parseInt(ele.text()));
                    case 6:
                        ld.setDrwtNo6(Integer.parseInt(ele.text()));
                    case 7:
                        ld.setBnusNo(Integer.parseInt(ele.text()));
                }
                i++;
            }
            Elements drwDate = doc.select(".desc");
            for  (Element ele : drwDate){
                String date = ele.text().substring(1,13).replaceAll("년 ", ".").replaceAll("월 ", ".");
                ld.setDwr_dt(date);
            }
            System.out.println(ld);
            lottoService.insertLottoData(ld);

            System.out.println(insertDrw +" 회차 정보 저장 성공");

            //당첨 번호 추출
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void latestInsertStore(int lastPlaceDrwNo){
        try {
            String param = "&drwNo=" + lastPlaceDrwNo;
            String url = "https://dhlottery.co.kr/store.do?method=topStore&pageGubun=L645"+param;

            HtmlCrawling hc = new HtmlCrawling();

            Document doc = (Document) hc.getHtml(url);
            Elements mElementDatas = doc.select(".tbl_data_col").eq(0).select("tr");
            LottoPlace lp = new LottoPlace();

            List<LottoPlace> placeList = new ArrayList<>();
            for (Element ele : mElementDatas){
                Elements tdList = ele.select("td");
                if(tdList.size() < 1 || tdList.get(0).text().contains("조회 결과가")){
                    continue;
                }else{
                    for (int i = 0; i < tdList.size(); i++) {
                        lp.setDrwNo(lastPlaceDrwNo);
                        if(i == 1){
                            lp.setName(tdList.eq(i).text());
                        }else if(i == 2){
                            lp.setType(tdList.eq(i).text());
                        }else if (i == 3){
                            lp.setAddr(tdList.eq(i).text());
                            placeList.add(lp);
                            lp = new LottoPlace();
                        }
                    }
                }
            }
            if(placeList.size() > 0){
                lottoService.insertLottoPlaceData(placeList);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    /**
     * 이벤트 랜딩 페이지
     */
    @RequestMapping(value = "/eventLandf.do", method = RequestMethod.GET)
    public String eventLandf() {
        return "landing/landing01";
    }
}
