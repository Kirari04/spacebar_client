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

  UsersMe(
      {this.id,
      this.premiumSince,
      this.verified,
      this.username,
      this.discriminator,
      this.publicFlags,
      this.avatar,
      this.accentColor,
      this.banner,
      this.bio,
      this.bot,
      this.premiumType,
      this.themeColors,
      this.pronouns,
      this.flags,
      this.mfaEnabled,
      this.email,
      this.phone,
      this.nsfwAllowed,
      this.premium,
      this.purchasedFlags,
      this.premiumUsageFlags,
      this.disabled});

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
    themeColors = json["theme_colors"] == null
        ? null
        : List<int>.from(json["theme_colors"]);
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["premium_since"] = premiumSince;
    data["verified"] = verified;
    data["username"] = username;
    data["discriminator"] = discriminator;
    data["public_flags"] = publicFlags;
    data["avatar"] = avatar;
    data["accent_color"] = accentColor;
    data["banner"] = banner;
    data["bio"] = bio;
    data["bot"] = bot;
    data["premium_type"] = premiumType;
    if (themeColors != null) {
      data["theme_colors"] = themeColors;
    }
    data["pronouns"] = pronouns;
    data["flags"] = flags;
    data["mfa_enabled"] = mfaEnabled;
    data["email"] = email;
    data["phone"] = phone;
    data["nsfw_allowed"] = nsfwAllowed;
    data["premium"] = premium;
    data["purchased_flags"] = purchasedFlags;
    data["premium_usage_flags"] = premiumUsageFlags;
    data["disabled"] = disabled;
    return data;
  }
}
