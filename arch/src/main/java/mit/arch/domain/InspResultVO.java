package mit.arch.domain;

import lombok.Data;

@Data
public class InspResultVO {
	
	private String lot_no; 
	private String sample_no;
	private String item_code;
	private String insp_char;
	private Double insp_result;
	private String yn_f;

}
