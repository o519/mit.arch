package mit.arch.domain;


import java.util.Date;

import lombok.Data;

@Data
public class InspCharVO {
	
	private String insp_char;
	private String insp_char_name;
	private String qn_f;
	private Integer sample_qty;
	private Integer ac;
	private Integer re;
	private Double usl;
	private Double sl;
	private Double lsl;
	private Double ucl;
	private Double cl;
	private Double lcl;
	private String unit;
	private String create_user;
	private Date create_date;
	private String update_user;
	private Date update_date;
	private String delete_user;
	private Date delete_date;
	private String deletion_f;
}
