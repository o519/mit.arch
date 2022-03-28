package mit.arch.mapper;

import java.util.List;

import mit.arch.domain.BoardVO;

public interface BoardMapper {
	
	//@Select("SELECT * FROM item")
	public List<BoardVO> getList();
	
	public int insert(BoardVO board);
	
	public BoardVO board(String item_code);
	
	public void insertSelectKey(BoardVO board);
	
	public BoardVO read(String item_code);
	
	public int delete(String item_code);
	
	public int update(BoardVO board);
}
