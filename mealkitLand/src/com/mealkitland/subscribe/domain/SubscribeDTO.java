package com.mealkitland.subscribe.domain;

import java.util.Objects;

public class SubscribeDTO {
	private Long subscribeId;
	private String subscribeDate;
	private int subscribeCount;
	private Long userId;
	private Long productId;
	private String productName;
	
	public SubscribeDTO() {
		super();
	}

	public Long getSubscribeId() {
		return subscribeId;
	}

	public void setSubscribeId(Long subscribeId) {
		this.subscribeId = subscribeId;
	}

	public String getSubscribeDate() {
		return subscribeDate;
	}

	public void setSubscribeDate(String subscribeDate) {
		this.subscribeDate = subscribeDate;
	}

	public int getSubscribeCount() {
		return subscribeCount;
	}

	public void setSubscribeCount(int subscribeCount) {
		this.subscribeCount = subscribeCount;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getProductId() {
		return productId;
	}

	public void setProductId(Long productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	

	@Override
	public String toString() {
		return "SubscribeDTO [subscribeId=" + subscribeId + ", subscribeDate=" + subscribeDate + ", subscribeCount="
				+ subscribeCount + ", userId=" + userId + ", productId=" + productId + ", productName=" + productName
				+ "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(subscribeId);
	}
	

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		SubscribeDTO other = (SubscribeDTO) obj;
		return Objects.equals(subscribeId, other.subscribeId);
	}

	
}
