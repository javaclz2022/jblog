package com.javaex.util;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import com.javaex.vo.FileVo;

public class FileUtil {

	public FileVo fileUpload(MultipartFile file) {
		System.out.println("[FileUtil.fileUpload()]");
		
		//os별로 이미지 저장경로를 다르게 설정
		String os = System.getProperty("os.name").toLowerCase();
		String saveDir = "";
		
		if (os.contains("win")) { 
			saveDir = "C:\\javaStudy\\upload";
		}else {
			saveDir = "/upload";
		}
		
		// 원파일이름
		String orgName = file.getOriginalFilename();

		// 확장자
		String exName = orgName.substring(orgName.lastIndexOf("."));

		// 저장파일이름
		String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;

		//파일패스 생성
		String filePath = saveDir + File.separator + saveName;
		
		
		//파일 사이즈
		long fileSize = file.getSize();
		
		
		// 파일업로드
		try {
			byte[] fileData = file.getBytes();
			OutputStream out = new FileOutputStream(filePath);
			BufferedOutputStream bout = new BufferedOutputStream(out);

			bout.write(fileData);

			bout.close();
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		FileVo fileVo = new FileVo(orgName, exName, saveName, filePath, fileSize);
		
		return fileVo;
		
	}
}
