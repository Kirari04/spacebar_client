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
    final Map<String, dynamic> data = <String, dynamic>{};
    data["icon"] = icon;
    data["id"] = id;
    data["last_message_id"] = lastMessageId;
    data["name"] = name;
    data["origin_channel_id"] = originChannelId;
    data["owner_id"] = ownerId;
    if (recipients != null) {
      data["recipients"] = recipients?.map((e) => e.toJson()).toList();
    }
    data["type"] = type;
    return data;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data["avatar"] = avatar;
    data["discriminator"] = discriminator;
    data["id"] = id;
    data["public_flags"] = publicFlags;
    data["username"] = username;
    return data;
  }
}
