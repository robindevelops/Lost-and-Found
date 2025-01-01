class ApiPaths {
  static String liveBaseURL = 'http://localhost:4000/api/';
  // static String liveBaseURL = '';
  static String baseURL = liveBaseURL;

  // User Auth Apis
  static String login = "${baseURL}auth/api_login";

  // Projects Apis
  static String getitems = "${baseURL}items";

  // Tasks Apis
  static String getTasks = "${baseURL}tasks";
}
