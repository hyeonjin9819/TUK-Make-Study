package org.tukorea.study.domain;

public class StudyVO {
	private int snum;
	private String sname;
	private String sobject;
	private String sowner;
	private String slocation;
	public int getSnum() {
		return snum;
	}
	public void setSnum(int snum) {
		this.snum = snum;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSobject() {
		return sobject;
	}
	public void setSobject(String sobject) {
		this.sobject = sobject;
	}
	public String getSowner() {
		return sowner;
	}
	public void setSowner(String sowner) {
		this.sowner = sowner;
	}
	public String getSlocation() {
		return slocation;
	}
	public void setSlocation(String slocation) {
		this.slocation = slocation;
	}

	@Override
	public String toString() {
		return "StudyVO [snum=" + snum + ", sname=" + sname + ", sobject=" + sobject + ", sowner=" + sowner + ", slocation="
				+ slocation + "]";
	}
}
