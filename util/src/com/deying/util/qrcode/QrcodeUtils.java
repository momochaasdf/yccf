package com.deying.util.qrcode;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import javax.imageio.ImageIO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.LuminanceSource;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.HybridBinarizer;

/**
 * @author wangxj
 * 
 */
public class QrcodeUtils {
	
	private static final Logger LOG = LoggerFactory.getLogger(QrcodeUtils.class);

	private static final int WIDTH = 80;
	private static final int HEIGHT = 80;
	

	/**
	 * 生成二维码
	 */
	public static void encode(String content, String path) {
		encode(content, path, WIDTH, HEIGHT);
	}
	
	/**
	 * 生成二维码
	 */
	public static void encode(String content, String path, int width, int height) {
		try {
			BitMatrix byteMatrix = new MultiFormatWriter().encode(
					new String(content.getBytes("UTF-8"), "iso-8859-1"), 
					BarcodeFormat.QR_CODE,
					width, height);
			File file = new File(path);
			if (!file.getParentFile().exists())
				file.getParentFile().mkdirs();
			MatrixToImageWriter.writeToFile(byteMatrix, "png", file);
		} catch (UnsupportedEncodingException e) {
			LOG.error("Encode qrcode error.",e);
		} catch (WriterException e) {
			LOG.error("Encode qrcode error.",e);
		} catch (IOException e) {
			LOG.error("Encode qrcode error.",e);
		}
	}

	/**
	 * 解析二维码
	 */
	public static String decode(String path) {
		File file = new File(path);
		BufferedImage image;
		String resultStr = null;
		try {
			image = ImageIO.read(file);
			if (image == null) 
				throw new NullPointerException("Path " + path + " img is null.");
			LuminanceSource source = new BufferedImageLuminanceSource(image);
			BinaryBitmap bitmap = new BinaryBitmap(new HybridBinarizer(source));
			
			Map<DecodeHintType,String> hints = new HashMap<DecodeHintType,String>();
			hints.put(DecodeHintType.CHARACTER_SET, "UTF-8");
			Result result = new MultiFormatReader().decode(bitmap, hints);
			resultStr = result.getText();
		} catch (IOException e) {
			LOG.error("Decode qrcode error.",e);
		} catch (ReaderException e) {
			LOG.error("Decode qrcode error.",e);
		}
		return resultStr;
	}
	
	public static void main(String[] args) {
		String str = "CN:男;COP:公司;ZW:职务";// 二维码内容
		String path = "E:/qrcode/qr/hwy.png";
		encode(str, path);
		System.out.println(decode(path));

	}
	
}
