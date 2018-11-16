package dto;

public class User_DTO {
	int num,num1,num2;
	String text,text1;
	public User_DTO() {}
	public User_DTO(int num, String text) {
		super();
		this.num = num;
		this.text = text;
	}
	public User_DTO(int num, int num1, String text, String text1, int num2) {
		super();
		this.num = num;
		this.num1 = num1;
		this.num2 = num2;
		this.text = text;
		this.text1 = text1;
	}
	public User_DTO(String text) {
		super();
		this.text = text;
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
	public String getText1() {
		return text1;
	}
	public void setText1(String text1) {
		this.text1 = text1;
	}


}
