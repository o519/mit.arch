package mit.arch.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import mit.arch.domain.BoardVO;
import mit.arch.domain.ItemInspCharVO;
import mit.arch.mapper.BoardMapper;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService {
	
	private BoardMapper mapper;

	@Override
	public int register(BoardVO board) {
		// TODO Auto-generated method stub
		return mapper.insert(board);
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
	public int modify(BoardVO board) {
		log.info("modify" + board);
		return mapper.update(board);
	}

	@Override
	public int remove(String item_code) {
		//1.등록되어있는지 확인
		if(mapper.cnt(item_code) != 0)
			return 2;
		else
			return mapper.delete(item_code);
		
		//2-1 등록안되어 있으면 있으면 삭제
		
		//2-2 등록이 되어있으면 아무것도 안하고
	}

	@Override
	public List<String> getItemCode() {
		// TODO Auto-generated method stub
		return mapper.getItemCode();
	}

	@Override
	public int cnt(String item_code) {
		// TODO Auto-generated method stub
		return mapper.cnt(item_code);
	}


}
