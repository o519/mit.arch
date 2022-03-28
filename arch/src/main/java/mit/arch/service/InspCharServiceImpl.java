package mit.arch.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mit.arch.domain.InspCharVO;
import mit.arch.mapper.InspCharMapper;

@Log4j
@Service
@AllArgsConstructor
public class InspCharServiceImpl implements InspCharService {
	
	private InspCharMapper mapper;

	@Override
	public List<InspCharVO> getList() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}

	@Override
	public int regiser(InspCharVO insp) {
		// TODO Auto-generated method stub
		return mapper.insert(insp);
	}

	@Override
	public int modify(InspCharVO insp) {
		// TODO Auto-generated method stub
		return mapper.update(insp);
	}

	@Override
	public int remove(String insp_char) {
		// TODO Auto-generated method stub
		return mapper.delete(insp_char);
	}

	@Override
	public InspCharVO get(String insp_char) {
		// TODO Auto-generated method stub
		return mapper.read(insp_char);
	}

}
