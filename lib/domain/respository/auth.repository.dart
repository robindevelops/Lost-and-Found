abstract class AuthRepository {
  Future signup({required email, required password}) async {}
  Future signin({required email, required password}) async {}
  Future resetPassword({required email}) async {}
}
