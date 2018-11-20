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
		int space_height=0,button_height=0;
		long start = 0,end = 0;
		double result = 0;
        //ボタンと空き時間のサイズ
		for(int i = 1; i < num+1; i++) {
			end = list.get(i).get(0).getLnum();
			for(int j = 0; j < list.get(i).size(); j++) {
				start = list.get(i).get(j).getLnum();
				result = -1*((double)(end - start)/1000)/3600;
				space_height = (int)(300*result);
				end = list.get(i).get(j).getLnum1();
				result = -1*((double)(start - end)/1000)/3600;
				button_height=(int)(300*result);
				if(null!=resultmap.get(i)) {
					resultmap.get(i).add(new Calc_con(space_height, button_height));
				}else {
					resultlist.add(new Calc_con(space_height, button_height));
					resultmap.put(i, resultlist);
					resultlist = new ArrayList<>();
				}
			}
		}
		//表示時間バー
		resultlist = new ArrayList<>();
		//開始
		instant = Instant.ofEpochMilli(list.get(1).get(0).getLnum());
		ldt = LocalDateTime.ofInstant(instant, ZoneId.systemDefault());
		int timeStart = ldt.getHour();
		//終了
		instant = Instant.ofEpochMilli(list.get(num). get( list.get(num).size()-1 ).getLnum1());
		ldt = LocalDateTime.ofInstant(instant, ZoneId.systemDefault());
		int timeEnd = ldt.getHour();
		System.out.println(timeStart);
		System.out.println(timeEnd);
		//リストに追加
		resultlist.add(new Calc_con(timeStart, timeEnd));
		resultmap.put(0, resultlist);

		return resultmap;
	}
}
