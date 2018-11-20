package culculator;
import java.util.ArrayList;
import java.util.HashMap;

import dto.User_DTO;

public class Calcurator {
	public static HashMap<Integer,ArrayList<Calc_con>> time_interval(int num, HashMap<Integer, ArrayList<User_DTO>> list){
		HashMap<Integer,ArrayList<Calc_con>> resultmap = new HashMap<>();
		ArrayList<Calc_con> resultlist = new ArrayList<>();
		int space_height=0,button_height=0;
		long start = 0,end = 0;
		double result = 0;
		for(int i = 1; i < num+1; i++) {
			end = list.get(i).get(0).getLnum();
			for(int j = 0; j < list.get(i).size(); j++) {
				start = list.get(i).get(j).getLnum();
				result = -1*((double)(end - start)/1000)/3600;
				space_height = (int)(300*result);
				end = list.get(i).get(j).getLnum1();
				result = -1*((double)(start - end)/1000)/3600;
				button_height=(int)(300*result);
				System.out.println(space_height+"と"+button_height);
				if(null!=resultmap.get(i)) {
					resultmap.get(i).add(new Calc_con(space_height, button_height));
				}else {
					resultlist.add(new Calc_con(space_height, button_height));
					resultmap.put(i, resultlist);
					resultlist = new ArrayList<>();
				}
			}
		}
		return resultmap;
	}
}
