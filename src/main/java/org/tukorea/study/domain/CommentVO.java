package org.tukorea.study.domain;

import java.util.Date;

public class CommentVO {
	private int cnum;
	private String sid;
	private int snum;
	private String contents;
	private Date reg_date;
	public int getCnum() {
		return cnum;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public int getSnum() {
		return snum;
	}
	public void setSnum(int snum) {
		this.snum = snum;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
	@Override
	public String toString() {
		return "CommentVO [cnum=" + cnum + ", sid=" + sid + ", snum=" + snum + ", contents=" + contents + ", reg_date="
				+ reg_date + "]";
	}
}
