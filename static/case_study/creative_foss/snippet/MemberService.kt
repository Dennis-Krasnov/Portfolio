@Service
class MemberService(val memberRepository: MemberRepository) {
    fun ensureMemberExists(currentUser: SessionData) {
        val member = memberRepository.findByUsernameAndOrigin(currentUser.username, "GITHUB")

        if (member == null) {
            memberRepository.save(Member(currentUser.username))
        }
    }
}