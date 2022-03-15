package mit.arch.domain;

import lombok.Data;

@Data
public class BoardVO {
	
	private String item_code;
	private String item_name="";
	private String purch_user="";
	private String purch_user_name="";
	private String purch_dept="";
	private String purch_dept_name="";
	private String vendor="";
	private String vendor_name="";
	private String income_insp_user="";
	private int current_stock=-1;
	private int purch_price=-1;
	private String insp_f="";
	private String deletion_f="";

}
