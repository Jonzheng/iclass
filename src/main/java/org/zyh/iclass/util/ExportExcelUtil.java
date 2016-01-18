package org.zyh.iclass.util;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRichTextString;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.zyh.iclass.model.Student;

public class ExportExcelUtil {
	/**
	 *   导出Excel表格（班级学生信息）
	 * @param title Sheet的标题（不是文件名）
	 * @param stus 要输出的List
	 * @param out 标准输出流
	 * @author Jonzheng
	 */
	@SuppressWarnings("resource")
	public static void exportExcel(String title,List<Student> stus,OutputStream out) {
		 // 声明一个工作薄  
        HSSFWorkbook workbook = new HSSFWorkbook();  
        // 生成一个表格  表格名称
        HSSFSheet sheet = workbook.createSheet(title);  
        // 设置表格默认列宽度为15个字节  
        sheet.setDefaultColumnWidth(15);
        // 生成一个样式  
        HSSFCellStyle style = workbook.createCellStyle();
        style.setBorderBottom(HSSFCellStyle.BORDER_THIN);  
        style.setBorderLeft(HSSFCellStyle.BORDER_THIN);  
        style.setBorderRight(HSSFCellStyle.BORDER_THIN);  
        style.setBorderTop(HSSFCellStyle.BORDER_THIN);  
        style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
        // 生成一个字体  
        HSSFFont font = workbook.createFont();  
        font.setColor(HSSFColor.VIOLET.index);  
        font.setFontHeightInPoints((short) 12);  
        font.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);  
        // 把字体应用到当前的样式  
        style.setFont(font);  
        
        // 生成并设置另一个样式  
        HSSFCellStyle style2 = workbook.createCellStyle();  
        style2.setBorderBottom(HSSFCellStyle.BORDER_THIN);  
        style2.setBorderLeft(HSSFCellStyle.BORDER_THIN);  
        style2.setBorderRight(HSSFCellStyle.BORDER_THIN);  
        style2.setBorderTop(HSSFCellStyle.BORDER_THIN);  
        style2.setAlignment(HSSFCellStyle.ALIGN_CENTER);  
        style2.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);  
        // 生成另一个字体  
        HSSFFont font2 = workbook.createFont();  
        font2.setBoldweight(HSSFFont.BOLDWEIGHT_NORMAL);  
        // 把字体应用到当前的样式  
        style2.setFont(font2);  
        
        // 产生表格标题行  
        String[] headers =  { "学号", "姓名", "手机", "短号", "QQ", "宿舍" };  
        HSSFRow row = sheet.createRow(0);  
        for (int i = 0; i < headers.length; i++) {  
            HSSFCell cell = row.createCell(i);
            cell.setCellStyle(style);  
            cell.setCellValue(new HSSFRichTextString(headers[i]));  
        }  
        List<String> textValue = new ArrayList<>();
        int index = 0;
        for (Student stu : stus) {
        	index++;
        	// 每个学生生成一个新行
        	row = sheet.createRow(index);
        	// 每行填写学生信息
        	textValue.clear();
        	textValue.add(stu.getStudentId());
        	textValue.add(stu.getName());
        	textValue.add(stu.getMobile());
        	textValue.add(stu.getShortMobile());
        	textValue.add(stu.getQqNum());
        	textValue.add(stu.getDoorplate());
    	    for (int i = 0; i < textValue.size(); i++) {
		        HSSFCell cell = row.createCell(i);  
		        cell.setCellStyle(style2);  
		        cell.setCellValue(new HSSFRichTextString(textValue.get(i))); 
    	    }
        }
        try {
			workbook.write(out);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
