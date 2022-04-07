package mit.arch.mapper;

import java.util.List;

import mit.arch.domain.InspCharVO;

public interface InspCharMapper {
	
	public InspCharVO read(String insp_char);
	
	public List<InspCharVO> getList();
	
	public int insert(InspCharVO insp);
	
	public int delete(String insp_char);
	
	public int update(InspCharVO insp);
	
	public List<String> getInspChar();
	
	public int cnt(String insp_char);

}
