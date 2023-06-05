class UsersMeGuilds {
  String? id;
  dynamic afkChannelId;
  int? afkTimeout;
  dynamic banner;
  int? defaultMessageNotifications;
  dynamic description;
  dynamic discoverySplash;
  int? explicitContentFilter;
  List<dynamic>? features;
  dynamic primaryCategoryId;
  dynamic icon;
  bool? large;
  int? maxMembers;
  int? maxPresences;
  int? maxVideoChannelUsers;
  int? memberCount;
  int? presenceCount;
  dynamic templateId;
  int? mfaLevel;
  String? name;
  String? ownerId;
  String? preferredLocale;
  int? premiumSubscriptionCount;
  int? premiumTier;
  dynamic publicUpdatesChannelId;
  dynamic rulesChannelId;
  String? region;
  dynamic splash;
  dynamic systemChannelId;
  int? systemChannelFlags;
  bool? unavailable;
  int? verificationLevel;
  WelcomeScreen? welcomeScreen;
  dynamic widgetChannelId;
  bool? widgetEnabled;
  int? nsfwLevel;
  bool? nsfw;
  dynamic parent;
  bool? premiumProgressBarEnabled;

  UsersMeGuilds(
      {this.id,
      this.afkChannelId,
      this.afkTimeout,
      this.banner,
      this.defaultMessageNotifications,
      this.description,
      this.discoverySplash,
      this.explicitContentFilter,
      this.features,
      this.primaryCategoryId,
      this.icon,
      this.large,
      this.maxMembers,
      this.maxPresences,
      this.maxVideoChannelUsers,
      this.memberCount,
      this.presenceCount,
      this.templateId,
      this.mfaLevel,
      this.name,
      this.ownerId,
      this.preferredLocale,
      this.premiumSubscriptionCount,
      this.premiumTier,
      this.publicUpdatesChannelId,
      this.rulesChannelId,
      this.region,
      this.splash,
      this.systemChannelId,
      this.systemChannelFlags,
      this.unavailable,
      this.verificationLevel,
      this.welcomeScreen,
      this.widgetChannelId,
      this.widgetEnabled,
      this.nsfwLevel,
      this.nsfw,
      this.parent,
      this.premiumProgressBarEnabled});

  UsersMeGuilds.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    afkChannelId = json["afk_channel_id"];
    afkTimeout = json["afk_timeout"];
    banner = json["banner"];
    defaultMessageNotifications = json["default_message_notifications"];
    description = json["description"];
    discoverySplash = json["discovery_splash"];
    explicitContentFilter = json["explicit_content_filter"];
    features = json["features"] ?? [];
    primaryCategoryId = json["primary_category_id"];
    icon = json["icon"];
    large = json["large"];
    maxMembers = json["max_members"];
    maxPresences = json["max_presences"];
    maxVideoChannelUsers = json["max_video_channel_users"];
    memberCount = json["member_count"];
    presenceCount = json["presence_count"];
    templateId = json["template_id"];
    mfaLevel = json["mfa_level"];
    name = json["name"];
    ownerId = json["owner_id"];
    preferredLocale = json["preferred_locale"];
    premiumSubscriptionCount = json["premium_subscription_count"];
    premiumTier = json["premium_tier"];
    publicUpdatesChannelId = json["public_updates_channel_id"];
    rulesChannelId = json["rules_channel_id"];
    region = json["region"];
    splash = json["splash"];
    systemChannelId = json["system_channel_id"];
    systemChannelFlags = json["system_channel_flags"];
    unavailable = json["unavailable"];
    verificationLevel = json["verification_level"];
    welcomeScreen = json["welcome_screen"] == null
        ? null
        : WelcomeScreen.fromJson(json["welcome_screen"]);
    widgetChannelId = json["widget_channel_id"];
    widgetEnabled = json["widget_enabled"];
    nsfwLevel = json["nsfw_level"];
    nsfw = json["nsfw"];
    parent = json["parent"];
    premiumProgressBarEnabled = json["premium_progress_bar_enabled"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["afk_channel_id"] = afkChannelId;
    data["afk_timeout"] = afkTimeout;
    data["banner"] = banner;
    data["default_message_notifications"] = defaultMessageNotifications;
    data["description"] = description;
    data["discovery_splash"] = discoverySplash;
    data["explicit_content_filter"] = explicitContentFilter;
    if (features != null) {
      data["features"] = features;
    }
    data["primary_category_id"] = primaryCategoryId;
    data["icon"] = icon;
    data["large"] = large;
    data["max_members"] = maxMembers;
    data["max_presences"] = maxPresences;
    data["max_video_channel_users"] = maxVideoChannelUsers;
    data["member_count"] = memberCount;
    data["presence_count"] = presenceCount;
    data["template_id"] = templateId;
    data["mfa_level"] = mfaLevel;
    data["name"] = name;
    data["owner_id"] = ownerId;
    data["preferred_locale"] = preferredLocale;
    data["premium_subscription_count"] = premiumSubscriptionCount;
    data["premium_tier"] = premiumTier;
    data["public_updates_channel_id"] = publicUpdatesChannelId;
    data["rules_channel_id"] = rulesChannelId;
    data["region"] = region;
    data["splash"] = splash;
    data["system_channel_id"] = systemChannelId;
    data["system_channel_flags"] = systemChannelFlags;
    data["unavailable"] = unavailable;
    data["verification_level"] = verificationLevel;
    if (welcomeScreen != null) {
      data["welcome_screen"] = welcomeScreen?.toJson();
    }
    data["widget_channel_id"] = widgetChannelId;
    data["widget_enabled"] = widgetEnabled;
    data["nsfw_level"] = nsfwLevel;
    data["nsfw"] = nsfw;
    data["parent"] = parent;
    data["premium_progress_bar_enabled"] = premiumProgressBarEnabled;
    return data;
  }
}

class WelcomeScreen {
  bool? enabled;
  String? description;
  List<dynamic>? welcomeChannels;

  WelcomeScreen({this.enabled, this.description, this.welcomeChannels});

  WelcomeScreen.fromJson(Map<String, dynamic> json) {
    enabled = json["enabled"];
    description = json["description"];
    welcomeChannels = json["welcome_channels"] ?? [];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["enabled"] = enabled;
    data["description"] = description;
    if (welcomeChannels != null) {
      data["welcome_channels"] = welcomeChannels;
    }
    return data;
  }
}
