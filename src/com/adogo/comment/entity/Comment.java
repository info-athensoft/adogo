package com.adogo.comment.entity;

import java.util.Date;

/**
 * Post of comment topic
 * applied at Comment system, etc.
 * 
 * @author sfz
 *
 */
public class Comment {
	private Long globalId;
	private Long acctId;
	private String nickName;
	private String pageUrl;
	private String avatarUrl;
	private Long parentId;
	private Integer langNo;
	private String content;
	private Date createDate;
	private String status;
	public Long getGlobalId() {
		return globalId;
	}
	public void setGlobalId(Long globalId) {
		this.globalId = globalId;
	}
	public Long getAcctId() {
		return acctId;
	}
	public void setAcctId(Long acctId) {
		this.acctId = acctId;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getPageUrl() {
		return pageUrl;
	}
	public void setPageUrl(String pageUrl) {
		this.pageUrl = pageUrl;
	}
	public String getAvatarUrl() {
		return avatarUrl;
	}
	public void setAvatarUrl(String avatarUrl) {
		this.avatarUrl = avatarUrl;
	}
	public Long getParentId() {
		return parentId;
	}
	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}
	public Integer getLangNo() {
		return langNo;
	}
	public void setLangNo(Integer langNo) {
		this.langNo = langNo;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Comment [globalId=" + globalId + ", acctId=" + acctId + ", nickName=" + nickName + ", pageUrl="
				+ pageUrl + ", avatarUrl=" + avatarUrl + ", parentId=" + parentId + ", langNo=" + langNo + ", content="
				+ content + ", createDate=" + createDate + ", status=" + status + "]";
	}
	
}
