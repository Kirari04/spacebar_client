class PingRes {
  String? ping;
  PingResInstance? instance;

  PingRes({this.ping, this.instance});

  PingRes.fromJson(Map<String, dynamic> json) {
    ping = json["ping"];
    instance = json["instance"] == null
        ? null
        : PingResInstance.fromJson(json["instance"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["ping"] = ping;
    if (instance != null) {
      data["instance"] = instance?.toJson();
    }
    return data;
  }
}

class PingResInstance {
  String? id;
  String? name;
  String? description;
  String? image;
  String? correspondenceEmail;
  String? correspondenceUserId;
  String? frontPage;
  String? tosPage;

  PingResInstance(
      {this.id,
      this.name,
      this.description,
      this.image,
      this.correspondenceEmail,
      this.correspondenceUserId,
      this.frontPage,
      this.tosPage});

  PingResInstance.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    description = json["description"];
    image = json["image"];
    correspondenceEmail = json["correspondenceEmail"];
    correspondenceUserId = json["correspondenceUserID"];
    frontPage = json["frontPage"];
    tosPage = json["tosPage"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["name"] = name;
    data["description"] = description;
    data["image"] = image;
    data["correspondenceEmail"] = correspondenceEmail;
    data["correspondenceUserID"] = correspondenceUserId;
    data["frontPage"] = frontPage;
    data["tosPage"] = tosPage;
    return data;
  }
}
