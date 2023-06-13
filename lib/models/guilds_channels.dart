
class GuildsChannels {
  String? id;
  int? type;
  String? lastMessageId;
  int? flags;
  String? lastPinTimestamp;
  String? guildId;
  String? name;
  String? parentId;
  int? rateLimitPerUser;
  String? topic;
  int? position;
  List<PermissionOverwrites>? permissionOverwrites;
  bool? nsfw;
  IconEmoji? iconEmoji;
  dynamic themeColor;

  GuildsChannels({this.id, this.type, this.lastMessageId, this.flags, this.lastPinTimestamp, this.guildId, this.name, this.parentId, this.rateLimitPerUser, this.topic, this.position, this.permissionOverwrites, this.nsfw, this.iconEmoji, this.themeColor});

  GuildsChannels.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    type = json["type"];
    lastMessageId = json["last_message_id"];
    flags = json["flags"];
    lastPinTimestamp = json["last_pin_timestamp"];
    guildId = json["guild_id"];
    name = json["name"];
    parentId = json["parent_id"];
    rateLimitPerUser = json["rate_limit_per_user"];
    topic = json["topic"];
    position = json["position"];
    permissionOverwrites = json["permission_overwrites"] == null ? null : (json["permission_overwrites"] as List).map((e) => PermissionOverwrites.fromJson(e)).toList();
    nsfw = json["nsfw"];
    iconEmoji = json["icon_emoji"] == null ? null : IconEmoji.fromJson(json["icon_emoji"]);
    themeColor = json["theme_color"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["type"] = type;
    _data["last_message_id"] = lastMessageId;
    _data["flags"] = flags;
    _data["last_pin_timestamp"] = lastPinTimestamp;
    _data["guild_id"] = guildId;
    _data["name"] = name;
    _data["parent_id"] = parentId;
    _data["rate_limit_per_user"] = rateLimitPerUser;
    _data["topic"] = topic;
    _data["position"] = position;
    if(permissionOverwrites != null) {
      _data["permission_overwrites"] = permissionOverwrites?.map((e) => e.toJson()).toList();
    }
    _data["nsfw"] = nsfw;
    if(iconEmoji != null) {
      _data["icon_emoji"] = iconEmoji?.toJson();
    }
    _data["theme_color"] = themeColor;
    return _data;
  }
}

class IconEmoji {
  dynamic id;
  String? name;

  IconEmoji({this.id, this.name});

  IconEmoji.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class PermissionOverwrites {
  String? id;
  int? type;
  String? allow;
  String? deny;

  PermissionOverwrites({this.id, this.type, this.allow, this.deny});

  PermissionOverwrites.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    type = json["type"];
    allow = json["allow"];
    deny = json["deny"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["type"] = type;
    _data["allow"] = allow;
    _data["deny"] = deny;
    return _data;
  }
}