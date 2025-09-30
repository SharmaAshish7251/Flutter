class LoginModel {

  final String message;
  final int status;

  LoginModel({
    required this.message,
    required this.status,
  });


  //  why 2 because we see response from api, using only 1 modal --- we have same response from login and signup api
  factory LoginModel.fromJson(Map<String, dynamic> json){
    return LoginModel(

      message: json['message'],
      status: json['status'],

    );
  }


}