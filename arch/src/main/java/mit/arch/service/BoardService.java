package mit.arch.service;

import java.util.List;

import mit.arch.domain.BoardVO;
import mit.arch.domain.ItemInspCharVO;

public interface BoardService {
	
	public int register(BoardVO board);
	
	public BoardVO get(String item_code);
	
	public int modify(BoardVO board);
	
	public int remove(String item_code); //1 삭제 성공 0 삭제 실패 2 삭제 불가
	
	public List<BoardVO> getList();
	
	public List<String> getItemCode();
	
	public int cnt(String item_code);

}
