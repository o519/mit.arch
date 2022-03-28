package mit.arch.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class InspCharVO {
	
	private String insp_char;
	private String insp_char_name;
	private String qn_f;
	private Integer sample_qty;
	private Integer AC;
	private Integer RE;
	private double USL;
	private double SL;
	private double LSL;
	private double UCL;
	private double CL;
	private double LCL;
	private String unit;
	private String create_user;
	private Date create_date;
	private String update_user;
	private Date update_date;
	private String delete_user;
	private Date delete_date;
	private String deletion_f;
}
