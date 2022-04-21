package mit.arch.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mit.arch.domain.LotVO;
import mit.arch.mapper.LotInspResultMapper;

@Log4j
@Service
@AllArgsConstructor
public class LotInspResultServiceImpl implements LotInspResultService {
	
	private LotInspResultMapper mapper;

	@Override
	public int registerLot(LotVO lot) {
		return mapper.insertLot(lot);
	}

	@Override
	public int removeLot(String lot_no) {
		return mapper.deleteLot(lot_no);
	}

	@Override
	public int modifyLot(LotVO lot) {
		return mapper.updateLot(lot);
	}

	@Override
	public List<LotVO> getListLot() {
		return mapper.getLotList();
	}

}
