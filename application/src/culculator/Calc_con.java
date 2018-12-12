package culculator;

public class Calc_con {
	int space_height,button_height;

	public Calc_con(){}
	public Calc_con(int space_height, int button_height) {
		super();
		this.space_height = space_height;
		this.button_height = button_height;
	}
	public int getSpace_height() {
		return space_height;
	}
	public void setSpace_height(int space_height) {
		this.space_height = space_height;
	}
	public int getButton_height() {
		return button_height;
	}
	public void setButton_height(int button_height) {
		this.button_height = button_height;
	}
}
