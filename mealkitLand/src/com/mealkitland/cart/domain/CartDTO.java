package com.mealkitland.cart.domain;

public class CartDTO {
	private int cartTotal;
	private Long subscribeId;
	private Long userId;
	private Long productId;
	private String productName;
	private	int productPrice;
	private int productTypeDate;
	
	public CartDTO() {
		super();
	}

	public int getCartTotal() {
		return cartTotal;
	}

	public void setCartTotal(int cartTotal) {
		this.cartTotal = cartTotal;
	}

	public Long getSubscribeId() {
		return subscribeId;
	}

	public void setSubscribeId(Long subscribeId) {
		this.subscribeId = subscribeId;
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

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public int getProductTypeDate() {
		return productTypeDate;
	}

	public void setProductTypeDate(int productTypeDate) {
		this.productTypeDate = productTypeDate;
	}
	
	
	
	
	
	
}
