package together.dao;

import java.util.List;

import together.model.ClubDTO;
import together.model.Club_Member_JoinDTO;
import together.model.MemberDTO;

public interface Club_Member_JoinDAO {
	
	// 가입정보 가져오기 : 중복 가입 방지
	public Club_Member_JoinDTO getJoin(Club_Member_JoinDTO cmjdto);

	// member 테이블과 연동할 것, merge 후 수정
	public MemberDTO getMember(String sess);
	
	// 모임가입 테이블에 insert 해서 회원이 모임을 가입
	public int clubJoin(Club_Member_JoinDTO cmj);
	
	// club 테이블과 연동할 것, merge 후 수정, 클럽 멤버수 한명 증가
	public void updateMemberCount(int club_num);
	
	// 모임에 가입된 회원 리스트 불러오기
	public List<Club_Member_JoinDTO> getClubMember(int club_num);

	// club 테이블과 연동할 것, merge 후 수정, 클럽 하나 상세정보가져오기
	public ClubDTO getClubCont(int club_num);
	
	// 내가 가입한 모임 목록을 가져오기
	public List<Club_Member_JoinDTO> getJoinedClub(String sess);
	
	// club 테이블과 연동할 것, merge 후 수정, 특정 클럽번호들의 클럽 리스트 가져오기
	public List<ClubDTO> getClubList(List<Club_Member_JoinDTO> cmjlist);
	
	// 모임장인지 확인
	public String getClubHostYN(Club_Member_JoinDTO cmjdto);
	
	// 모임 탈퇴
	public int leaveClub(Club_Member_JoinDTO cmjdto);
	
	// club 테이블과 연동할 것, merge 후 수정, 탈퇴 후 클럽 멤버수 1명 감소
	public void minusMemberCount(int club_num);
	
	// 내가 운영하는 모임 리스트
	public List<Club_Member_JoinDTO> getMyClub(String sess);
}
