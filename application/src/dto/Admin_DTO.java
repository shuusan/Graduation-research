package dto;

public class Admin_DTO {
	private int num, num1,num2,num3;
	private String text, text1, text2, text3;

	public Admin_DTO() {
		super();
	}

	public Admin_DTO(int num, int num1, String text, String text1, int num2, int num3, String text2) {
		super();
		this.num = num;
		this.num1 = num1;
		this.text = text;
		this.text1 = text1;
		this.num2 = num2;
		this.num3 = num3;
		this.text2 = text2;
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

	public Admin_DTO(int num, String text, int num1) {
		super();
		this.num = num;
		this.text = text;
		this.num1 = num1;
	}

	public Admin_DTO(int num, String text) {
		super();
		this.num = num;
		this.text = text;
	}

	public int getNum() {
		return num;
	}

	public Admin_DTO(int num, int num1, String text, String text1, String text2, String text3) {
		super();
		this.num = num;
		this.num1 = num1;
		this.text = text;
		this.text1 = text1;
		this.text2 = text2;
		this.text3 = text3;
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