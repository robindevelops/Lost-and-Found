enum RequestMethod {
  GET,
  POST,
  PUT,
  DELETE,
  PATCH,
}

class ApiService {
  void request(
    String ApiPath, {
    required RequestMethod method,
    data,
    quearyparameter,
  }) async {}
}
