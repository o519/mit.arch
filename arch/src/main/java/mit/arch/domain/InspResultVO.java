package mit.arch.domain;

import lombok.Data;

@Data
public class InspResultVO {
	
	private String lot_no; 
	private Integer sample_no;
	private String item_code;
	private String insp_char;
	private Double insp_result;
	private String yn_f;
	
	private String insp_char_name;
	private Integer sample_qty;

}
