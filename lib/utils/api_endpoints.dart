class ApiEndpoints {
  static final String baseUrl = "http://restapi.adequateshop.com/api/";
  static AuthEndpoints authEndPoints = AuthEndpoints();
}

class AuthEndpoints {
  final String registeremail = 'authaccount/registration';

  final String loginemail = 'authaccount/login';
}
