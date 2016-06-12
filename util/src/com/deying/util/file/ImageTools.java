package com.deying.util.file;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.Rectangle;
import java.awt.geom.AffineTransform;
import java.awt.image.AffineTransformOp;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import javax.imageio.ImageIO;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.deying.util.data.RegularUtils;

public class ImageTools {
	
	private static final Logger LOG = LoggerFactory.getLogger(ImageTools.class);
	
	public static boolean resizeImage(String srcImg, String descImg, Integer width, 
			Integer height, boolean scale) {
		if(StringUtils.isBlank(srcImg) 
        		||  StringUtils.isBlank(descImg)) {   
        	LOG.warn("img is balnk in the method resizeImage of ImageTools.Class .");
            return false;
		}
		try {
			BufferedImage img = ImageIO.read(new FileInputStream(srcImg));
			int w = img.getWidth(),
				h = img.getHeight();
			int[] tmp = scaleSize(w, h, width, height, scale, false);
			width = tmp[0];
			height = tmp[1];
			// 生成处理后的图片存储空间
			BufferedImage newImg = new BufferedImage(width,
					height, BufferedImage.TYPE_3BYTE_BGR);
			/*AffineTransform tsf = AffineTransform.getScaleInstance(
						(double)width/w, (double)height/h);
			
			// 根据原始图片生成处理后的图片
			AffineTransformOp ato = new AffineTransformOp(tsf, null);
			newImg = ato.filter(img, null);*/
			Image imgObj = img.getScaledInstance(width, height, Image.SCALE_DEFAULT);
			Graphics2D g = newImg.createGraphics();
			g.drawImage(imgObj, 0, 0, Color.WHITE, null);
			g.dispose();
			ImageIO.write(newImg, RegularUtils.getfilePostfix(descImg), new File(descImg));
		} catch (FileNotFoundException e) {
			LOG.error("scale img error.", e);
			return false;
		} catch (IOException e) {
			LOG.error("scale img error.", e);
			return false;
		}
		return true;
	}
	
	/**
	 * 等比例缩放图片，不满足指定宽高时用白底填充图片
	 * @param srcImg
	 * @param descImg
	 * @param width
	 * @param height
	 * @return
	 */
	public static boolean fillScaleImg(String srcImg, String descImg
			, Integer width, Integer height) {
		if(StringUtils.isBlank(srcImg) 
        		||  StringUtils.isBlank(descImg)) {   
        	LOG.warn("img is balnk in the method resizeImage of ImageTools.Class .");
            return false;
		}
		try {
			BufferedImage img = ImageIO.read(new FileInputStream(srcImg));
			int w = img.getWidth(),
			h = img.getHeight();
			int[] tmp = scaleSize(w, h, width, height, true, false);
			// 生成缩放图片存储空间
			BufferedImage scaleImg = new BufferedImage(tmp[0],
					tmp[1], BufferedImage.TYPE_3BYTE_BGR);
			AffineTransform tsf = AffineTransform.getScaleInstance(
						(double)tmp[0]/w, (double)tmp[1]/h);
			AffineTransformOp ato = new AffineTransformOp(tsf, null);
			scaleImg = ato.filter(img, null);
			// 生成新图片存储空间
			BufferedImage newImg = new BufferedImage(width,
					height, BufferedImage.TYPE_3BYTE_BGR);
			Graphics g = newImg.getGraphics();
			g.setColor(Color.WHITE);
			g.fillRect(0, 0, width, height);
			int wv = (width - tmp[0])/2;
			int hv = (height - tmp[1])/2;
			g.drawImage(scaleImg, wv, hv, null);
			g.dispose();
			ImageIO.write(newImg, RegularUtils.getfilePostfix(descImg), new File(descImg));  
		} catch (FileNotFoundException e) {
			LOG.error("read img error.", e);
			return false;
		} catch (IOException e) {
			LOG.error("read img error.", e);
			return false;
		}
		return true;
	}
	
	/**
	 * 获取等比例的宽高
	 * @param originWidth
	 * @param originHeight
	 * @param width		可以为空,为null就等比例缩放
	 * @param height	可以为空,为null就等比例缩放
	 * @param scale		是否等比缩放标记
	 * @param enlarge   是否能够放大图片
	 * @return
	 */
	public static int[] scaleSize(int originWidth, int originHeight, 
			Integer width, Integer height, boolean scale, boolean enlarge) {
		int[] wh = new int[2];
		if(width == null && height == null) {
			wh[0] = originWidth;
			wh[1] = originHeight;
		}else if(width == null) {
			double scaleH = 1.0*originHeight/height;//获得图片实际高度和需要缩放的高度比
			//scaleH>1 实际高度大于要压缩的高度
			if(!enlarge && scaleH < 1) {//如果scaleH<1 即实际图片的高度小于要压缩的高度并且不需要放大图片，则图片保持不动
				wh[0] = originWidth;
				wh[1] = originHeight;
			}else {
				wh[0] = (int)(originWidth/scaleH);
				wh[1] = height;
			}
		}else if(height == null) {
			double scaleW = 1.0*originWidth/width;
			if(!enlarge && scaleW < 1) {
				wh[0] = originWidth;
				wh[1] = originHeight;
			}else {
				wh[0] = width;
				wh[1] = (int)(originHeight/scaleW);
			}
		} else if(!scale) {
			if(!enlarge && 
					(originWidth < width || originHeight < height)) {
				wh[0] = originWidth;
				wh[1] = originHeight;
			}else {
				wh[0] = width;
				wh[1] = height;
			}
		}else {
			double scaleW = 1.0*originWidth/width,
				scaleH = 1.0*originHeight/height,
				newScale;
			if(scaleW > scaleH)
				newScale = scaleW;
			else
				newScale = scaleH;
			if(!enlarge && newScale < 1) {
				wh[0] = originWidth;
				wh[1] = originHeight;
			}else {
				wh[0] = (int)(originWidth/newScale);
				wh[1] = (int)(originHeight/newScale);
			}
		}
		return wh;
	}
	
