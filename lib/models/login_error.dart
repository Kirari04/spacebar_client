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
    final Map<String, dynamic> data = <String, dynamic>{};
    data["code"] = code;
    data["message"] = message;
    if (errors != null) {
      data["errors"] = errors?.toJson();
    }
    return data;
  }
}

class Errors {
  Login? login;

  Errors({this.login});

  Errors.fromJson(Map<String, dynamic> json) {
    login = json["login"] == null ? null : Login.fromJson(json["login"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (login != null) {
      data["login"] = login?.toJson();
    }
    return data;
  }
}

class Login {
  List<Errors1>? errors;

  Login({this.errors});

  Login.fromJson(Map<String, dynamic> json) {
    errors = json["_errors"] == null
        ? null
        : (json["_errors"] as List).map((e) => Errors1.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (errors != null) {
      data["_errors"] = errors?.map((e) => e.toJson()).toList();
    }
    return data;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data["message"] = message;
    data["code"] = code;
    return data;
  }
}
