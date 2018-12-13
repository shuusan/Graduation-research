package dto;

public class Admin_DTO {
	private int num, num1;
	private String text, text1, text2, text3;

	public Admin_DTO() {
		super();
	}

	public Admin_DTO(int num, String text, int num1, String text1, String text2, String text3) {
		super();
		this.num = num;
		this.text = text;
		this.num1 = num1;
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

	public int getNum1() {
		return num1;
	}

	public void setNum1(int num1) {
		this.num1 = num1;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
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

}