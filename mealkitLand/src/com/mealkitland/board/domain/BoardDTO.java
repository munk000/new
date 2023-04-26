package com.mealkitland.board.domain;

public class BoardDTO {
	private Long boardId;
	private String boardTitle;
	private String boardContent;
	private String boardCategory;
	private String boardRegistDate;
	private String boardUpdateDate;
	private Long userId;
	private String userName;
	
	public BoardDTO() {;}
	public Long getBoardId() {
		return boardId;
	}
	public void setBoardId(Long boardId) {
		this.boardId = boardId;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public String getBoardCategory() {
		return boardCategory;
	}
	public void setBoardCategory(String boardCategory) {
		this.boardCategory = boardCategory;
	}
	public String getBoardRegistDate() {
		return boardRegistDate;
	}
	public void setBoardRegistDate(String boardRegistDate) {
		this.boardRegistDate = boardRegistDate;
	}
	public String getBoardUpdateDate() {
		return boardUpdateDate;
	}
	public void setBoardUpdateDate(String boardUpdateDate) {
		this.boardUpdateDate = boardUpdateDate;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((boardId == null) ? 0 : boardId.hashCode());
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
		BoardDTO other = (BoardDTO) obj;
		if (boardId == null) {
			if (other.boardId != null)
				return false;
		} else if (!boardId.equals(other.boardId))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "BoardDTO [boardId=" + boardId + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
				+ ", boardCategory=" + boardCategory + ", boardRegistDate=" + boardRegistDate + ", boardUpdateDate="
				+ boardUpdateDate + ", userId=" + userId + ", userName=" + userName + "]";
	}
	
	
}
