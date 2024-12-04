class ApiPaths {
  static String liveBaseURL = 'https://support.altatweertech.com/api/';
  // static String liveBaseURL = '';
  static String baseURL = liveBaseURL;

  // User Auth Apis
  static String login = "${baseURL}auth/api_login";

  // Projects Apis
  static String getProjects = "${baseURL}projects/";

  // Tasks Apis
  static String getTasks = "${baseURL}tasks";
}
