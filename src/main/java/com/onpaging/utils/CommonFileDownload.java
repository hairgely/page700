package com.onpaging.utils;

import java.io.OutputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.stereotype.Service;

/**
 * 엑셀 파일 다운로드 처리
 * 
 * @version : 1.0
 * @author :
 */
@Service
public class CommonFileDownload {
	
	/**
	 * 엑셀 파일 작성
	 * 
	 * @param parameterMap
	 * @param multipart
	 * @return
	 * @throws Exception
	 */
    public void makeExcel(HttpServletResponse response, String[] key, String[] name, List<Map<String, Object>> dataList, String fileNm) throws Exception {
		
        // 엑셀 작성
        Workbook workbook = makeExcel(key, name, dataList);
        
        OutputStream out = null;
        
        try {

            String fileName = new String(fileNm.getBytes("KSC5601"),"8859_1");
            
            response.setHeader("Content-Disposition", "attachment;filename=" + fileName + ".xls");
            response.setHeader("Content-Transfer-Encoding", "binary");
            out = response.getOutputStream();
            
            workbook.write(out);

            out.flush();
        } catch (Throwable t) {
            t.printStackTrace();
        } finally {
            
            if (out != null) {
                out.close();
            }
        }
	}
    
    private Workbook makeExcel(String[] key, String[] name, List<Map<String, Object>> dataList) throws Exception {
        Workbook workbook = new HSSFWorkbook();
        Sheet sheet = workbook.createSheet();
        
        // 헤더 작성
        {
            Row row = sheet.createRow(0);
            
            CellStyle style = workbook.createCellStyle();
            style.setFillForegroundColor(IndexedColors.AQUA.getIndex());
            style.setFillPattern(CellStyle.SOLID_FOREGROUND);
            
            style.setAlignment(CellStyle.ALIGN_CENTER);
            style.setBorderTop(CellStyle.BORDER_THIN);
            style.setBorderBottom(CellStyle.BORDER_THIN);
            style.setBorderLeft(CellStyle.BORDER_THIN);
            style.setBorderRight(CellStyle.BORDER_THIN);
            
            for (int i = 0; i < name.length; i++) {
                
                Cell cell = row.createCell(i);
                cell.setCellStyle(style);
                cell.setCellValue(name[i]);
            }
        }
        
        CellStyle style = workbook.createCellStyle();
        style.setBorderTop(CellStyle.BORDER_THIN);
        style.setBorderBottom(CellStyle.BORDER_THIN);
        style.setBorderLeft(CellStyle.BORDER_THIN);
        style.setBorderRight(CellStyle.BORDER_THIN);
        
        for (int i = 0; i < dataList.size(); i++) {
            Map<String, Object> dataMap = dataList.get(i);
            
            Row row = sheet.createRow(i + 1);
            
            for (int j = 0; j < key.length; j++) {
                Cell cell = row.createCell(j);
                cell.setCellStyle(style);
                cell.setCellValue((String)dataMap.get(key[j]));
            }
        }
        
        // 셀너비 자동 조절
        for (int i = 0; i < key.length; i++) {
            sheet.autoSizeColumn(i);
        }
        
        return workbook;
    }
    
    
    
}