	public static com.deying.util.file.Image 
					getImageInfo(File fileImage) throws Exception {
		com.deying.util.file.Image image = new com.deying.util.file.Image();
		BufferedImage bufferImage;
		bufferImage = ImageIO.read(fileImage);
		image.setHeight(bufferImage.getHeight());
		image.setWidth(bufferImage.getWidth());
		image.setSize((int) (fileImage.length() / 1024));
		return image;
	}

	public static void cutImage(File image, String outputFile, Rectangle rect)
			throws IOException {
		cutImage(image, outputFile, rect.x, rect.y, rect.width, rect.height);
	}
	
	public static void cutImage(File image, String outputFile, int x, int y, int width, int height)
			throws IOException {
		BufferedImage scrBuffer = ImageIO.read(image);
		BufferedImage desBuffer = scrBuffer.getSubimage(x, y, width, height);
		ImageIO.write(desBuffer, RegularUtils.getfilePostfix(outputFile)
				, new File(outputFile));
	}
	
	public static void mergeImages(String source1, String source2, String des, String type, int x, int y, int width, int height) throws Exception {
		BufferedImage img1 = ImageIO.read(new File(source1));
		BufferedImage img2 = ImageIO.read(new File(source2));
		Graphics g = img1.getGraphics();
		g.drawImage(img2, x, y, width, height, null);
		g.dispose();
		ImageIO.write(img1, type, new File(des));  
	}
	
	
	public static boolean resizeImageNew(String srcImg, String descImg, Integer width, 
			Integer height, boolean scale) {
		if(StringUtils.isBlank(srcImg) 
        		||  StringUtils.isBlank(descImg)) {   
        	LOG.warn("img is balnk in the method resizeImage of ImageTools.Class .");
            return false;
		}
		try {
			BufferedImage img = ImageIO.read(new FileInputStream(srcImg));
			int w = img.getWidth(),
				h = img.getHeight();
			int[] tmp = scaleSize(w, h, width, height, scale, false);
			width = tmp[0];
			height = tmp[1];
			// 生成处理后的图片存储空间
			BufferedImage newImg = new BufferedImage(width,
					height, BufferedImage.TYPE_3BYTE_BGR);
			/*AffineTransform tsf = AffineTransform.getScaleInstance(
						(double)width/w, (double)height/h);
			
			// 根据原始图片生成处理后的图片
			AffineTransformOp ato = new AffineTransformOp(tsf, null);
			newImg = ato.filter(img, null);*/
			Image imgObj = img.getScaledInstance(width, height, Image.SCALE_DEFAULT);
			Graphics2D g = newImg.createGraphics();
			g.drawImage(imgObj, 0, 0, Color.WHITE, null);
			g.dispose();
			ImageIO.write(newImg, RegularUtils.getfilePostfix(descImg), new File(descImg));
		} catch (FileNotFoundException e) {
			LOG.error("scale img error.", e);
			return false;
		} catch (IOException e) {
			LOG.error("scale img error.", e);
			return false;
		}
		return true;
	}
	
	public static void main(String[] args) throws Exception {
		long time = System.currentTimeMillis();
		for(int i = 0; i < 100; i++) {
			resizeImage("e:/zigentu.jpg", "e:/zigentu-back.jpg", 400, 400, false);
		}
		System.out.println("time = " + (System.currentTimeMillis() - time));
		
		/*BufferedImage  bufferedImage = ImageIO.read(new File("e:/loudong.jpg"));
      BufferedImage newBufferedImage = new BufferedImage(500,
            500, BufferedImage.TYPE_3BYTE_BGR);
      Image img = bufferedImage.getScaledInstance(500, 500, Image.SCALE_DEFAULT);
      newBufferedImage.createGraphics().drawImage(img, 0, 0, Color.WHITE, null);
      ImageIO.write(newBufferedImage, "jpg", new File("e:/loudong-back.jpg"));*/
	}
	
	
	/**
	 * 
	 * 用一句话说明这个方法做什么 
	 * @param srcImg 原图的地址
	 * @param descImg 
	 * @param width
	 * @param hegight
	 * @throws Exception
	 * @author 1
	 * @create 2015-12-17 下午3:20:52
	 */
	public static boolean resizeImgsRequest(String srcImg, String descImg,Integer width ,Integer height){
		try {
			BufferedImage img = ImageIO.read(new FileInputStream(srcImg));
//			int w = img.getWidth();
//			int h = img.getHeight();
			BufferedImage newImg = new BufferedImage(width,
					height, BufferedImage.TYPE_3BYTE_BGR);
			Image imgObj = img.getScaledInstance(width, height, Image.SCALE_DEFAULT);
			Graphics2D g = newImg.createGraphics();
			g.drawImage(imgObj, 0, 0, Color.WHITE, null);
			g.dispose();
			ImageIO.write(newImg, RegularUtils.getfilePostfix(descImg), new File(descImg));
			
		}catch (FileNotFoundException e) {
			e.printStackTrace();
			return false;
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
}
