package com.adogo.event.entity;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class News extends Event {
	
	private String finishedDate;
	private boolean newsOver;

	@Override
	public String toString() {
		return "News [toString()=" + super.toString() + "]";
	}
	
	public String getFinishedDate() {		
		String dt = this.getPostDatetime().toLocaleString();  // Start date
//		System.out.println("dt="+dt);
		SimpleDateFormat sdf = new SimpleDateFormat("MMM dd, yyyy HH:mm:ss");
		Calendar c = Calendar.getInstance();
		try {
			c.setTime(sdf.parse(dt));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		c.add(Calendar.DATE, 180);  // number of days to add
		dt = sdf.format(c.getTime());  // dt is now the new date
//		System.out.println("dt2="+dt);
		return dt.toString();
	}
	
	public boolean isNewsOver(){
		return isExpire(this.getFinishedDate());
	}
	
	private boolean isExpire(String date){
	    if(date.isEmpty() || date.trim().equals("")){
	        return false;
	    }else{
	            SimpleDateFormat sdf =  new SimpleDateFormat("MMM dd, yyyy HH:mm:ss"); // Jan-20-2015 1:30:55 PM
	               Date d=null;
	               Date d1=null;
	            String today=   getToday("MMM dd, yyyy HH:mm:ss");
	            try {
	                //System.out.println("expdate>> "+date);
	                //System.out.println("today>> "+today+"\n\n");
	                d = sdf.parse(date);
	                d1 = sdf.parse(today);
	                if(d1.compareTo(d) <0){// not expired
	                    return false;
	                }else if(d.compareTo(d1)==0){// both date are same
	                            if(d.getTime() < d1.getTime()){// not expired
	                                return false;
	                            }else if(d.getTime() == d1.getTime()){//expired
	                                return true;
	                            }else{//expired
	                                return true;
	                            }
	                }else{//expired
	                    return true;
	                }
	            } catch (ParseException e) {
	                e.printStackTrace();                    
	                return false;
	            }
	    }
	}


	  public static String getToday(String format){
	     Date date = new Date();
	     return new SimpleDateFormat(format).format(date);
	 }
	
}
