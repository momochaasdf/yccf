package com.deying.util.command;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * @author wangxj
 * 
 */
public class Command {
	
	private static final Runtime rt = Runtime.getRuntime();

	public static void exec(String command) {
		Process proc = null;
		BufferedReader reader = null;
		try {
			System.out.println("命令信息===开始===" + command);
			proc = rt.exec(command);
			InputStreamReader isr = new InputStreamReader(proc.getErrorStream());
			reader = new BufferedReader(isr);
			String line = null;
			while((line = reader.readLine()) != null) {
				System.out.println(line);
			}
			System.out.println("==========正常信息和错误信息分隔线==========");
			isr = new InputStreamReader(proc.getInputStream());
			reader = new BufferedReader(isr);
			while((line = reader.readLine()) != null) {
				System.out.println(line);
			}
			int exitVal = proc.waitFor();  
            System.out.println("Process exitValue: " + exitVal);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}finally {
			if(reader != null)
				try {
					reader.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
		}
	}
	
}
