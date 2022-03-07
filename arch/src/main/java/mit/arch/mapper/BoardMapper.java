package mit.arch.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import mit.arch.domain.BoardVO;

public interface BoardMapper {
	
	@Select("SELECT * FROM item")
	public List<BoardVO> getList();

}
