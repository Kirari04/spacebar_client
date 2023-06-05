class LoginRes {
  String? token;
  Settings? settings;

  LoginRes({this.token, this.settings});

  LoginRes.fromJson(Map<String, dynamic> json) {
    token = json["token"];
    settings =
        json["settings"] == null ? null : Settings.fromJson(json["settings"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["token"] = token;
    if (settings != null) {
      data["settings"] = settings?.toJson();
    }
    return data;
  }
}

class Settings {
  String? index;
  int? afkTimeout;
  bool? allowAccessibilityDetection;
  bool? animateEmoji;
  int? animateStickers;
  bool? contactSyncEnabled;
  bool? convertEmoticons;
  CustomStatus? customStatus;
  bool? defaultGuildsRestricted;
  bool? detectPlatformAccounts;
  bool? developerMode;
  bool? disableGamesTab;
  bool? enableTtsCommand;
  int? explicitContentFilter;
  FriendSourceFlags? friendSourceFlags;
  bool? gatewayConnected;
  bool? gifAutoPlay;
  List<GuildFolders>? guildFolders;
  List<String>? guildPositions;
  bool? inlineAttachmentMedia;
  bool? inlineEmbedMedia;
  String? locale;
  bool? messageDisplayCompact;
  bool? nativePhoneIntegrationEnabled;
  bool? renderEmbeds;
  bool? renderReactions;
  List<String>? restrictedGuilds;
  bool? showCurrentGame;
  String? status;
  bool? streamNotificationsEnabled;
  String? theme;
  int? timezoneOffset;

  Settings(
      {this.index,
      this.afkTimeout,
      this.allowAccessibilityDetection,
      this.animateEmoji,
      this.animateStickers,
      this.contactSyncEnabled,
      this.convertEmoticons,
      this.customStatus,
      this.defaultGuildsRestricted,
      this.detectPlatformAccounts,
      this.developerMode,
      this.disableGamesTab,
      this.enableTtsCommand,
      this.explicitContentFilter,
      this.friendSourceFlags,
      this.gatewayConnected,
      this.gifAutoPlay,
      this.guildFolders,
      this.guildPositions,
      this.inlineAttachmentMedia,
      this.inlineEmbedMedia,
      this.locale,
      this.messageDisplayCompact,
      this.nativePhoneIntegrationEnabled,
      this.renderEmbeds,
      this.renderReactions,
      this.restrictedGuilds,
      this.showCurrentGame,
      this.status,
      this.streamNotificationsEnabled,
      this.theme,
      this.timezoneOffset});

  Settings.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    afkTimeout = json["afk_timeout"];
    allowAccessibilityDetection = json["allow_accessibility_detection"];
    animateEmoji = json["animate_emoji"];
    animateStickers = json["animate_stickers"];
    contactSyncEnabled = json["contact_sync_enabled"];
    convertEmoticons = json["convert_emoticons"];
    customStatus = json["custom_status"] == null
        ? null
        : CustomStatus.fromJson(json["custom_status"]);
    defaultGuildsRestricted = json["default_guilds_restricted"];
    detectPlatformAccounts = json["detect_platform_accounts"];
    developerMode = json["developer_mode"];
    disableGamesTab = json["disable_games_tab"];
    enableTtsCommand = json["enable_tts_command"];
    explicitContentFilter = json["explicit_content_filter"];
    friendSourceFlags = json["friend_source_flags"] == null
        ? null
        : FriendSourceFlags.fromJson(json["friend_source_flags"]);
    gatewayConnected = json["gateway_connected"];
    gifAutoPlay = json["gif_auto_play"];
    guildFolders = json["guild_folders"] == null
        ? null
        : (json["guild_folders"] as List)
            .map((e) => GuildFolders.fromJson(e))
            .toList();
    guildPositions = json["guild_positions"] == null
        ? null
        : List<String>.from(json["guild_positions"]);
    inlineAttachmentMedia = json["inline_attachment_media"];
    inlineEmbedMedia = json["inline_embed_media"];
    locale = json["locale"];
    messageDisplayCompact = json["message_display_compact"];
    nativePhoneIntegrationEnabled = json["native_phone_integration_enabled"];
    renderEmbeds = json["render_embeds"];
    renderReactions = json["render_reactions"];
    restrictedGuilds = json["restricted_guilds"] == null
        ? null
        : List<String>.from(json["restricted_guilds"]);
    showCurrentGame = json["show_current_game"];
    status = json["status"];
    streamNotificationsEnabled = json["stream_notifications_enabled"];
    theme = json["theme"];
    timezoneOffset = json["timezone_offset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["index"] = index;
    data["afk_timeout"] = afkTimeout;
    data["allow_accessibility_detection"] = allowAccessibilityDetection;
    data["animate_emoji"] = animateEmoji;
    data["animate_stickers"] = animateStickers;
    data["contact_sync_enabled"] = contactSyncEnabled;
    data["convert_emoticons"] = convertEmoticons;
    if (customStatus != null) {
      data["custom_status"] = customStatus?.toJson();
    }
    data["default_guilds_restricted"] = defaultGuildsRestricted;
    data["detect_platform_accounts"] = detectPlatformAccounts;
    data["developer_mode"] = developerMode;
    data["disable_games_tab"] = disableGamesTab;
    data["enable_tts_command"] = enableTtsCommand;
    data["explicit_content_filter"] = explicitContentFilter;
    if (friendSourceFlags != null) {
      data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    data["gateway_connected"] = gatewayConnected;
    data["gif_auto_play"] = gifAutoPlay;
    if (guildFolders != null) {
      data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if (guildPositions != null) {
      data["guild_positions"] = guildPositions;
    }
    data["inline_attachment_media"] = inlineAttachmentMedia;
    data["inline_embed_media"] = inlineEmbedMedia;
    data["locale"] = locale;
    data["message_display_compact"] = messageDisplayCompact;
    data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    data["render_embeds"] = renderEmbeds;
    data["render_reactions"] = renderReactions;
    if (restrictedGuilds != null) {
      data["restricted_guilds"] = restrictedGuilds;
    }
    data["show_current_game"] = showCurrentGame;
    data["status"] = status;
    data["stream_notifications_enabled"] = streamNotificationsEnabled;
    data["theme"] = theme;
    data["timezone_offset"] = timezoneOffset;
    return data;
  }
}

class GuildFolders {
  int? color;
  List<String>? guildIds;
  int? id;
  String? name;

  GuildFolders({this.color, this.guildIds, this.id, this.name});

  GuildFolders.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    guildIds =
        json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["color"] = color;
    if (guildIds != null) {
      data["guild_ids"] = guildIds;
    }
    data["id"] = id;
    data["name"] = name;
    return data;
  }
}

class FriendSourceFlags {
  bool? all;

  FriendSourceFlags({this.all});

  FriendSourceFlags.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["all"] = all;
    return data;
  }
}

class CustomStatus {
  String? emojiId;
  String? emojiName;
  int? expiresAt;
  String? text;

  CustomStatus({this.emojiId, this.emojiName, this.expiresAt, this.text});

  CustomStatus.fromJson(Map<String, dynamic> json) {
    emojiId = json["emoji_id"];
    emojiName = json["emoji_name"];
    expiresAt = json["expires_at"];
    text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["emoji_id"] = emojiId;
    data["emoji_name"] = emojiName;
    data["expires_at"] = expiresAt;
    data["text"] = text;
    return data;
  }
}
