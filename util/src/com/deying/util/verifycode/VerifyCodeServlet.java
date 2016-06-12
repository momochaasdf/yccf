package com.deying.util.verifycode;
import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class VerifyCodeServlet extends HttpServlet {

	private static final Logger LOGGER = LoggerFactory.getLogger(VerifyCodeServlet.class);
	
	private static final long serialVersionUID = 1L;

	public VerifyCodeServlet() {
        super();
    }

    public void destroy() {
        super.destroy();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	LOGGER.info("<==Session <<{}>>.Begin get the VerifyCode...", request.getSession().getId());
    	// 设置浏览器不缓存本页
        response.setHeader("Cache-Control", "no-cache");
        // 生成验证码，写入用户session
        String verifyCode = VerifyCode.generateTextCode(VerifyCode.TYPE_UPPER_ONLY, 4, null);
        LOGGER.info("<==Session <<{}>>.Geted the VerifyCode <<{}>>...", new String[]{request.getSession().getId(),verifyCode});
        request.getSession().setAttribute("verifyCode", verifyCode);
        // 输出验证码给客户端
        response.setContentType("image/jpeg");
        BufferedImage bim = VerifyCode.generateImageCode(verifyCode, 80, 26, 3, true, Color.WHITE, Color.BLACK, null);
        ImageIO.write(bim, "JPEG", response.getOutputStream());
        LOGGER.info("==>Session <<{}>>.End get the VerifyCode...", request.getSession().getId());
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doGet(request, response);
    }

    public void init() throws ServletException {
    	
    }

}