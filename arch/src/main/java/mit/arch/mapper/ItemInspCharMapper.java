package mit.arch.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import mit.arch.domain.ItemInspCharVO;

public interface ItemInspCharMapper {

	public int insertItemInspChar(ItemInspCharVO itemInspChar);
	
	public List<ItemInspCharVO> getList();
	
	public int delete(@Param("item_code") String item_code, @Param("insp_char") String insp_char);
}
