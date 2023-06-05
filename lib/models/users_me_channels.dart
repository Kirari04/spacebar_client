class UsersMeChannels {
  String? icon;
  String? id;
  String? lastMessageId;
  String? name;
  String? originChannelId;
  String? ownerId;
  List<Recipients>? recipients;
  int? type;

  UsersMeChannels(
      {this.icon,
      this.id,
      this.lastMessageId,
      this.name,
      this.originChannelId,
      this.ownerId,
      this.recipients,
      this.type});

  UsersMeChannels.fromJson(Map<String, dynamic> json) {
    icon = json["icon"];
    id = json["id"];
    lastMessageId = json["last_message_id"];
    name = json["name"];
    originChannelId = json["origin_channel_id"];
    ownerId = json["owner_id"];
    recipients = json["recipients"] == null
        ? null
        : (json["recipients"] as List)
            .map((e) => Recipients.fromJson(e))
            .toList();
    type = json["type"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["icon"] = icon;
    _data["id"] = id;
    _data["last_message_id"] = lastMessageId;
    _data["name"] = name;
    _data["origin_channel_id"] = originChannelId;
    _data["owner_id"] = ownerId;
    if (recipients != null) {
      _data["recipients"] = recipients?.map((e) => e.toJson()).toList();
    }
    _data["type"] = type;
    return _data;
  }
}

class Recipients {
  String? avatar;
  String? discriminator;
  String? id;
  int? publicFlags;
  String? username;

  Recipients(
      {this.avatar,
      this.discriminator,
      this.id,
      this.publicFlags,
      this.username});

  Recipients.fromJson(Map<String, dynamic> json) {
    avatar = json["avatar"];
    discriminator = json["discriminator"];
    id = json["id"];
    publicFlags = json["public_flags"];
    username = json["username"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["avatar"] = avatar;
    _data["discriminator"] = discriminator;
    _data["id"] = id;
    _data["public_flags"] = publicFlags;
    _data["username"] = username;
    return _data;
  }
}
