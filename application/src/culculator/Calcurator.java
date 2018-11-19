package culculator;
import java.util.ArrayList;
import java.util.HashMap;

import dto.User_DTO;

public class Calcurator {
	public static HashMap<Integer,ArrayList<Integer>> time_interval(int num, HashMap<Integer, ArrayList<User_DTO>> list){
		HashMap<Integer,ArrayList<Integer>> resultmap = new HashMap<>();
		ArrayList<Integer> resultlist = new ArrayList<>();

		double result = 0;
		for(int i = 1; i < num+1; i++) {
			long start = 0;
			long end = 0;
			for(int j = 0; j < list.get(i).size(); j++) {
				System.out.println(list.get(i).get(j).getNum());
				//領域規模
				start = list.get(i).get(j).getLnum();
				end = list.get(i).get(j).getLnum1();
				result = (((start - end)*-1)/3600000);
				System.out.println(end + "と" + start + "=" + result);
				if(1 <= result) {
					if(result % 0.25 == 0) {
						result = 300 * result;
					}else {
						result = 300 * (result - result % 0.25);
					}
				}else if(0.75 <= result){
					result = 300 * 0.75;
				}else if(0.5 <= result){
					result = 300 * 0.5;
				}else{
					result = 300 * 0.25;
				}
				if(null!=resultmap.get(i)) {
					resultmap.get(i).add((int)result);
				}else {
					resultlist.add((int)result);
					resultmap.put(i, resultlist);
					resultlist = new ArrayList<>();
				}
				//ArrayIndex out of bounds exceptionを避ける
				if(j+1 == list.get(i).size()) {
					resultmap.get(i).add(0);
					//分表記
					resultmap.get(i).add(list.get(i).get(j).getNum3());
					break;
				}
				//間隙処理
				start = list.get(i).get(j+1).getLnum();
				result = (((end - start))/3600000);
				System.out.println(end + "と" + start + "=" + result);
				if(0 == result) {
					result = 0;
				}else if(1 <= result) {
					if(result % 0.25 == 0) {
						result = 300 * result;
					}else {
						result = 300 * (result - result % 0.25);
					}
				}else if(0.75 <= result){
					result = 300 * 0.75;
				}else if(0.5 <= result){
					result = 300 * 0.5;
				}else{
					result = 300 * 0.25;
				}
				System.out.println(result);
				resultmap.get(i).add((int)result);
				//分表記
				resultmap.get(i).add(list.get(i).get(j).getNum3());
			}
		}
		return resultmap;
	}
}
