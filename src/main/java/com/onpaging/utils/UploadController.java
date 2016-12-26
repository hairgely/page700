package com.onpaging.utils;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
@RequestMapping("/upload")
public class UploadController {

	/** 폴더 - 이미지 업로드 파일 루트 */
	@Value("#{config['folder.root.image.upload']}") 
	public String FOLDER_ROOT_IMAGE_UPLOAD;
	/** 폴더 - 이미지 업로드 파일 URL */
	@Value("#{config['folder.root.image.upload.url']}") 
	public String FOLDER_ROOT_IMAGE_UPLOAD_URL;
	/** 폴더 - 게시판 업로드 파일 루트 */
	@Value("#{config['folder.root.image.edit']}") 
	public String FOLDER_ROOT_IMAGE_EDITOR;
	/** 폴더 - 게시판 업로드 파일 URL */
	@Value("#{config['folder.root.image.edit.url']}") 
	public String FOLDER_ROOT_IMAGE_EDITOR_URL;

	@ResponseBody
	@RequestMapping("/image")
	public void writeImage(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {

		String CKEditorFuncNum = request.getParameter("CKEditorFuncNum");

		Map<String,Object> map = saveImage(request, response);

//		String message = (String) map.get("message");
//		String fileSizeReturn = (String) map.get("fileSizeReturn");
//		String fileNameReturn = (String) map.get("fileNameReturn");
		String fileUrlReturn = (String) map.get("message");
		
		PrintWriter out = response.getWriter();
		out.write("<script>window.parent.CKEDITOR.tools.callFunction('" + CKEditorFuncNum + "', '" + FOLDER_ROOT_IMAGE_EDITOR_URL+fileUrlReturn + "', '저장하였습니다.');</script>");
		out.close();
	}
	
	@ResponseBody
	@RequestMapping("/addImage")
	public Map<String,Object> addImage(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		Map<String,Object> map = saveImage(request, response);
		String fileUrlReturn = (String) map.get("fileUrlReturn");
		
		if(StringUtils.isNotEmpty(fileUrlReturn)){
			fileUrlReturn = FOLDER_ROOT_IMAGE_UPLOAD_URL+fileUrlReturn;
			map.put("fileUrlReturn", fileUrlReturn);
		}
		
		return map;
	}
	
	public Map<String,Object> saveImage(HttpServletRequest request, HttpServletResponse response) throws IllegalStateException, IOException{
		
		String message = "";
		String fileSizeReturn = "";
		String fileNameReturn = "";
		String fileUrlReturn = "";
		
		MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
		List<MultipartFile> multipartFileList = multiRequest.getFiles("upload");

		if(multipartFileList.size() > 5){
			message = "파일은 최대 5개까지 업로드 가능합니다.";
		}

		if(StringUtils.isEmpty(message)){

			//파일 용량 체크
			if(multipartFileList.size() != 0){
				for (MultipartFile mf : multipartFileList) {
					long fileSize = mf.getSize();
					fileSizeReturn = fileSize+"";
					if(fileSize > 10240000){
						message = "10MB 이상의 파일은 업로드 할 수 없습니다.";
					}else if(fileSize <= 0){
						message = "용량이 0인 파일은 업로드 할 수 없습니다.";
					}
				}
			}

			if(StringUtils.isEmpty(message)){
				if(multipartFileList.size() != 0){

					StringBuffer sb = new StringBuffer();
					if(StringUtils.isNotEmpty(request.getParameter("CKEditorFuncNum"))){
						sb.append(FOLDER_ROOT_IMAGE_EDITOR);
					}else{
						sb.append(FOLDER_ROOT_IMAGE_UPLOAD);
					}
					/*sb.append("/");
					sb.append(bean.getNoticeId());*/
					String filePath = sb.toString();
					File f = new File(filePath);
					if(!f.exists()){
						f.mkdirs();
					}

					for (MultipartFile mf : multipartFileList) {
						String fileName = mf.getOriginalFilename().trim();
						fileNameReturn = fileName;
						//확장자 체크
						int pathPoint = fileName.lastIndexOf(".");
						String fileNameFirst = fileName.substring(0,pathPoint);
						String filePoint = fileName.substring(pathPoint+1,fileName.length());
						if(!StringUtils.equalsIgnoreCase(filePoint, "png")
								&& !StringUtils.equalsIgnoreCase(filePoint, "jpg")
								&& !StringUtils.equalsIgnoreCase(filePoint, "gif")
								){
							message = "png, jpg, gif 만 업로드 가능합니다.";
							break;
						}
						sb.setLength(0);
						sb.append(fileNameFirst);
						sb.append("_");
						sb.append(getDateFormatToday());
						sb.append(".");
						sb.append(filePoint);

						File saveFile = new File(filePath,sb.toString());
						mf.transferTo(saveFile);

						fileUrlReturn = sb.toString();
						/*FileBean fBean = new FileBean();
						fBean.setFileName(fileName);
						fBean.setRealPath(sb.toString());
						fBean.setNoticeId(bean.getNoticeId());

						noticeService.insertFileList(fBean);*/
					}
				}
			}
		}
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("message", message);

		resultMap.put("fileSizeReturn", fileSizeReturn);
		resultMap.put("fileNameReturn", fileNameReturn);
		resultMap.put("fileUrlReturn", fileUrlReturn);
		
		return resultMap;
	}

	/*private boolean deleteDirectory(File path) {
		if(!path.exists()) {
			return false;
		}

		File[] files = path.listFiles();
		for (File file : files) {
			if (file.isDirectory()) {
				deleteDirectory(file);
			} else {
				file.delete();
			}
		}

		return path.delete();
	}*/
	
	private String getDateFormatToday(){
		return new SimpleDateFormat("yyyyMMdd_HHmmssSSS").format(Calendar.getInstance().getTime());
	}

}
