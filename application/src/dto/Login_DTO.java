package dto;

public class Login_DTO {
	int num;
	String text;
	public Login_DTO(int num, String text) {
		super();
		this.num = num;
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

}
