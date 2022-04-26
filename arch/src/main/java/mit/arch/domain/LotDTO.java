package mit.arch.domain;

import java.util.Date;

public class LotDTO {

	private String lot_no;
	private String create_user;
	private Date create_date;
	private Integer lot_size;
	private String yn_f;
	private String item_code;
	private String item_name;
	
	private Integer sample_no;
	private String insp_char;
	private Double insp_result;
	
	private String insp_char_name;
	private Integer sample_qty;
	
	public String getLot_no() {
		return lot_no;
	}
	public void setLot_no(String lot_no) {
		this.lot_no = lot_no;
	}
	public String getCreate_user() {
		return create_user;
	}
	public void setCreate_user(String create_user) {
		this.create_user = create_user;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	public Integer getLot_size() {
		return lot_size;
	}
	public void setLot_size(Integer lot_size) {
		this.lot_size = lot_size;
	}
	public String getYn_f() {
		return yn_f;
	}
	public void setYn_f(String yn_f) {
		this.yn_f = yn_f;
	}
	public String getItem_code() {
		return item_code;
	}
	public void setItem_code(String item_code) {
		this.item_code = item_code;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public Integer getSample_no() {
		return sample_no;
	}
	public void setSample_no(Integer sample_no) {
		this.sample_no = sample_no;
	}
	public String getInsp_char() {
		return insp_char;
	}
	public void setInsp_char(String insp_char) {
		this.insp_char = insp_char;
	}
	public Double getInsp_result() {
		return insp_result;
	}
	public void setInsp_result(Double insp_result) {
		this.insp_result = insp_result;
	}
	public String getInsp_char_name() {
		return insp_char_name;
	}
	public void setInsp_char_name(String insp_char_name) {
		this.insp_char_name = insp_char_name;
	}
	public Integer getSample_qty() {
		return sample_qty;
	}
	public void setSample_qty(Integer sample_qty) {
		this.sample_qty = sample_qty;
	}
	
	
}
