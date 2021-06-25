package first.common.util;

import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.xmlbeans.impl.xb.xsdschema.Public;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

/***
 * Var 클래스를  JSON 문자열로 바꾸며 전자영수증 데이터에 맞는 형식인지 혹은 컬럼 정상으로 넘어왔는지 유효성 검사
 * 
 * 
 */
public final class ReceiptJsonVerifi {
	
	
	
	public String ReceiptJsonVerifi(Var data) throws Exception{
		JSONObject json = new JSONObject();
		JSONParser jsonParser = new JSONParser();
		String resMsg = "";
		String errCol = "";
		System.out.println("■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■");
		System.out.println("RCP01 JSON 유효성 검사 시작");
		
		
		try {
			System.out.println(data.find("salesInfo.salesType"));
			String salesType = data.find("salesInfo.salesType").toString();
			if(salesType.equals("RCP01")){
				errCol = RCP01Verifi(data);
				System.out.println("errCol");
				if(errCol.equals("")){
					resMsg = "noneErr";
				}else{
					resMsg += "{";
					resMsg += "    \"result\":\"PI102\",";
					resMsg += "    \"message\":\"JSON 형식 오류 - " + errCol + "\",";
					resMsg += "}";
					
					System.out.println("오류 감지");
				} 
				 
				return resMsg;
						
			}else if(data.find("salesInfo.salesType").equals("RCP02")){
				
			}else if(data.find("salesInfo.salesType").equals("RCP03")){
				
			}else{
				resMsg = "{";
				resMsg += "    \"result\":\"\",";
				resMsg += "    \"message\":\"JSON형식 오류 ( salesType 필드 확인 필요 )\" ";
				resMsg += "}";
				
				return resMsg;
			}
			
			
			
			
			
			
		} catch (ParseException e) {
			e.printStackTrace();
			resMsg = "JSON 형식이 아닙니다. ' , { } [ ] 등 특수문자를 확인해주세요 ";
			return resMsg;
		}	catch (Exception e) {
			e.printStackTrace();
			return e.getMessage();
		}		
		
		
		
		return resMsg;
	}
	
	
	
