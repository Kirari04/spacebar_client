
class LoginResError {
  int? code;
  String? message;
  Errors? errors;

  LoginResError({this.code, this.message, this.errors});

  LoginResError.fromJson(Map<String, dynamic> json) {
    code = json["code"];
    message = json["message"];
    errors = json["errors"] == null ? null : Errors.fromJson(json["errors"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["code"] = code;
    _data["message"] = message;
    if(errors != null) {
      _data["errors"] = errors?.toJson();
    }
    return _data;
  }
}

class Errors {
  Login? login;

  Errors({this.login});

  Errors.fromJson(Map<String, dynamic> json) {
    login = json["login"] == null ? null : Login.fromJson(json["login"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(login != null) {
      _data["login"] = login?.toJson();
    }
    return _data;
  }
}

class Login {
  List<Errors1>? errors;

  Login({this.errors});

  Login.fromJson(Map<String, dynamic> json) {
    errors = json["_errors"] == null ? null : (json["_errors"] as List).map((e) => Errors1.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(errors != null) {
      _data["_errors"] = errors?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Errors1 {
  String? message;
  String? code;

  Errors1({this.message, this.code});

  Errors1.fromJson(Map<String, dynamic> json) {
    message = json["message"];
    code = json["code"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["message"] = message;
    _data["code"] = code;
    return _data;
  }
}