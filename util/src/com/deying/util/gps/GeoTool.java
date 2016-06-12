package com.deying.util.gps;


import java.util.HashMap;

/*
 * *在纬度相等的情况下：
 *经度每隔0.00001度，距离相差约1米；
 *每隔0.0001度，距离相差约10米；
 *每隔0.001度，距离相差约100米；
 *每隔0.01度，距离相差约1000米；
 *每隔0.1度，距离相差约10000米。
 *在经度相等的情况下：
 *纬度每隔0.00001度，距离相差约1.1米；
 *每隔0.0001度，距离相差约11米；
 *每隔0.001度，距离相差约111米；
 *每隔0.01度，距离相差约1113米；
 *每隔0.1度，距离相差约11132米。
 */
public class GeoTool {
	private static final double EARTH_RADIUS = 6371;

	/**
	 * <pre>
	 * 两点计算距离，传入两点的经纬度,
	 * </pre>
	 */
	public static double getPointDistance(double lat1, double lng1,
			double lat2, double lng2) {
		double result = 0;

		double radLat1 =  deg2rad(lat1);

		double ratlat2 =  deg2rad(lat2);
		double a =  deg2rad(lat1) -  deg2rad(lat2);
		double b =  deg2rad(lng1) -  deg2rad(lng2);

		result = 2 * Math.asin(Math.sqrt(Math.pow(Math.sin(a / 2), 2)
				+ Math.cos(radLat1) * Math.cos(ratlat2)
				* Math.pow(Math.sin(b / 2), 2)));
		result = result * EARTH_RADIUS;

		result = Math.round(result * 1000); // 返回的单位是米，四舍五入

		return result;
	}

	/** 由角度转换为弧度 */
	private static double  deg2rad(double d) {
		return (d * Math.PI) / 180.00;
	}
	
	/** 由弧度转换为角度 */
	private static double rad2deg(double d) {
		return (d * 180.00) / Math.PI;
	}
	
	/**
	 * 计算某个经纬度的周围某段距离的正方形的四个点
	 * @param currentLat	纬度  Y
	 * @param currentLng	经度  x
	 * @param distance
	 * @return
	 */
	@SuppressWarnings("unused")
	public static HashMap<String, Double> getSquareBounds(double currentLng, double currentLat, double distance){
		if (Math.abs(currentLng) > 180 || Math.abs(currentLat) > 90) {
			throw new IllegalArgumentException("The supplied coordinates getSquarePoint are out of range.");
		}
		HashMap<String, Double> result=new HashMap<String, Double>();
		double dlng = 2 * Math.asin(Math.sin(distance / (2 * EARTH_RADIUS))
				/ Math.cos(deg2rad(currentLat)));
		dlng = rad2deg(dlng);
		double dlat = distance / EARTH_RADIUS;
		dlat = rad2deg(dlat);
		result.put("top", currentLat + dlat);
		result.put("bottom", currentLat - dlat);
		result.put("left", currentLng - dlng );
		result.put("right", currentLng + dlng);
		return result;
	}
}
