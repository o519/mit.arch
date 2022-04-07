package mit.arch.domain;

import lombok.Data;

@Data
public class ItemInspCharVO {
	
	private String item_code;
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
}
