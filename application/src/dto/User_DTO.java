package dto;

public class User_DTO {
	int num,num1,num2,num3;
	String text,text1,text2,text3;
	long lnum,lnum1;
	public User_DTO() {}
	public User_DTO(int num, int num1, String text, String text1, int num2, long lnum, long lnum1, int num3,
			String text2, String text3) {
		super();
		this.num = num;
		this.num1 = num1;
		this.text = text;
		this.text1 = text1;
		this.num2 = num2;
		this.lnum = lnum;
		this.lnum1 = lnum1;
		this.num3 = num3;
		this.text2 = text2;
		this.text3 = text3;
	}
	public User_DTO(int num, String text) {
		super();
		this.num = num;
		this.text = text;
	}
	public User_DTO(String text) {
		super();
		this.text = text;
	}

	public User_DTO(int num, String text, String text1, String text2) {
		super();
		this.num = num;
		this.text = text;
		this.text1 = text1;
		this.text2 = text2;
	}
	public User_DTO(String text, String text1, String text2, String text3) {
		super();
		this.text = text;
		this.text1 = text1;
		this.text2 = text2;
		this.text3 = text3;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public int getNum1() {
		return num1;
	}
	public void setNum1(int num1) {
		this.num1 = num1;
	}
	public int getNum2() {
		return num2;
	}
	public void setNum2(int num2) {
		this.num2 = num2;
	}

	public int getNum3() {
		return num3;
	}
	public void setNum3(int num3) {
		this.num3 = num3;
	}
	public String getText1() {
		return text1;
	}
	public void setText1(String text1) {
		this.text1 = text1;
	}
	public String getText2() {
		return text2;
	}
	public void setText2(String text2) {
		this.text2 = text2;
	}
	public String getText3() {
		return text3;
	}
	public void setText3(String text3) {
		this.text3 = text3;
	}
	public long getLnum() {
		return lnum;
	}
	public void setLnum(long lnum) {
		this.lnum = lnum;
	}
	public long getLnum1() {
		return lnum1;
	}
	public void setLnum1(long lnum1) {
		this.lnum1 = lnum1;
	}

}
