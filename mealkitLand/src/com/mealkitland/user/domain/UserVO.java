package com.mealkitland.user.domain;

public class UserVO {
	private Long userId;
	private String userIdentification;
	private String userPassword;
	private String userName;
	private String userAddress;
	private String userDate;
	private String userPhone;
	private String userEmail;
	private String userRegistDate;
	private String userUpdateDate;
	private String userSubDate;
	private int userAdmin;
	
	public UserVO() {;}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getUserIdentification() {
		return userIdentification;
	}

	public void setUserIdentification(String userIdentification) {
		this.userIdentification = userIdentification;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserDate() {
		return userDate;
	}

	public void setUserDate(String userDate) {
		this.userDate = userDate;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserRegistDate() {
		return userRegistDate;
	}

	public void setUserRegistDate(String userRegistDate) {
		this.userRegistDate = userRegistDate;
	}

	public String getUserUpdateDate() {
		return userUpdateDate;
	}

	public void setUserUpdateDate(String userUpdateDate) {
		this.userUpdateDate = userUpdateDate;
	}

	public String getUserSubDate() {
		return userSubDate;
	}

	public void setUserSubDate(String userSubDate) {
		this.userSubDate = userSubDate;
	}

	public int getUserAdmin() {
		return userAdmin;
	}

	public void setUserAdmin(int userAdmin) {
		this.userAdmin = userAdmin;
	}

	@Override
	public String toString() {
		return "UserVO [userId=" + userId + ", userIdentification=" + userIdentification + ", userPassword="
				+ userPassword + ", userName=" + userName + ", userAddress=" + userAddress + ", userDate=" + userDate
				+ ", userPhone=" + userPhone + ", userEmail=" + userEmail + ", userRegistDate=" + userRegistDate
				+ ", userUpdateDate=" + userUpdateDate + ", userSubDate=" + userSubDate + ", userAdmin=" + userAdmin
				+ "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((userId == null) ? 0 : userId.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UserVO other = (UserVO) obj;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		return true;
	}	
}
