package mit.arch.service;

import java.util.List;

import mit.arch.domain.InspCharVO;

public interface InspCharService {
	
	public InspCharVO get(String insp_char);
	
	public List<InspCharVO> getList();

	public int regiser(InspCharVO insp);
	
	public int modify(InspCharVO insp);
	
	public int remove(String insp_char);

}
