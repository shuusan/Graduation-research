package culculator;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.HashMap;

import dto.User_DTO;

public class Calcurator {
	public static HashMap<Integer,ArrayList<Calc_con>> time_interval(HashMap<Integer, ArrayList<User_DTO>> map){
		HashMap<Integer,ArrayList<Calc_con>> resultmap = new HashMap<>();
		ArrayList<Calc_con> resultlist = new ArrayList<>();
		Instant instant;
		LocalDateTime ldt;

		//ボタンと空き時間のサイズ
		int space_height=0,button_height=0;
		long start = 999999999,end = 0,timeStart=0,timeEnd=0;;
		double result = 0;

		//HashMapの鍵番号for
		for(int i = 0; i < map.size(); i++) {
			end = map.get(i).get(0).getLnum();
			//ArrayList<Calc_con>の番地for
			for(int j = 0; j < map.get(i).size(); j++) {
				start = map.get(i).get(j).getLnum();
				result = -1*((double)(end - start)/1000)/3600;
				space_height = (int)(300*result);
				end = map.get(i).get(j).getLnum1();
				timeStart = (start<timeStart)?start:timeStart;
				timeEnd = (end>timeEnd)?end:timeEnd;
				result = -1*((double)(start - end)/1000)/3600;
				button_height=(int)(300*result);
				//タイムテーブルの先頭要素に対する間隙領域指定
				if(0==j) {
					instant = Instant.ofEpochMilli(map.get(i).get(0).getLnum());
					ldt = LocalDateTime.ofInstant(instant, ZoneId.systemDefault());
					space_height = (int)(300*(ldt.getMinute()/60.0));
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
		resultlist = new ArrayList<>();
		instant = Instant.ofEpochMilli(timeStart);
		ldt = LocalDateTime.ofInstant(instant, ZoneId.systemDefault());
		int a = ldt.getHour()+1;
		instant = Instant.ofEpochMilli(timeEnd);
		ldt = LocalDateTime.ofInstant(instant, ZoneId.systemDefault());
		int b = ldt.getHour();
		resultlist.add(new Calc_con(a, b));
		resultmap.put(map.size(), resultlist);
		return resultmap;
	}

	public static HashMap<Integer, ArrayList<User_DTO>> reKey(HashMap<Integer, ArrayList<User_DTO>> map){
		HashMap<Integer, ArrayList<User_DTO>> result = new HashMap<>();
		if(!map.isEmpty()) {
			String text="";
			text=String.valueOf(map.keySet()).substring(1);
			text=text.substring(0,text.length()-1);
			text=text.trim();
			String[] numberList = text.split(",");
			result.put(0, map.get(Integer.parseInt(numberList[0])));
			for(int i=1; i<numberList.length;i++) {
				result.put(i, map.get(Integer.parseInt(numberList[i].substring(1))));
			}
		}
		return result;
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
