package mit.arch.service;

import java.util.List;

import mit.arch.domain.BoardVO;

public interface BoardService {
	
	public int register(BoardVO board);
	
	public BoardVO get(String item_code);
	
	public int modify(BoardVO board);
	
	public int remove(String item_code);
	
	public List<BoardVO> getList();

}
