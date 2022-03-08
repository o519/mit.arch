package mit.arch.service;

import java.util.List;

import mit.arch.domain.BoardVO;

public interface BoardService {
	
	public void register(BoardVO board);
	
	public BoardVO get(String item_code);
	
	public boolean modify(BoardVO board);
	
	public boolean remove(String item_code);
	
	public List<BoardVO> getList();

}
