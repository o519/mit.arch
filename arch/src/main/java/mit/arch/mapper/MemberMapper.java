package mit.arch.mapper;

import mit.arch.domain.MemberVO;

public interface MemberMapper {
	
	public MemberVO read(String userid);

}
