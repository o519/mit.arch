package mit.arch.service;

import java.util.List;

import mit.arch.domain.ItemInspCharVO;

public interface ItemInspCharService {
	
	public int insertItemInspChar(ItemInspCharVO itemInspChar);
	
	public List<ItemInspCharVO> getList();
	
	public int delete(String item_code, String insp_char);

}
