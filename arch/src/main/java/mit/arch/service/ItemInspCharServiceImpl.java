package mit.arch.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mit.arch.domain.ItemInspCharVO;
import mit.arch.mapper.ItemInspCharMapper;

@Log4j
@Service
@AllArgsConstructor
public class ItemInspCharServiceImpl implements ItemInspCharService {
	
	private ItemInspCharMapper mapper;

	@Override
	public int insertItemInspChar(ItemInspCharVO itemInspChar) {
		// TODO Auto-generated method stub
		return mapper.insertItemInspChar(itemInspChar);
	}

	@Override
	public List<ItemInspCharVO> getList() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}

	@Override
	public int delete(String item_code, String insp_char) {
		// TODO Auto-generated method stub
		return mapper.delete(item_code, insp_char);
	}

}
