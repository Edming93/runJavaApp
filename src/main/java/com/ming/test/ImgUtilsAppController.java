package com.ming.test;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ImgUtilsAppController {
	@Value("${img.util.path}")
	private String JAR_PATH;	
	
	@GetMapping("/runJavaApp")
	public void runJavaApp() {

        ProcessBuilder processBuilder = new ProcessBuilder("java","-jar",JAR_PATH + "imgUtils1.8.jar");

		try {
            // jar 파일 실행
			processBuilder.start();
			System.out.println("성공");
        } catch (IOException e) {
            e.printStackTrace();
        }
	}
}
