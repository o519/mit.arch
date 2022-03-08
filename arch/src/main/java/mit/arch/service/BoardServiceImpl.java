package mit.arch.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mit.arch.domain.BoardVO;
import mit.arch.mapper.BoardMapper;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService {
	
	private BoardMapper mapper;

	@Override
	public void register(BoardVO board) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<BoardVO> getList() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}

	@Override
	public BoardVO get(String item_code) {
		// TODO Auto-generated method stub
		return mapper.read(item_code);
	}

	@Override
	public boolean modify(BoardVO board) {
		log.info("modify" + board);
		return mapper.update(board) == 1;
	}

	@Override
	public boolean remove(String item_code) {
		log.info("remove" + item_code);
		return mapper.delete(item_code) == 1;
	}


}
