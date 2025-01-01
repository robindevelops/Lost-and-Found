class BaseHelper {
  /// Checks user input for errors and returns an error message if validation fails.
  /// Returns `null` if all inputs are valid.
  String? authChecker({
    required String email,
    String? password,
    bool isPasswordRequired = false,
  }) {
    if (email.isEmpty) {
      return 'Email is required.';
    }

    if (isPasswordRequired) {
      if (password == null || password.isEmpty) {
        return 'Password is required.';
      }
      if (password.length < 6) {
        return 'Password must be at least 6 characters long.';
      }
    }

    return null; // No errors
  }
}
