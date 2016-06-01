package com.deying.util.command;

/**
 * @author wangxj
 * 
 */
public class ClosureCompiler {
	
	private String compilerPath = "E:\\soft-source\\closure-compiler\\compiler.jar";
	private String outPath = "D:\\workspace\\Yuyue_F";
	private String[] files = {
		"D:\\workspace\\Yuyue_F"
	};

	public static void main(String[] args) {
		ClosureCompiler c = new ClosureCompiler();
		StringBuffer sb = new StringBuffer();
		sb.append("java -jar ").append(c.compilerPath).append(" --summary_detail_level 3 ");
		for(int i = 0; i < c.files.length; i++) {
			sb.append(" --js ").append(c.files[i]);
		}
		sb.append(" --js_output_file ").append(c.outPath);
		Command.exec(sb.toString());
	}

}