	public String RCP01Verifi(Var data) throws Exception {
		String errCol = "";
		
		
		try {
			
			
			
			if(data.find("posName").equals("") || data.find("posName").toString().equals("null")){ errCol += "posName / "; }
			if(data.find("userKey").equals("") || data.find("userKey").toString().equals("null")){ errCol += "userkey / "; }
			
			if(data.find("etcInfo").toString().equals("null")){ errCol += "etcInfo / "; }
			if(data.find("etcInfo.connectionCom").toString().equals("null")){ errCol += "etcInfo - connectionCom / "; }
			
			if(data.find("shopInfo").equals("") || data.find("shopInfo").toString().equals("null")){ errCol += "shopInfo / "; }
			if(data.find("shopInfo.shopName").toString().equals("null")){ errCol += "shopInfo - shopName / "; }
			if(data.find("shopInfo.branchName").toString().equals("null")){ errCol += "shopInfo - branchName / "; }
			if(data.find("shopInfo.ercpRegNo").toString().equals("null")){ errCol += "shopInfo - ercpRegNo / "; }
			if(data.find("shopInfo.bizNo").toString().equals("null")){ errCol += "shopInfo - bizNo / "; }
			if(data.find("shopInfo.addr").toString().equals("null")){ errCol += "shopInfo - addr / "; }
			if(data.find("shopInfo.ceo").toString().equals("null")){ errCol += "shopInfo - ceo / "; }
			if(data.find("shopInfo.phone").toString().equals("null")){ errCol += "shopInfo - phone / "; }
			if(data.find("shopInfo.cashier").toString().equals("null")){ errCol += "shopInfo - cashier / "; }
			
			if(data.find("salesInfo").equals("") || data.find("salesInfo").toString().equals("null")){ errCol += "salesInfo / "; }
			if(data.find("salesInfo.salesBarCode").toString().equals("null")){ errCol += "shopInfo - salesBarCode / "; }
			if(data.find("salesInfo.totAmt").toString().equals("null")){ errCol += "shopInfo - totAmt / "; }
			if(data.find("salesInfo.discountAmt").toString().equals("null")){ errCol += "shopInfo - discountAmt / "; }
			if(data.find("salesInfo.chgAmt").toString().equals("null")){ errCol += "shopInfo - chgAmt / "; }
			if(data.find("salesInfo.paidAmt").toString().equals("null")){ errCol += "shopInfo - paidAmt / "; }
			if(data.find("salesInfo.surtaxAmt").toString().equals("null")){ errCol += "shopInfo - surtaxAmt / "; }
			if(data.find("salesInfo.dfAmt").toString().equals("null")){ errCol += "shopInfo - dfAmt / "; }
			if(data.find("salesInfo.taxAmt").toString().equals("null")){ errCol += "shopInfo - taxAmt / "; }
			if(data.find("salesInfo.detailCnt").toString().equals("null")){ errCol += "shopInfo - detailCnt / "; }
			
			if(data.find("salesList").equals("") || data.get("salesList").toString().equals("null")){ errCol += "salesInfo / "; }
			
			
			for (int i = 0; i < data.find("salesList").size(); i++) {
				if(data.find("salesList["+i+"].seqNo").toString().equals("null"))		{ errCol += "salesList[" + i + "] - seqNo / "; }
				if(data.find("salesList["+i+"].pName").toString().equals("null"))		{ errCol += "salesList[" + i + "] - pName / "; }
				if(data.find("salesList["+i+"].pPrice").toString().equals("null"))	{ errCol += "salesList[" + i + "] - pPrice / "; }
				if(data.find("salesList["+i+"].taxPrice").toString().equals("null"))	{ errCol += "salesList[" + i + "] - taxPrice / "; }
				if(data.find("salesList["+i+"].fpPrice").toString().equals("null"))	{ errCol += "salesList[" + i + "] - fpPrice / "; }
				if(data.find("salesList["+i+"].qty").toString().equals("null"))		{ errCol += "salesList[" + i + "] - qty / "; }
				if(data.find("salesList["+i+"].oPrice").toString().equals("null"))	{ errCol += "salesList[" + i + "] - oPrice / "; }
				if(data.find("salesList["+i+"].discountPrice").toString().equals("null")){ errCol += "salesList[" + i + "] - discountPrice / "; }
				if(data.find("salesList["+i+"].paidPrice").toString().equals("null"))	{ errCol += "salesList[" + i + "] - paidPrice / "; }
			}
			
			
			if(data.find("compoundYN").toString().equals("null")){ errCol += "compoundYN / "; }
			if(data.find("paymentList").equals("") || data.get("paymentList").toString().equals("null")){ errCol += "paymentList / "; }
			
			for (int i = 0; i < data.find("paymentList").size(); i++) {
				if(data.find("paymentList["+i+"].paymentType").equals("") || data.find("paymentList["+i+"].paymentType").toString().equals("null")){ errCol += "paymentList[" + i + "] - paymentType / "; }
			}
			//캐시 인포만 테스트 요망 [] 빈값일때 ""에 걸리는지
			if(data.find("cashInfo").equals("") || data.get("cashInfo").toString().equals("null")){ errCol += "cashInfo / "; }
			
			//현금 결제가 있을경우에만 실행
			if(data.find("paymentList").toString().contains("01")){
				System.out.println("현금 결제 감지 (현금 결제 시에 만 유효성 검사)");
				for (int i = 0; i < data.find("cashInfo").size(); i++) {
					System.out.println("현금 List 진입 " + data.find("cashInfo["+i+"].cashNo") + data.find("cashInfo["+i+"].cashAmt"));
					if(data.find("cashInfo["+i+"].cashAmt").toString().equals("null"))		{ errCol += "cashInfo[" + i + "] - cashAmt / "; }
					if(data.find("cashInfo["+i+"].cashType").toString().equals("null"))		{ errCol += "cashInfo[" + i + "] - cashType / "; }
					if(data.find("cashInfo["+i+"].cashNo").toString().equals("null"))		{  errCol += "cashInfo[" + i + "] - cashNo / ";  }
					if(data.find("cashInfo["+i+"].cashAppNo").toString().equals("null"))	{ errCol += "cashInfo[" + i + "] - cashAppNo / "; }
					if(data.find("cashInfo["+i+"].cashDate").toString().equals("null"))		{ errCol += "cashInfo[" + i + "] - cashDate / "; }
				}
			}
			
			
			if(data.get("cardInfo").toString().equals("null")){ errCol += "cardInfo / "; }
			
			//카드 결제가 있을경우에만 실행
			if(data.find("paymentList").toString().contains("02")){
				System.out.println("카드 결제 감지 (카드 결제 시에 만 유효성 검사)");
				for (int i = 0; i < data.find("cardInfo").size(); i++) {
					if(data.find("cardInfo["+i+"].cardAmt").toString().equals("null"))		{ errCol += "cardInfo[" + i + "] - cardAmt / "; }
					if(data.find("cardInfo["+i+"].cardInstallment").toString().equals("null"))	{ errCol += "cardInfo[" + i + "] - cardInstallment / "; }
					if(data.find("cardInfo["+i+"].cardAppNo").toString().equals("null"))		{ errCol += "cardInfo[" + i + "] - cardAppNo / "; }
					if(data.find("cardInfo["+i+"].cardAffNo").toString().equals("null"))		{ errCol += "cardInfo[" + i + "] - cardAffNo / "; }
					if(data.find("cardInfo["+i+"].cardDate").toString().equals("null"))		{ errCol += "cardInfo[" + i + "] - cardDate / "; }
					if(data.find("cardInfo["+i+"].cardIcom").toString().equals("null"))		{ errCol += "cardInfo[" + i + "] - cardIcom / "; }
					if(data.find("cardInfo["+i+"].cardPcom").toString().equals("null"))		{ errCol += "cardInfo[" + i + "] - cardPcom / "; }
					if(data.find("cardInfo["+i+"].cardNo").toString().equals("null"))			{ errCol += "cardInfo[" + i + "] - cardNo / "; }
				}
			}
			
			
			if(data.find("payInfo").equals("") || data.get("payInfo").toString().equals("null")){ errCol += "payInfo / "; }
			
			//모바일 결제가 있을경우에만 실행
			if(data.find("paymentList").toString().contains("03")){
				System.out.println("모바일 결제 감지 (모바일 결제 시에 만 유효성 검사)");
				for (int i = 0; i < data.find("payInfo").size(); i++) {
					if(data.find("payInfo["+i+"].payAmt").toString().equals("null"))			{ errCol += "payInfo[" + i + "] - payAmt / "; }
					if(data.find("payInfo["+i+"].payInstallment").toString().equals("null"))	{ errCol += "payInfo[" + i + "] - payInstallment / "; }
					if(data.find("payInfo["+i+"].payAppNo").toString().equals("null"))		{ errCol += "payInfo[" + i + "] - payAppNo / "; }
					if(data.find("payInfo["+i+"].payAffNo").toString().equals("null"))		{ errCol += "payInfo[" + i + "] - payAffNo / "; }
				}
			}
			
			if(data.get("pointType").toString().equals("null")){ errCol += "pointType / "; }
			if(data.get("pointInfo").toString().equals("null")){ errCol += "pointInfo / "; }
			
			//포인트 조회 및 결제가 있을경우에만 실행
			if(data.find("paymentList").toString().contains("04")){
				System.out.println("포인트 감지 (포인트 적립,사용 시에 만 유효성 검사)");
				for (int i = 0; i < data.find("pointInfo").size(); i++) {
					if(data.find("pointInfo["+i+"].pointAmt").toString().equals("null"))		{ errCol += "pointInfo[" + i + "] - pointAmt / "; }
					if(data.find("pointInfo["+i+"].pointIcom").toString().equals("null"))		{ errCol += "pointInfo[" + i + "] - pointIcom / "; }
					if(data.find("pointInfo["+i+"].pointNo").toString().equals("null"))		{ errCol += "pointInfo[" + i + "] - pointNo / "; }
					if(data.find("pointInfo["+i+"].pointGet").toString().equals("null"))		{ errCol += "pointInfo[" + i + "] - pointGet / "; }
					if(data.find("pointInfo["+i+"].pointOper").toString().equals("null"))		{ errCol += "pointInfo[" + i + "] - pointOper / "; }
				}
			}
			
			
			if(data.get("couponInfo").toString().equals("null")){ errCol += "couponInfo / "; }
			
			//포인트 조회 및 결제가 있을경우에만 실행
			if(data.find("paymentList").toString().contains("04")){
				System.out.println("포인트 감지 (포인트 적립,사용 시에 만 유효성 검사)");
				for (int i = 0; i < data.find("couponInfo").size(); i++) {
					if(data.find("couponInfo["+i+"].couponAmt").toString().equals("null"))		{ errCol += "couponInfo[" + i + "] - couponAmt / "; }
					if(data.find("couponInfo["+i+"].couponType").toString().equals("null"))		{ errCol += "couponInfo[" + i + "] - couponType / "; }
					if(data.find("couponInfo["+i+"].couponNo").toString().equals("null"))			{ errCol += "couponInfo[" + i + "] - couponNo / "; }
					if(data.find("couponInfo["+i+"].couponCashYN").toString().equals("null"))		{ errCol += "couponInfo[" + i + "] - couponCashYN / "; }
				}
			}
			
			
			
			System.out.println("RCP01 JSON 유효성 검사 종료");
			System.out.println("■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■");
			
			
			System.out.println(errCol);
			
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return errCol;
	}   
	
	
	
	
}
