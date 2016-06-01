package com.deying.util.bo;
import java.math.BigDecimal;
public class ShopCommentUserWrap {
	private Long id;//商铺主键
	private String name;//商铺名称
	private String address;//商铺地址
	private String picture;//商铺图片
	private BigDecimal perCapitaConsume; //shop表 人均消费
	private String phone;//商铺电话
	private Long commentId;//评论主键
	private Integer countComments;
	private Integer best;//总体评价 count(totalEvaluation=5) 好评
	private Integer better;//总体评价 count(totalEvaluation=4,3,2) 中评
	private Integer good;//总体评价 count(totalEvaluation=1) 差评
	private Integer countCoupons;// 优惠券总数
	private Integer countNotices;// 公告总数
	
	
	//--------------getter and setter  ----------------------------
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public BigDecimal getPerCapitaConsume() {
		return perCapitaConsume;
	}
	public BigDecimal getFormatPerCapitaConsume() {
		return perCapitaConsume == null ? null : perCapitaConsume.setScale(2, BigDecimal.ROUND_HALF_UP);
	}
	public void setPerCapitaConsume(BigDecimal perCapitaConsume) {
		this.perCapitaConsume = perCapitaConsume;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Long getCommentId() {
		return commentId;
	}
	public void setCommentId(Long commentId) {
		this.commentId = commentId;
	}
	public Integer getBest() {
		return best;
	}
	public void setBest(Integer best) {
		this.best = best;
	}
	public Integer getGood() {
		return good;
	}
	public void setGood(Integer good) {
		this.good = good;
	}
	public Integer getCountCoupons() {
		return countCoupons;
	}
	public void setCountCoupons(Integer countCoupons) {
		this.countCoupons = countCoupons;
	}
	public Integer getCountNotices() {
		return countNotices;
	}
	public void setCountNotices(Integer countNotices) {
		this.countNotices = countNotices;
	}
	public Integer getCountComments() {
		return best+better+good;
	}
	public void setCountComments(Integer countComments) {
		this.countComments = countComments;
	}
	public Integer getBetter() {
		return better;
	}
	public void setBetter(Integer better) {
		this.better = better;
	}
	public Integer getStarCount(){
		Integer totalSCount = best+better+good;
		if( best.doubleValue() / totalSCount.doubleValue() >= 0.5 ){
			return 5;
		}else if(best.doubleValue() / totalSCount.doubleValue() < 0.5
				&& best.doubleValue() / totalSCount.doubleValue()>0.3){
			return 3;
		}else{
			return 1;
		}
	}
}
