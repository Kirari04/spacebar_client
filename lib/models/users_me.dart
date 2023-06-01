
class UsersMe {
  String? id;
  String? premiumSince;
  bool? verified;
  String? username;
  String? discriminator;
  int? publicFlags;
  String? avatar;
  int? accentColor;
  String? banner;
  String? bio;
  bool? bot;
  int? premiumType;
  List<int>? themeColors;
  String? pronouns;
  String? flags;
  bool? mfaEnabled;
  String? email;
  String? phone;
  bool? nsfwAllowed;
  bool? premium;
  int? purchasedFlags;
  int? premiumUsageFlags;
  bool? disabled;

  UsersMe({this.id, this.premiumSince, this.verified, this.username, this.discriminator, this.publicFlags, this.avatar, this.accentColor, this.banner, this.bio, this.bot, this.premiumType, this.themeColors, this.pronouns, this.flags, this.mfaEnabled, this.email, this.phone, this.nsfwAllowed, this.premium, this.purchasedFlags, this.premiumUsageFlags, this.disabled});

  UsersMe.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    premiumSince = json["premium_since"];
    verified = json["verified"];
    username = json["username"];
    discriminator = json["discriminator"];
    publicFlags = json["public_flags"];
    avatar = json["avatar"];
    accentColor = json["accent_color"];
    banner = json["banner"];
    bio = json["bio"];
    bot = json["bot"];
    premiumType = json["premium_type"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    flags = json["flags"];
    mfaEnabled = json["mfa_enabled"];
    email = json["email"];
    phone = json["phone"];
    nsfwAllowed = json["nsfw_allowed"];
    premium = json["premium"];
    purchasedFlags = json["purchased_flags"];
    premiumUsageFlags = json["premium_usage_flags"];
    disabled = json["disabled"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["premium_since"] = premiumSince;
    _data["verified"] = verified;
    _data["username"] = username;
    _data["discriminator"] = discriminator;
    _data["public_flags"] = publicFlags;
    _data["avatar"] = avatar;
    _data["accent_color"] = accentColor;
    _data["banner"] = banner;
    _data["bio"] = bio;
    _data["bot"] = bot;
    _data["premium_type"] = premiumType;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["flags"] = flags;
    _data["mfa_enabled"] = mfaEnabled;
    _data["email"] = email;
    _data["phone"] = phone;
    _data["nsfw_allowed"] = nsfwAllowed;
    _data["premium"] = premium;
    _data["purchased_flags"] = purchasedFlags;
    _data["premium_usage_flags"] = premiumUsageFlags;
    _data["disabled"] = disabled;
    return _data;
  }
}