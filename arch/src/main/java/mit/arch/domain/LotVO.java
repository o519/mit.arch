package mit.arch.domain;

import java.util.Date;

import lombok.Data;

@Data
public class LotVO {
	
	private String lot_no;
	private String create_user;
	private Date create_date;
	private Integer lot_size;
	private String yn_f;
	private String item_code;
	private String item_name;

}
