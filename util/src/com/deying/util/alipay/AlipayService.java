package com.deying.util.alipay;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Node;
import org.dom4j.io.SAXReader;


/* *
 *类名：AlipayService
 *功能：支付宝各接口构造类
 *详细：构造支付宝各接口请求参数
 *版本：3.2
 *修改日期：2011-03-17
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayService {
    
    /**
     * 支付宝提供给商户的服务接入网关URL(新)
     */
    private static final String ALIPAY_GATEWAY_NEW = "https://mapi.alipay.com/gateway.do?";

    /**
     * 构造即时到账批量退款有密接口
     * @param sParaTemp 请求参数集合
     * @return 支付宝返回表单提交HTML信息
     * @throws Exception 
     */
    public static String refund_fastpay_by_platform_pwd(String type,Map<String, String> sParaTemp,String batch_no) throws Exception {
    	Date dt=new Date();//如果不需要格式,可直接用dt,dt就是当前系统时间
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置显示格式
//		DateFormat df1 = new SimpleDateFormat("yyyyMMddHHmmss");//设置显示格式
		String nowTime = df.format(dt);
		
    	//增加基本配置
    	sParaTemp.put("seller_email", "");
		sParaTemp.put("seller_user_id", AlipayConfig.partner);
        sParaTemp.put("batch_no", batch_no);
        sParaTemp.put("batch_num", "1");
        sParaTemp.put("refund_date",nowTime);
        sParaTemp.put("service", "refund_fastpay_by_platform_pwd");
        sParaTemp.put("partner", AlipayConfig.partner);
        if(type.equals("0")){
        	sParaTemp.put("notify_url", AlipayConfig.notify_url);
        }else if(type.equals("1")){
        	sParaTemp.put("notify_url", AlipayConfig.notify_urlJf);
        }
        sParaTemp.put("_input_charset", AlipayConfig.input_charset);
        
        String strButtonName="退款";
        return AlipaySubmit.buildForm(sParaTemp, ALIPAY_GATEWAY_NEW,"post",strButtonName);
    }

    /**
     * 用于防钓鱼，调用接口query_timestamp来获取时间戳的处理函数
     * 注意：远程解析XML出错，与服务器是否支持SSL等配置有关
     * @return 时间戳字符串
     * @throws IOException
     * @throws DocumentException
     * @throws MalformedURLException
     */
    public static String query_timestamp() throws MalformedURLException,
                                                        DocumentException, IOException {

        //构造访问query_timestamp接口的URL串
        String strUrl = ALIPAY_GATEWAY_NEW + "service=query_timestamp&partner=" + AlipayConfig.partner;
        StringBuffer result = new StringBuffer();

        SAXReader reader = new SAXReader();
        Document doc = reader.read(new URL(strUrl).openStream());

        List<Node> nodeList = doc.selectNodes("//alipay/*");

        for (Node node : nodeList) {
            // 截取部分不需要解析的信息
            if (node.getName().equals("is_success") && node.getText().equals("T")) {
                // 判断是否有成功标示
                List<Node> nodeList1 = doc.selectNodes("//response/timestamp/*");
                for (Node node1 : nodeList1) {
                    result.append(node1.getText());
                }
            }
        }

        return result.toString();
    }
    
    /**
	 * 功能：构造请求URL（GET方式请求）
	 * @param partner 合作身份者ID
	 * @param email 付款支付宝账号
	 * @param account_name 付款人真实姓名，参数email对应的真实姓名
	 * @param notify_url 交易过程中服务器通知的页面 要用 以http开格式的完整路径，不允许加?id=123这类自定义参数
	 * @param pay_date 付款当天日期，获取当天日期，格式：年[4位]月[2位]日[2位]，如：20100801
	 * @param batch_no 商家网站里的批次号，保证其唯一性，格式：当天日期[8位]+序列号[3至16位]，如：201008010000001
	 * @param batch_num 付款笔数，即参数detail_data的值中，“|”字符出现的数量加1，最大支持1000笔（即“|”字符出现的数量999个）
	 * @param batch_fee 付款总金额，即参数detail_data的值中所有金额的总和
	 * @param detail_data 付款详细数据
	 * @param input_charset 字符编码格式 目前支持 GBK 或 utf-8
	 * @param key 安全校验码
	 * @param sign_type 加密方式 不需修改
	 * @return 请求URL
	 */
	public static String CreateUrl(String partner,
			String email,
			String account_name,
			String notify_url,
			String pay_date,
			String batch_no,
			String batch_num,
			String batch_fee,
			String detail_data,
            String input_charset,
            String key,
            String sign_type){
		Map sPara = new HashMap();
		sPara.put("_input_charset", input_charset);
		sPara.put("account_name", account_name);
		sPara.put("batch_fee", batch_fee);
		sPara.put("batch_no", batch_no);
		sPara.put("batch_num", batch_num);
		sPara.put("detail_data", detail_data);
		sPara.put("email", email);
		sPara.put("notify_url", notify_url);
		sPara.put("partner", partner);
		sPara.put("pay_date", pay_date);
		sPara.put("service","batch_trans_notify");
		
		String strUrl = "https://www.alipay.com/cooperate/gateway.do?";
		Map sParaNew = AlipayBase.ParaFilter(sPara); //除去数组中的空值和签名参数
		String mysign = AlipayBase.BuildMysign(sParaNew, key);//生成签名结果
		//把数组所有元素，按照“参数=参数值”的模式用“&”字符拼接成字符串
		String arg = AlipayBase.CreateLinkString_urlencode(sParaNew, input_charset);
		//得到请求URL
		strUrl = strUrl + arg + "sign=" + mysign + "&sign_type=" + sign_type;
		
		return strUrl;
	}
	
	/**
	 * 功能：构造Post表单提交HTML（POST方式请求）
	 * @param partner 合作身份者ID
	 * @param email 付款支付宝账号
	 * @param account_name 付款人真实姓名，参数email对应的真实姓名
	 * @param notify_url 交易过程中服务器通知的页面 要用 以http开格式的完整路径，不允许加?id=123这类自定义参数
	 * @param pay_date 付款当天日期，获取当天日期，格式：年[4位]月[2位]日[2位]，如：20100801
	 * @param batch_no 商家网站里的批次号，保证其唯一性，格式：当天日期[8位]+序列号[3至16位]，如：201008010000001
	 * @param batch_num 付款笔数，即参数detail_data的值中，“|”字符出现的数量加1，最大支持1000笔（即“|”字符出现的数量999个）
	 * @param batch_fee 付款总金额，即参数detail_data的值中所有金额的总和
	 * @param detail_data 付款详细数据
	 * @param input_charset 字符编码格式 目前支持 GBK 或 utf-8
	 * @param key 安全校验码
	 * @param sign_type 加密方式 不需修改
	 * @return 表单提交HTML文本
	 */
	@SuppressWarnings({ "static-access", "unchecked" })
	public static String BuildPostform(
			String batch_num,
			String batch_fee,
			String detail_data,
			String batch_no){
		
		UtilDate date = new UtilDate();//调取支付宝工具类生成订单号
		//付款当天日期，获取当天日期，格式：年[4位]月[2位]日[2位]，如：20100801
		String pay_date = date.getDate();
		//商家网站里的批次号，保证其唯一性，格式：当天日期[8位]+序列号[3至16位]，如：201008010000001
//		String batch_no = pay_date + date.getTime();
		Map sPara = new HashMap();
		sPara.put("_input_charset", AlipayConfig.input_charset);
		sPara.put("account_name", AlipayConfig.account_name);
		sPara.put("batch_fee", batch_fee);
		sPara.put("batch_no", batch_no);
		sPara.put("batch_num", batch_num);
		sPara.put("detail_data", detail_data);
		sPara.put("email", AlipayConfig.email);
		sPara.put("notify_url", AlipayConfig.notify_urlTk);
		sPara.put("partner", AlipayConfig.partner);
		sPara.put("pay_date", pay_date);
		sPara.put("service","batch_trans_notify");
		
		Map sParaNew = AlipayBase.ParaFilter(sPara); //除去数组中的空值和签名参数
		String mysign = AlipayBase.BuildMysign(sParaNew, AlipayConfig.key);//生成签名结果
		
		StringBuffer sbHtml = new StringBuffer();
		List keys = new ArrayList(sParaNew.keySet());
		String gateway = "https://www.alipay.com/cooperate/gateway.do?";
		
		sbHtml.append("<form id=\"alipaysubmit\" name=\"alipaysubmit\" action=\"" + gateway + "_input_charset=" + AlipayConfig.input_charset + "\" method=\"post\">");
		for (int i = 0; i < keys.size(); i++) {
			String name = (String) keys.get(i);
			String value = (String) sParaNew.get(name);
			
			sbHtml.append("<input type=\"hidden\" name=\"" + name + "\" value=\"" + value + "\"/>");
		}
        sbHtml.append("<input type=\"hidden\" name=\"sign\" value=\"" + mysign + "\"/>");
        sbHtml.append("<input type=\"hidden\" name=\"sign_type\" value=\"" + AlipayConfig.sign_type + "\"/></form>");
        
        sbHtml.append("<input type=\"button\" name=\"v_action\" value=\"支付宝确认付款\" onClick=\"document.forms['alipaysubmit'].submit();\">");
		
		return sbHtml.toString();
	}
}
