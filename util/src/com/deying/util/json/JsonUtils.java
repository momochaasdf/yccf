package com.deying.util.json;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonPrimitive;



public class JsonUtils {
	
	/**
     * 获取对象的string字符
     *
     * @param obj 需要转换的对象
     * @return 对象的string字符
     */
    public static String toJson(Object obj) {
        Gson gson = new Gson();
        return gson.toJson(obj);
    }


    /**
     * 获取string字符的对象
     *
     * @param str  需要转换的字符串
     * @param type 需要转换的对象类型
     * @return 对象
     */
    public static <T> T fromJson(String str, Class<T> type) {
        Gson gson = new Gson();
        return gson.fromJson(str, type);
    }
    
    /**
     * 获取string字符的对象
     * @param str
     * @param type
     * @return
     */
    public static <T> T fromJson(String str, Type type) {
        Gson gson = new Gson();
        return gson.fromJson(str, type);
    }
    
    
    /**
     * 将标准形式的JSON字符串转换为Map对象
     *
     * @param str 字符串
     * @return 转换后的Map对象
     */
    @SuppressWarnings("unchecked")
	public static Map<String, Object> jsonToMap(String str) {
        JsonParser jsonParser = new JsonParser();
        JsonElement jsonElement = jsonParser.parse(str);
        if (!jsonElement.isJsonObject()) {
            System.out.println("can't parse '" + str + "' to map ");
            return new HashMap<String, Object>();
        }

        return (Map<String, Object>) getValue(jsonElement);
    }

    /**
     * 递归查询
     *
     * @param jsonElement 元素对象
     * @return 转换后的对象
     */
    @SuppressWarnings("unchecked")
	private static Object getValue(JsonElement jsonElement) {
        if (jsonElement.isJsonObject()) {
            JsonObject object = jsonElement.getAsJsonObject();
            Set<Map.Entry<String, JsonElement>> set = object.entrySet();
            Object[] obja = set.toArray();
            Map<String, Object> map = new HashMap<String, Object>();
            for (Object objcc : obja) {
                Map.Entry<String, JsonElement> mapTemp = (Map.Entry<String, JsonElement>) objcc;
                map.put(mapTemp.getKey(), getValue(mapTemp.getValue()));
            }
            return map;

        } else if (jsonElement.isJsonArray()) {
            JsonArray array = jsonElement.getAsJsonArray();
            int size = array.size();
            List<Object> list = new ArrayList<Object>();
            for (int i = 0; i < size; i++) {
                list.add(getValue(array.get(i)));
            }
            return list;
        } else if (jsonElement.isJsonPrimitive()) {
            JsonPrimitive primitive = jsonElement.getAsJsonPrimitive();
            if (primitive.isString()) {
                return primitive.getAsString();
            }
            if (primitive.isBoolean()) {
                return primitive.getAsBoolean();
            }
            if (primitive.isNumber()) {
                return primitive.getAsNumber();
            }
            return primitive.getAsString();
        }
        return null;
    }
    
    /**
     * 将数组形式的JSON字符串转换为数组对象
     *
     * @param str 字符串
     * @return 转换后的数组对象
     */
    @SuppressWarnings("unchecked")
	public static List<Map<String, Object>> jsonToArray(String str) {
        JsonParser jsonParser = new JsonParser();
        JsonElement jsonElement = jsonParser.parse(str);
        if (!jsonElement.isJsonArray()) {
            System.out.println("can't parse '" + str + "' to Array ");
            return new ArrayList<Map<String, Object>>();
        }

        return (List<Map<String, Object>>) getValue(jsonElement);
    }
    

}
