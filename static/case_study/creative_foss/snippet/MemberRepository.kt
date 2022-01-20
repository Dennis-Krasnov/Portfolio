interface MemberRepository : CrudRepository<Member, Int> {
    fun findByUsernameAndOrigin(username: String, origin: String): Member?
}