package com.deying.util.tag;

import java.io.IOException;
import java.io.Writer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.struts2.components.Component;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.deying.util.data.TextUtils;
import com.opensymphony.xwork2.util.ValueStack;

public class TextCut extends Component {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(TextCut.class);
	
	private String value;

	private String remainNum;

	private String symbol;
	
	private boolean escape;
	
	private boolean cutPattern;
	
	
	public void setCutPattern(boolean cutPattern) {
		this.cutPattern = cutPattern;
	}

	public void setEscape(boolean escape)
	{
		this.escape = escape;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getRemainNum() {
		return remainNum;
	}

	public void setRemainNum(String remainNum) {
		this.remainNum = remainNum;
	}

	public String getSymbol() {
		return symbol;
	}

	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}

	public TextCut(ValueStack stack) {
		super(stack);
	}

	@Override
	public boolean start(Writer writer) {
		boolean result = super.start(writer);

		boolean isValid = true;
			
		if (isValid) {
			if (value.startsWith("%{") && value.endsWith("}")) {
				value = value.substring(2, value.length() - 1);
				value = (String) getStack().findValue(value, String.class);
				isValid = value == null ? false : true;
			} else if (value != null) {
				isValid = true;
			} else {
				isValid = false;
			}
		}

		if (isValid) {
			if (remainNum.startsWith("%{") && remainNum.endsWith("}")) {
				remainNum = value.substring(2, remainNum.length() - 1);
				remainNum = (String) getStack().findValue(remainNum, String.class);
				isValid = remainNum == null ? false : true;
			} else if (remainNum != null) {
				isValid = true;
			} else {
				isValid = false;
			}
		}

		if (isValid) {
			if (symbol.startsWith("%{") && symbol.endsWith("}")) {
				symbol = value.substring(2, symbol.length() - 1);
				symbol = (String) getStack().findValue(symbol, String.class);
				isValid = symbol == null ? false : true;
			} else if (symbol != null) {
				isValid = true;
			} else {
				isValid = false;
			}
		}

		if (isValid) {

			try {
				StringBuilder outputStringBuilder = new StringBuilder();
				int remainNumInt = Integer.parseInt(remainNum);
				if(cutPattern)
				{
					Pattern p = Pattern.compile("<([^><]*)\\>");
					Matcher m = p.matcher(value);
					StringBuffer stringbuffer = new StringBuffer();
					while (m.find()) {
						m.appendReplacement(stringbuffer, "");
					}
					m.appendTail(stringbuffer);
					value = stringbuffer.toString();
				}
					

				if (value.length() >0 ) {
					if(value.length() > remainNumInt*2)
						value = value.substring(0, remainNumInt*2-1);
					String newVal = value.replaceAll("([^\\x00-\\xff])", "$1⊙");
					if(newVal.length() < remainNumInt) {
						outputStringBuilder.append(prepare(value));
					} else {
						outputStringBuilder.append(prepare(newVal.substring(0,remainNumInt).replaceAll("⊙", "")));
						outputStringBuilder.append(symbol);
					}
				}

				writer.write(outputStringBuilder.toString());
			} catch (IOException e) {
				LOGGER.error("TextCut Tag processing error.", e);
			}
		}
		return result;
		
	}
	
	private String prepare(String value) {
        if (escape) {
            return TextUtils.htmlEncode(value);
        } else {
            return value;
        }
    }

}
