package com.deying.core.util;

import java.util.UUID;

public final class VerifyUtil {
	
	public static String createVerifyCode(){
		UUID uuid=UUID.randomUUID();
		return uuid.toString();
	}
	
}
