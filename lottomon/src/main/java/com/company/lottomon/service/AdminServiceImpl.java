package com.company.lottomon.service;

import com.company.lottomon.common.Constant.*;
import com.company.lottomon.mapper.AdminDAO;
import com.company.lottomon.model.LottoData;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.List;


@Service("adminService")
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminDAO adminDAO;


	@Override
	public ServiceResult insertLottoData(MultipartFile excelFile) {
		try {
			HSSFWorkbook wb = new HSSFWorkbook(excelFile.getInputStream());
			List<LottoData> lottodataList = new ArrayList<>();

			int rowIdx = 0;
			int columnIdx = 0;

			HSSFSheet sheet = wb.getSheetAt(0);

			int rows = sheet.getPhysicalNumberOfRows();
			for (rowIdx = 0; rowIdx < rows; rowIdx++) {
				HSSFRow row = sheet.getRow(rowIdx);
				if(row != null){
					int cells = row.getPhysicalNumberOfCells();

					LottoData ld= new LottoData();

					for (columnIdx = 0; columnIdx < cells; columnIdx++){
						HSSFCell cell = row.getCell(columnIdx);
						//헤더 글자로 해당 파일이 맞는지 확인
						if(rowIdx == 0 && columnIdx == 0 ){
							String headerText = cell.getStringCellValue();
							if(!headerText.equals("회차별 추첨결과")){
								return ServiceResult.NOT_MATCHE;
							}else{
								System.out.println("SUCCESS MATCHE FILE");
							}
						}

						if(rowIdx > 2 && columnIdx > 0) {
							switch (columnIdx) {
								case 1:
									ld.setDrwNo((long)cell.getNumericCellValue());
									break;
								case 2:
									ld.setDwr_dt(cell.getStringCellValue());
									break;
								case 3:
									ld.setPlaceNo1_cnt((int) cell.getNumericCellValue());
									break;
								case 4:
									ld.setPlaceNo1_price(cell.getStringCellValue().replaceAll(",", "").replaceAll("원", ""));
									break;
								case 5:
									ld.setPlaceNo2_cnt((int) cell.getNumericCellValue());
									break;
								case 6:
									ld.setPlaceNo2_price(cell.getStringCellValue().replaceAll(",", "").replaceAll("원", ""));
									break;
								case 7:
									ld.setPlaceNo3_cnt((int) cell.getNumericCellValue());
									break;
								case 8:
									ld.setPlaceNo3_price(cell.getStringCellValue().replaceAll(",", "").replaceAll("원", ""));
									break;
								case 9:
									ld.setPlaceNo4_cnt((int) cell.getNumericCellValue());
									break;
								case 10:
									ld.setPlaceNo4_price(cell.getStringCellValue().replaceAll(",", "").replaceAll("원", ""));
									break;
								case 11:
									ld.setPlaceNo5_cnt((int) cell.getNumericCellValue());
									break;
								case 12:
									ld.setPlaceNo5_price(cell.getStringCellValue().replaceAll(",", "").replaceAll("원", ""));
									break;
								case 13:
									ld.setDrwtNo1((int) cell.getNumericCellValue());
									break;
								case 14:
									ld.setDrwtNo2((int) cell.getNumericCellValue());
									break;
								case 15:
									ld.setDrwtNo3((int) cell.getNumericCellValue());
									break;
								case 16:
									ld.setDrwtNo4((int) cell.getNumericCellValue());
									break;
								case 17:
									ld.setDrwtNo5((int) cell.getNumericCellValue());
									break;
								case 18:
									ld.setDrwtNo6((int) cell.getNumericCellValue());
									break;
								case 19:
									ld.setBnusNo((int) cell.getNumericCellValue());
									break;
							}
						}
					}
					if(rowIdx > 2) {
						lottodataList.add(ld);
					}
				}
			}
			adminDAO.lottoDataUpdate(lottodataList);

		}catch (Exception e){
			e.printStackTrace();
		}






		return ServiceResult.SUCCESS;
	}
	
}
