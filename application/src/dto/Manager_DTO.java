package dto;

public class Manager_DTO {
	private int num;
	private String text,text1,text2;
	public Manager_DTO(int num, String text) {
		super();
		this.num = num;
		this.text = text;
	}

	public Manager_DTO(int num, String text, String text1, String text2) {
		super();
		this.num = num;
		this.text = text;
		this.text1 = text1;
		this.text2 = text2;
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


}
