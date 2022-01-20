@Table("member")
data class Member(
    var username: String,
    val origin: String = "GITHUB",
    @Id var id: Int? = null,
)