package culculator;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.HashMap;

import dto.User_DTO;

public class Calcurator {
	public static HashMap<Integer,ArrayList<Calc_con>> time_interval(int num, HashMap<Integer, ArrayList<User_DTO>> list){
		HashMap<Integer,ArrayList<Calc_con>> resultmap = new HashMap<>();
		ArrayList<Calc_con> resultlist = new ArrayList<>();
		Instant instant;
		LocalDateTime ldt;
		/* ArrayList<Calc_con>の、1番目のリストの
		 * 0番目のCalc_conのgetLnum1()を取得*/
		instant = Instant.ofEpochMilli(list.get(1).get(0).getLnum());
		ldt = LocalDateTime.ofInstant(instant, ZoneId.systemDefault());
		int timeStart = ldt.getHour();
		double min = ldt.getMinute()/60.0;
		/* ArrayList<Calc_con>の、「ミドルイベントの数」番目のリストの
		 * 「リストの最大値」番目のCalc_conのgetLnum1()を取得*/
		instant = Instant.ofEpochMilli(list.get(num). get( list.get(num).size()-1 ).getLnum1());
		ldt = LocalDateTime.ofInstant(instant, ZoneId.systemDefault());
		int timeEnd = ldt.getHour();
		//リストに追加
		resultlist.add(new Calc_con(timeStart, timeEnd));
		resultmap.put(0, resultlist);

		//ボタンと空き時間のサイズ
		int space_height=0,button_height=0;
		long start = 0,end = 0;
		double result = 0;
		resultlist = new ArrayList<>();

		//HashMapの鍵番号for
		for(int i = 1; i < num+1; i++) {
			end = list.get(i).get(0).getLnum();
			//ArrayList<Calc_con>の番地for
			for(int j = 0; j < list.get(i).size(); j++) {
				start = list.get(i).get(j).getLnum();
				result = -1*((double)(end - start)/1000)/3600;
				space_height = (int)(300*result);
				end = list.get(i).get(j).getLnum1();
				result = -1*((double)(start - end)/1000)/3600;
				button_height=(int)(300*result);
				//タイムテーブルの先頭要素に対する間隙領域指定
				if(0==j) {
					space_height = (int)(300*min);
				}
				if(null!=resultmap.get(i)) {
					//result_listに追加
					resultmap.get(i).add(new Calc_con(space_height, button_height));
				}else {
					//新しい鍵番目のとき毎にarrayList<Calc_con>の初期化
					resultlist.add(new Calc_con(space_height, button_height));
					resultmap.put(i, resultlist);
					resultlist = new ArrayList<>();
				}
			}
		}
		return resultmap;
	}
	public static String tag(int num,ArrayList<User_DTO> list) {
		String result="";
		for(int i=0;i<list.size();i++) {
			if(num==list.get(i).getNum()) {
				result=list.get(i).getText();
			}
		}
		return result;
	}

	public static String search(String[] array, String text) {
		String result="";
		String[] sa = text.split("[　 ]");
		if(0!=sa.length) {
			for(int i=0;i<sa.length;i++) {
				result = result+"(";
				for(int j=0;j<array.length;j++) {
					result = result + array[j] + " LIKE '%" + sa[i] + "%' OR ";
				}
				result = result+") AND ";
			}
			result = result.substring(0, result.length()-11)+")";
		}else {
			result="null";
		}
		return result;
	}
}
