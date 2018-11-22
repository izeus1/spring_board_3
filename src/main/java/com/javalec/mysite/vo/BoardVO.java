package com.javalec.mysite.vo;

public class BoardVO {
	private int seq; 
	private String title; 
	private String writer; 
	private String content; 
	private String reg_date;
	private int cnt; 
	private String id;
	
//=======================================	
// 
//	SEQ DECIMAL(10, 0) NOT NULL, /* SEQ */
//	TITLE VARCHAR2(20), /* TITLE */
//	WRITER VARCHAR2(20), /* WRITER */
//	CONTENT VARCHAR2(500), /* CONTENT */
//	EGDATE TIMESTAMP, /* REGDATE */
//	CNT DECIMAL(10,0), /* CNT */
//	ID VARCHAR(20) /* ID */
//	
//=======================================	
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "BoardVO [seq=" + seq + ", title=" + title + ", writer=" + writer + ", content=" + content
				+ ", reg_date=" + reg_date + ", cnt=" + cnt + ", id=" + id + "]";
	}
}
