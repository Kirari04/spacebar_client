
class GuildsChannels {
  String? createdAt;
  String? name;
  String? icon;
  int? type;
  List<Recipients>? recipients;
  String? lastMessageId;
  String? guildId;
  String? guild;
  String? parentId;
  String? parent;
  String? ownerId;
  Owner? owner;
  int? lastPinTimestamp;
  int? defaultAutoArchiveDuration;
  int? position;
  List<PermissionOverwrites>? permissionOverwrites;
  int? videoQualityMode;
  int? bitrate;
  int? userLimit;
  bool? nsfw;
  int? rateLimitPerUser;
  String? topic;
  List<Invites>? invites;
  String? retentionPolicyId;
  List<Messages>? messages;
  List<VoiceStates>? voiceStates;
  List<ReadStates>? readStates;
  List<Webhooks>? webhooks;
  int? flags;
  int? defaultThreadRateLimitPerUser;
  String? id;

  GuildsChannels({this.createdAt, this.name, this.icon, this.type, this.recipients, this.lastMessageId, this.guildId, this.guild, this.parentId, this.parent, this.ownerId, this.owner, this.lastPinTimestamp, this.defaultAutoArchiveDuration, this.position, this.permissionOverwrites, this.videoQualityMode, this.bitrate, this.userLimit, this.nsfw, this.rateLimitPerUser, this.topic, this.invites, this.retentionPolicyId, this.messages, this.voiceStates, this.readStates, this.webhooks, this.flags, this.defaultThreadRateLimitPerUser, this.id});

  GuildsChannels.fromJson(Map<String, dynamic> json) {
    createdAt = json["created_at"];
    name = json["name"];
    icon = json["icon"];
    type = json["type"];
    recipients = json["recipients"] == null ? null : (json["recipients"] as List).map((e) => Recipients.fromJson(e)).toList();
    lastMessageId = json["last_message_id"];
    guildId = json["guild_id"];
    guild = json["guild"];
    parentId = json["parent_id"];
    parent = json["parent"];
    ownerId = json["owner_id"];
    owner = json["owner"] == null ? null : Owner.fromJson(json["owner"]);
    lastPinTimestamp = json["last_pin_timestamp"];
    defaultAutoArchiveDuration = json["default_auto_archive_duration"];
    position = json["position"];
    permissionOverwrites = json["permission_overwrites"] == null ? null : (json["permission_overwrites"] as List).map((e) => PermissionOverwrites.fromJson(e)).toList();
    videoQualityMode = json["video_quality_mode"];
    bitrate = json["bitrate"];
    userLimit = json["user_limit"];
    nsfw = json["nsfw"];
    rateLimitPerUser = json["rate_limit_per_user"];
    topic = json["topic"];
    invites = json["invites"] == null ? null : (json["invites"] as List).map((e) => Invites.fromJson(e)).toList();
    retentionPolicyId = json["retention_policy_id"];
    messages = json["messages"] == null ? null : (json["messages"] as List).map((e) => Messages.fromJson(e)).toList();
    voiceStates = json["voice_states"] == null ? null : (json["voice_states"] as List).map((e) => VoiceStates.fromJson(e)).toList();
    readStates = json["read_states"] == null ? null : (json["read_states"] as List).map((e) => ReadStates.fromJson(e)).toList();
    webhooks = json["webhooks"] == null ? null : (json["webhooks"] as List).map((e) => Webhooks.fromJson(e)).toList();
    flags = json["flags"];
    defaultThreadRateLimitPerUser = json["default_thread_rate_limit_per_user"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["created_at"] = createdAt;
    _data["name"] = name;
    _data["icon"] = icon;
    _data["type"] = type;
    if(recipients != null) {
      _data["recipients"] = recipients?.map((e) => e.toJson()).toList();
    }
    _data["last_message_id"] = lastMessageId;
    _data["guild_id"] = guildId;
    _data["guild"] = guild;
    _data["parent_id"] = parentId;
    _data["parent"] = parent;
    _data["owner_id"] = ownerId;
    if(owner != null) {
      _data["owner"] = owner?.toJson();
    }
    _data["last_pin_timestamp"] = lastPinTimestamp;
    _data["default_auto_archive_duration"] = defaultAutoArchiveDuration;
    _data["position"] = position;
    if(permissionOverwrites != null) {
      _data["permission_overwrites"] = permissionOverwrites?.map((e) => e.toJson()).toList();
    }
    _data["video_quality_mode"] = videoQualityMode;
    _data["bitrate"] = bitrate;
    _data["user_limit"] = userLimit;
    _data["nsfw"] = nsfw;
    _data["rate_limit_per_user"] = rateLimitPerUser;
    _data["topic"] = topic;
    if(invites != null) {
      _data["invites"] = invites?.map((e) => e.toJson()).toList();
    }
    _data["retention_policy_id"] = retentionPolicyId;
    if(messages != null) {
      _data["messages"] = messages?.map((e) => e.toJson()).toList();
    }
    if(voiceStates != null) {
      _data["voice_states"] = voiceStates?.map((e) => e.toJson()).toList();
    }
    if(readStates != null) {
      _data["read_states"] = readStates?.map((e) => e.toJson()).toList();
    }
    if(webhooks != null) {
      _data["webhooks"] = webhooks?.map((e) => e.toJson()).toList();
    }
    _data["flags"] = flags;
    _data["default_thread_rate_limit_per_user"] = defaultThreadRateLimitPerUser;
    _data["id"] = id;
    return _data;
  }
}

class Webhooks {
  int? type;
  String? name;
  String? avatar;
  String? token;
  String? guildId;
  String? guild;
  String? channelId;
  String? channel;
  String? applicationId;
  Application2? application;
  String? userId;
  User10? user;
  String? sourceGuildId;
  String? sourceGuild;
  String? id;

  Webhooks({this.type, this.name, this.avatar, this.token, this.guildId, this.guild, this.channelId, this.channel, this.applicationId, this.application, this.userId, this.user, this.sourceGuildId, this.sourceGuild, this.id});

  Webhooks.fromJson(Map<String, dynamic> json) {
    type = json["type"];
    name = json["name"];
    avatar = json["avatar"];
    token = json["token"];
    guildId = json["guild_id"];
    guild = json["guild"];
    channelId = json["channel_id"];
    channel = json["channel"];
    applicationId = json["application_id"];
    application = json["application"] == null ? null : Application2.fromJson(json["application"]);
    userId = json["user_id"];
    user = json["user"] == null ? null : User10.fromJson(json["user"]);
    sourceGuildId = json["source_guild_id"];
    sourceGuild = json["source_guild"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["type"] = type;
    _data["name"] = name;
    _data["avatar"] = avatar;
    _data["token"] = token;
    _data["guild_id"] = guildId;
    _data["guild"] = guild;
    _data["channel_id"] = channelId;
    _data["channel"] = channel;
    _data["application_id"] = applicationId;
    if(application != null) {
      _data["application"] = application?.toJson();
    }
    _data["user_id"] = userId;
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    _data["source_guild_id"] = sourceGuildId;
    _data["source_guild"] = sourceGuild;
    _data["id"] = id;
    return _data;
  }
}

class User10 {
  String? username;
  String? discriminator;
  String? avatar;
  int? accentColor;
  String? banner;
  List<int>? themeColors;
  String? pronouns;
  String? phone;
  bool? desktop;
  bool? mobile;
  bool? premium;
  int? premiumType;
  bool? bot;
  String? bio;
  bool? system;
  bool? nsfwAllowed;
  bool? mfaEnabled;
  bool? webauthnEnabled;
  String? totpSecret;
  String? totpLastTicket;
  String? createdAt;
  String? premiumSince;
  bool? verified;
  bool? disabled;
  bool? deleted;
  String? email;
  String? flags;
  int? publicFlags;
  int? purchasedFlags;
  int? premiumUsageFlags;
  String? rights;
  List<Sessions23>? sessions;
  List<Relationships23>? relationships;
  List<ConnectedAccounts23>? connectedAccounts;
  Data23? data;
  List<String>? fingerprints;
  Settings25? settings;
  String? extendedSettings;
  List<SecurityKeys23>? securityKeys;
  String? id;

  User10({this.username, this.discriminator, this.avatar, this.accentColor, this.banner, this.themeColors, this.pronouns, this.phone, this.desktop, this.mobile, this.premium, this.premiumType, this.bot, this.bio, this.system, this.nsfwAllowed, this.mfaEnabled, this.webauthnEnabled, this.totpSecret, this.totpLastTicket, this.createdAt, this.premiumSince, this.verified, this.disabled, this.deleted, this.email, this.flags, this.publicFlags, this.purchasedFlags, this.premiumUsageFlags, this.rights, this.sessions, this.relationships, this.connectedAccounts, this.data, this.fingerprints, this.settings, this.extendedSettings, this.securityKeys, this.id});

  User10.fromJson(Map<String, dynamic> json) {
    username = json["username"];
    discriminator = json["discriminator"];
    avatar = json["avatar"];
    accentColor = json["accent_color"];
    banner = json["banner"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    phone = json["phone"];
    desktop = json["desktop"];
    mobile = json["mobile"];
    premium = json["premium"];
    premiumType = json["premium_type"];
    bot = json["bot"];
    bio = json["bio"];
    system = json["system"];
    nsfwAllowed = json["nsfw_allowed"];
    mfaEnabled = json["mfa_enabled"];
    webauthnEnabled = json["webauthn_enabled"];
    totpSecret = json["totp_secret"];
    totpLastTicket = json["totp_last_ticket"];
    createdAt = json["created_at"];
    premiumSince = json["premium_since"];
    verified = json["verified"];
    disabled = json["disabled"];
    deleted = json["deleted"];
    email = json["email"];
    flags = json["flags"];
    publicFlags = json["public_flags"];
    purchasedFlags = json["purchased_flags"];
    premiumUsageFlags = json["premium_usage_flags"];
    rights = json["rights"];
    sessions = json["sessions"] == null ? null : (json["sessions"] as List).map((e) => Sessions23.fromJson(e)).toList();
    relationships = json["relationships"] == null ? null : (json["relationships"] as List).map((e) => Relationships23.fromJson(e)).toList();
    connectedAccounts = json["connected_accounts"] == null ? null : (json["connected_accounts"] as List).map((e) => ConnectedAccounts23.fromJson(e)).toList();
    data = json["data"] == null ? null : Data23.fromJson(json["data"]);
    fingerprints = json["fingerprints"] == null ? null : List<String>.from(json["fingerprints"]);
    settings = json["settings"] == null ? null : Settings25.fromJson(json["settings"]);
    extendedSettings = json["extended_settings"];
    securityKeys = json["security_keys"] == null ? null : (json["security_keys"] as List).map((e) => SecurityKeys23.fromJson(e)).toList();
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["discriminator"] = discriminator;
    _data["avatar"] = avatar;
    _data["accent_color"] = accentColor;
    _data["banner"] = banner;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["phone"] = phone;
    _data["desktop"] = desktop;
    _data["mobile"] = mobile;
    _data["premium"] = premium;
    _data["premium_type"] = premiumType;
    _data["bot"] = bot;
    _data["bio"] = bio;
    _data["system"] = system;
    _data["nsfw_allowed"] = nsfwAllowed;
    _data["mfa_enabled"] = mfaEnabled;
    _data["webauthn_enabled"] = webauthnEnabled;
    _data["totp_secret"] = totpSecret;
    _data["totp_last_ticket"] = totpLastTicket;
    _data["created_at"] = createdAt;
    _data["premium_since"] = premiumSince;
    _data["verified"] = verified;
    _data["disabled"] = disabled;
    _data["deleted"] = deleted;
    _data["email"] = email;
    _data["flags"] = flags;
    _data["public_flags"] = publicFlags;
    _data["purchased_flags"] = purchasedFlags;
    _data["premium_usage_flags"] = premiumUsageFlags;
    _data["rights"] = rights;
    if(sessions != null) {
      _data["sessions"] = sessions?.map((e) => e.toJson()).toList();
    }
    if(relationships != null) {
      _data["relationships"] = relationships?.map((e) => e.toJson()).toList();
    }
    if(connectedAccounts != null) {
      _data["connected_accounts"] = connectedAccounts?.map((e) => e.toJson()).toList();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    if(fingerprints != null) {
      _data["fingerprints"] = fingerprints;
    }
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["extended_settings"] = extendedSettings;
    if(securityKeys != null) {
      _data["security_keys"] = securityKeys?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    return _data;
  }
}

class SecurityKeys23 {
  String? userId;
  String? user;
  String? keyId;
  String? publicKey;
  int? counter;
  String? name;
  String? id;

  SecurityKeys23({this.userId, this.user, this.keyId, this.publicKey, this.counter, this.name, this.id});

  SecurityKeys23.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    keyId = json["key_id"];
    publicKey = json["public_key"];
    counter = json["counter"];
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["key_id"] = keyId;
    _data["public_key"] = publicKey;
    _data["counter"] = counter;
    _data["name"] = name;
    _data["id"] = id;
    return _data;
  }
}

class Settings25 {
  String? index;
  int? afkTimeout;
  bool? allowAccessibilityDetection;
  bool? animateEmoji;
  int? animateStickers;
  bool? contactSyncEnabled;
  bool? convertEmoticons;
  CustomStatus23? customStatus;
  bool? defaultGuildsRestricted;
  bool? detectPlatformAccounts;
  bool? developerMode;
  bool? disableGamesTab;
  bool? enableTtsCommand;
  int? explicitContentFilter;
  FriendSourceFlags23? friendSourceFlags;
  bool? gatewayConnected;
  bool? gifAutoPlay;
  List<GuildFolders23>? guildFolders;
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

  Settings25({this.index, this.afkTimeout, this.allowAccessibilityDetection, this.animateEmoji, this.animateStickers, this.contactSyncEnabled, this.convertEmoticons, this.customStatus, this.defaultGuildsRestricted, this.detectPlatformAccounts, this.developerMode, this.disableGamesTab, this.enableTtsCommand, this.explicitContentFilter, this.friendSourceFlags, this.gatewayConnected, this.gifAutoPlay, this.guildFolders, this.guildPositions, this.inlineAttachmentMedia, this.inlineEmbedMedia, this.locale, this.messageDisplayCompact, this.nativePhoneIntegrationEnabled, this.renderEmbeds, this.renderReactions, this.restrictedGuilds, this.showCurrentGame, this.status, this.streamNotificationsEnabled, this.theme, this.timezoneOffset});

  Settings25.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    afkTimeout = json["afk_timeout"];
    allowAccessibilityDetection = json["allow_accessibility_detection"];
    animateEmoji = json["animate_emoji"];
    animateStickers = json["animate_stickers"];
    contactSyncEnabled = json["contact_sync_enabled"];
    convertEmoticons = json["convert_emoticons"];
    customStatus = json["custom_status"] == null ? null : CustomStatus23.fromJson(json["custom_status"]);
    defaultGuildsRestricted = json["default_guilds_restricted"];
    detectPlatformAccounts = json["detect_platform_accounts"];
    developerMode = json["developer_mode"];
    disableGamesTab = json["disable_games_tab"];
    enableTtsCommand = json["enable_tts_command"];
    explicitContentFilter = json["explicit_content_filter"];
    friendSourceFlags = json["friend_source_flags"] == null ? null : FriendSourceFlags23.fromJson(json["friend_source_flags"]);
    gatewayConnected = json["gateway_connected"];
    gifAutoPlay = json["gif_auto_play"];
    guildFolders = json["guild_folders"] == null ? null : (json["guild_folders"] as List).map((e) => GuildFolders23.fromJson(e)).toList();
    guildPositions = json["guild_positions"] == null ? null : List<String>.from(json["guild_positions"]);
    inlineAttachmentMedia = json["inline_attachment_media"];
    inlineEmbedMedia = json["inline_embed_media"];
    locale = json["locale"];
    messageDisplayCompact = json["message_display_compact"];
    nativePhoneIntegrationEnabled = json["native_phone_integration_enabled"];
    renderEmbeds = json["render_embeds"];
    renderReactions = json["render_reactions"];
    restrictedGuilds = json["restricted_guilds"] == null ? null : List<String>.from(json["restricted_guilds"]);
    showCurrentGame = json["show_current_game"];
    status = json["status"];
    streamNotificationsEnabled = json["stream_notifications_enabled"];
    theme = json["theme"];
    timezoneOffset = json["timezone_offset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["afk_timeout"] = afkTimeout;
    _data["allow_accessibility_detection"] = allowAccessibilityDetection;
    _data["animate_emoji"] = animateEmoji;
    _data["animate_stickers"] = animateStickers;
    _data["contact_sync_enabled"] = contactSyncEnabled;
    _data["convert_emoticons"] = convertEmoticons;
    if(customStatus != null) {
      _data["custom_status"] = customStatus?.toJson();
    }
    _data["default_guilds_restricted"] = defaultGuildsRestricted;
    _data["detect_platform_accounts"] = detectPlatformAccounts;
    _data["developer_mode"] = developerMode;
    _data["disable_games_tab"] = disableGamesTab;
    _data["enable_tts_command"] = enableTtsCommand;
    _data["explicit_content_filter"] = explicitContentFilter;
    if(friendSourceFlags != null) {
      _data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    _data["gateway_connected"] = gatewayConnected;
    _data["gif_auto_play"] = gifAutoPlay;
    if(guildFolders != null) {
      _data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if(guildPositions != null) {
      _data["guild_positions"] = guildPositions;
    }
    _data["inline_attachment_media"] = inlineAttachmentMedia;
    _data["inline_embed_media"] = inlineEmbedMedia;
    _data["locale"] = locale;
    _data["message_display_compact"] = messageDisplayCompact;
    _data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    _data["render_embeds"] = renderEmbeds;
    _data["render_reactions"] = renderReactions;
    if(restrictedGuilds != null) {
      _data["restricted_guilds"] = restrictedGuilds;
    }
    _data["show_current_game"] = showCurrentGame;
    _data["status"] = status;
    _data["stream_notifications_enabled"] = streamNotificationsEnabled;
    _data["theme"] = theme;
    _data["timezone_offset"] = timezoneOffset;
    return _data;
  }
}

class GuildFolders23 {
  int? color;
  List<String>? guildIds;
  int? id;
  String? name;

  GuildFolders23({this.color, this.guildIds, this.id, this.name});

  GuildFolders23.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    guildIds = json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    if(guildIds != null) {
      _data["guild_ids"] = guildIds;
    }
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class FriendSourceFlags23 {
  bool? all;

  FriendSourceFlags23({this.all});

  FriendSourceFlags23.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["all"] = all;
    return _data;
  }
}

class CustomStatus23 {
  String? emojiId;
  String? emojiName;
  int? expiresAt;
  String? text;

  CustomStatus23({this.emojiId, this.emojiName, this.expiresAt, this.text});

  CustomStatus23.fromJson(Map<String, dynamic> json) {
    emojiId = json["emoji_id"];
    emojiName = json["emoji_name"];
    expiresAt = json["expires_at"];
    text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["emoji_id"] = emojiId;
    _data["emoji_name"] = emojiName;
    _data["expires_at"] = expiresAt;
    _data["text"] = text;
    return _data;
  }
}

class Data23 {
  String? validTokensSince;
  String? hash;

  Data23({this.validTokensSince, this.hash});

  Data23.fromJson(Map<String, dynamic> json) {
    validTokensSince = json["valid_tokens_since"];
    hash = json["hash"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["valid_tokens_since"] = validTokensSince;
    _data["hash"] = hash;
    return _data;
  }
}

class ConnectedAccounts23 {
  String? externalId;
  String? userId;
  String? user;
  bool? friendSync;
  String? name;
  bool? revoked;
  int? showActivity;
  String? type;
  bool? verified;
  int? visibility;
  List<String>? integrations;
  dynamic metadata;
  int? metadataVisibility;
  bool? twoWayLink;
  TokenData23? tokenData;
  String? id;

  ConnectedAccounts23({this.externalId, this.userId, this.user, this.friendSync, this.name, this.revoked, this.showActivity, this.type, this.verified, this.visibility, this.integrations, this.metadata, this.metadataVisibility, this.twoWayLink, this.tokenData, this.id});

  ConnectedAccounts23.fromJson(Map<String, dynamic> json) {
    externalId = json["external_id"];
    userId = json["user_id"];
    user = json["user"];
    friendSync = json["friend_sync"];
    name = json["name"];
    revoked = json["revoked"];
    showActivity = json["show_activity"];
    type = json["type"];
    verified = json["verified"];
    visibility = json["visibility"];
    integrations = json["integrations"] == null ? null : List<String>.from(json["integrations"]);
    metadata = json["metadata_"];
    metadataVisibility = json["metadata_visibility"];
    twoWayLink = json["two_way_link"];
    tokenData = json["token_data"] == null ? null : TokenData23.fromJson(json["token_data"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["external_id"] = externalId;
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["friend_sync"] = friendSync;
    _data["name"] = name;
    _data["revoked"] = revoked;
    _data["show_activity"] = showActivity;
    _data["type"] = type;
    _data["verified"] = verified;
    _data["visibility"] = visibility;
    if(integrations != null) {
      _data["integrations"] = integrations;
    }
    _data["metadata_"] = metadata;
    _data["metadata_visibility"] = metadataVisibility;
    _data["two_way_link"] = twoWayLink;
    if(tokenData != null) {
      _data["token_data"] = tokenData?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class TokenData23 {
  String? accessToken;
  String? tokenType;
  String? scope;
  String? refreshToken;
  int? expiresIn;
  int? expiresAt;
  int? fetchedAt;

  TokenData23({this.accessToken, this.tokenType, this.scope, this.refreshToken, this.expiresIn, this.expiresAt, this.fetchedAt});

  TokenData23.fromJson(Map<String, dynamic> json) {
    accessToken = json["access_token"];
    tokenType = json["token_type"];
    scope = json["scope"];
    refreshToken = json["refresh_token"];
    expiresIn = json["expires_in"];
    expiresAt = json["expires_at"];
    fetchedAt = json["fetched_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    _data["token_type"] = tokenType;
    _data["scope"] = scope;
    _data["refresh_token"] = refreshToken;
    _data["expires_in"] = expiresIn;
    _data["expires_at"] = expiresAt;
    _data["fetched_at"] = fetchedAt;
    return _data;
  }
}

class Relationships23 {
  String? fromId;
  String? from;
  String? toId;
  String? to;
  String? nickname;
  int? type;
  String? id;

  Relationships23({this.fromId, this.from, this.toId, this.to, this.nickname, this.type, this.id});

  Relationships23.fromJson(Map<String, dynamic> json) {
    fromId = json["from_id"];
    from = json["from"];
    toId = json["to_id"];
    to = json["to"];
    nickname = json["nickname"];
    type = json["type"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["from_id"] = fromId;
    _data["from"] = from;
    _data["to_id"] = toId;
    _data["to"] = to;
    _data["nickname"] = nickname;
    _data["type"] = type;
    _data["id"] = id;
    return _data;
  }
}

class Sessions23 {
  String? userId;
  String? user;
  String? sessionId;
  List<Activities23>? activities;
  ClientInfo23? clientInfo;
  String? status;
  String? id;

  Sessions23({this.userId, this.user, this.sessionId, this.activities, this.clientInfo, this.status, this.id});

  Sessions23.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    sessionId = json["session_id"];
    activities = json["activities"] == null ? null : (json["activities"] as List).map((e) => Activities23.fromJson(e)).toList();
    clientInfo = json["client_info"] == null ? null : ClientInfo23.fromJson(json["client_info"]);
    status = json["status"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["session_id"] = sessionId;
    if(activities != null) {
      _data["activities"] = activities?.map((e) => e.toJson()).toList();
    }
    if(clientInfo != null) {
      _data["client_info"] = clientInfo?.toJson();
    }
    _data["status"] = status;
    _data["id"] = id;
    return _data;
  }
}

class ClientInfo23 {
  String? client;
  String? os;
  int? version;

  ClientInfo23({this.client, this.os, this.version});

  ClientInfo23.fromJson(Map<String, dynamic> json) {
    client = json["client"];
    os = json["os"];
    version = json["version"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["client"] = client;
    _data["os"] = os;
    _data["version"] = version;
    return _data;
  }
}

class Activities23 {
  String? name;
  int? type;
  String? url;
  int? createdAt;
  Timestamps23? timestamps;
  String? applicationId;
  String? details;
  String? state;
  Emoji25? emoji;
  Party23? party;
  Assets23? assets;
  Secrets23? secrets;
  bool? instance;
  String? flags;
  String? id;
  String? syncId;
  Metadata23? metadata;
  String? sessionId;

  Activities23({this.name, this.type, this.url, this.createdAt, this.timestamps, this.applicationId, this.details, this.state, this.emoji, this.party, this.assets, this.secrets, this.instance, this.flags, this.id, this.syncId, this.metadata, this.sessionId});

  Activities23.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    type = json["type"];
    url = json["url"];
    createdAt = json["created_at"];
    timestamps = json["timestamps"] == null ? null : Timestamps23.fromJson(json["timestamps"]);
    applicationId = json["application_id"];
    details = json["details"];
    state = json["state"];
    emoji = json["emoji"] == null ? null : Emoji25.fromJson(json["emoji"]);
    party = json["party"] == null ? null : Party23.fromJson(json["party"]);
    assets = json["assets"] == null ? null : Assets23.fromJson(json["assets"]);
    secrets = json["secrets"] == null ? null : Secrets23.fromJson(json["secrets"]);
    instance = json["instance"];
    flags = json["flags"];
    id = json["id"];
    syncId = json["sync_id"];
    metadata = json["metadata"] == null ? null : Metadata23.fromJson(json["metadata"]);
    sessionId = json["session_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["type"] = type;
    _data["url"] = url;
    _data["created_at"] = createdAt;
    if(timestamps != null) {
      _data["timestamps"] = timestamps?.toJson();
    }
    _data["application_id"] = applicationId;
    _data["details"] = details;
    _data["state"] = state;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    if(party != null) {
      _data["party"] = party?.toJson();
    }
    if(assets != null) {
      _data["assets"] = assets?.toJson();
    }
    if(secrets != null) {
      _data["secrets"] = secrets?.toJson();
    }
    _data["instance"] = instance;
    _data["flags"] = flags;
    _data["id"] = id;
    _data["sync_id"] = syncId;
    if(metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    _data["session_id"] = sessionId;
    return _data;
  }
}

class Metadata23 {
  String? contextUri;
  String? albumId;
  List<String>? artistIds;

  Metadata23({this.contextUri, this.albumId, this.artistIds});

  Metadata23.fromJson(Map<String, dynamic> json) {
    contextUri = json["context_uri"];
    albumId = json["album_id"];
    artistIds = json["artist_ids"] == null ? null : List<String>.from(json["artist_ids"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["context_uri"] = contextUri;
    _data["album_id"] = albumId;
    if(artistIds != null) {
      _data["artist_ids"] = artistIds;
    }
    return _data;
  }
}

class Secrets23 {
  String? join;
  String? spectate;
  String? match;

  Secrets23({this.join, this.spectate, this.match});

  Secrets23.fromJson(Map<String, dynamic> json) {
    join = json["join"];
    spectate = json["spectate"];
    match = json["match"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["join"] = join;
    _data["spectate"] = spectate;
    _data["match"] = match;
    return _data;
  }
}

class Assets23 {
  String? largeImage;
  String? largeText;
  String? smallImage;
  String? smallText;

  Assets23({this.largeImage, this.largeText, this.smallImage, this.smallText});

  Assets23.fromJson(Map<String, dynamic> json) {
    largeImage = json["large_image"];
    largeText = json["large_text"];
    smallImage = json["small_image"];
    smallText = json["small_text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["large_image"] = largeImage;
    _data["large_text"] = largeText;
    _data["small_image"] = smallImage;
    _data["small_text"] = smallText;
    return _data;
  }
}

class Party23 {
  String? id;
  List<int>? size;

  Party23({this.id, this.size});

  Party23.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    size = json["size"] == null ? null : List<int>.from(json["size"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if(size != null) {
      _data["size"] = size;
    }
    return _data;
  }
}

class Emoji25 {
  String? name;
  String? id;
  bool? animated;

  Emoji25({this.name, this.id, this.animated});

  Emoji25.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["id"] = id;
    _data["animated"] = animated;
    return _data;
  }
}

class Timestamps23 {
  int? start;
  int? end;

  Timestamps23({this.start, this.end});

  Timestamps23.fromJson(Map<String, dynamic> json) {
    start = json["start"];
    end = json["end"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }
}

class Application2 {
  String? name;
  String? icon;
  String? description;
  String? summary;
  Type2? type;
  bool? hook;
  bool? botPublic;
  bool? botRequireCodeGrant;
  String? verifyKey;
  Owner3? owner;
  int? flags;
  List<String>? redirectUris;
  int? rpcApplicationState;
  int? storeApplicationState;
  int? verificationState;
  String? interactionsEndpointUrl;
  bool? integrationPublic;
  bool? integrationRequireCodeGrant;
  int? discoverabilityState;
  int? discoveryEligibilityFlags;
  Bot2? bot;
  List<String>? tags;
  String? coverImage;
  InstallParams2? installParams;
  String? termsOfServiceUrl;
  String? privacyPolicyUrl;
  Team2? team;
  String? id;

  Application2({this.name, this.icon, this.description, this.summary, this.type, this.hook, this.botPublic, this.botRequireCodeGrant, this.verifyKey, this.owner, this.flags, this.redirectUris, this.rpcApplicationState, this.storeApplicationState, this.verificationState, this.interactionsEndpointUrl, this.integrationPublic, this.integrationRequireCodeGrant, this.discoverabilityState, this.discoveryEligibilityFlags, this.bot, this.tags, this.coverImage, this.installParams, this.termsOfServiceUrl, this.privacyPolicyUrl, this.team, this.id});

  Application2.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    icon = json["icon"];
    description = json["description"];
    summary = json["summary"];
    type = json["type"] == null ? null : Type2.fromJson(json["type"]);
    hook = json["hook"];
    botPublic = json["bot_public"];
    botRequireCodeGrant = json["bot_require_code_grant"];
    verifyKey = json["verify_key"];
    owner = json["owner"] == null ? null : Owner3.fromJson(json["owner"]);
    flags = json["flags"];
    redirectUris = json["redirect_uris"] == null ? null : List<String>.from(json["redirect_uris"]);
    rpcApplicationState = json["rpc_application_state"];
    storeApplicationState = json["store_application_state"];
    verificationState = json["verification_state"];
    interactionsEndpointUrl = json["interactions_endpoint_url"];
    integrationPublic = json["integration_public"];
    integrationRequireCodeGrant = json["integration_require_code_grant"];
    discoverabilityState = json["discoverability_state"];
    discoveryEligibilityFlags = json["discovery_eligibility_flags"];
    bot = json["bot"] == null ? null : Bot2.fromJson(json["bot"]);
    tags = json["tags"] == null ? null : List<String>.from(json["tags"]);
    coverImage = json["cover_image"];
    installParams = json["install_params"] == null ? null : InstallParams2.fromJson(json["install_params"]);
    termsOfServiceUrl = json["terms_of_service_url"];
    privacyPolicyUrl = json["privacy_policy_url"];
    team = json["team"] == null ? null : Team2.fromJson(json["team"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["icon"] = icon;
    _data["description"] = description;
    _data["summary"] = summary;
    if(type != null) {
      _data["type"] = type?.toJson();
    }
    _data["hook"] = hook;
    _data["bot_public"] = botPublic;
    _data["bot_require_code_grant"] = botRequireCodeGrant;
    _data["verify_key"] = verifyKey;
    if(owner != null) {
      _data["owner"] = owner?.toJson();
    }
    _data["flags"] = flags;
    if(redirectUris != null) {
      _data["redirect_uris"] = redirectUris;
    }
    _data["rpc_application_state"] = rpcApplicationState;
    _data["store_application_state"] = storeApplicationState;
    _data["verification_state"] = verificationState;
    _data["interactions_endpoint_url"] = interactionsEndpointUrl;
    _data["integration_public"] = integrationPublic;
    _data["integration_require_code_grant"] = integrationRequireCodeGrant;
    _data["discoverability_state"] = discoverabilityState;
    _data["discovery_eligibility_flags"] = discoveryEligibilityFlags;
    if(bot != null) {
      _data["bot"] = bot?.toJson();
    }
    if(tags != null) {
      _data["tags"] = tags;
    }
    _data["cover_image"] = coverImage;
    if(installParams != null) {
      _data["install_params"] = installParams?.toJson();
    }
    _data["terms_of_service_url"] = termsOfServiceUrl;
    _data["privacy_policy_url"] = privacyPolicyUrl;
    if(team != null) {
      _data["team"] = team?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class Team2 {
  String? icon;
  List<Members2>? members;
  String? name;
  String? ownerUserId;
  OwnerUser2? ownerUser;
  String? id;

  Team2({this.icon, this.members, this.name, this.ownerUserId, this.ownerUser, this.id});

  Team2.fromJson(Map<String, dynamic> json) {
    icon = json["icon"];
    members = json["members"] == null ? null : (json["members"] as List).map((e) => Members2.fromJson(e)).toList();
    name = json["name"];
    ownerUserId = json["owner_user_id"];
    ownerUser = json["owner_user"] == null ? null : OwnerUser2.fromJson(json["owner_user"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["icon"] = icon;
    if(members != null) {
      _data["members"] = members?.map((e) => e.toJson()).toList();
    }
    _data["name"] = name;
    _data["owner_user_id"] = ownerUserId;
    if(ownerUser != null) {
      _data["owner_user"] = ownerUser?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class OwnerUser2 {
  String? username;
  String? discriminator;
  String? avatar;
  int? accentColor;
  String? banner;
  List<int>? themeColors;
  String? pronouns;
  String? phone;
  bool? desktop;
  bool? mobile;
  bool? premium;
  int? premiumType;
  bool? bot;
  String? bio;
  bool? system;
  bool? nsfwAllowed;
  bool? mfaEnabled;
  bool? webauthnEnabled;
  String? totpSecret;
  String? totpLastTicket;
  String? createdAt;
  String? premiumSince;
  bool? verified;
  bool? disabled;
  bool? deleted;
  String? email;
  String? flags;
  int? publicFlags;
  int? purchasedFlags;
  int? premiumUsageFlags;
  String? rights;
  List<Sessions22>? sessions;
  List<Relationships22>? relationships;
  List<ConnectedAccounts22>? connectedAccounts;
  Data22? data;
  List<String>? fingerprints;
  Settings24? settings;
  String? extendedSettings;
  List<SecurityKeys22>? securityKeys;
  String? id;

  OwnerUser2({this.username, this.discriminator, this.avatar, this.accentColor, this.banner, this.themeColors, this.pronouns, this.phone, this.desktop, this.mobile, this.premium, this.premiumType, this.bot, this.bio, this.system, this.nsfwAllowed, this.mfaEnabled, this.webauthnEnabled, this.totpSecret, this.totpLastTicket, this.createdAt, this.premiumSince, this.verified, this.disabled, this.deleted, this.email, this.flags, this.publicFlags, this.purchasedFlags, this.premiumUsageFlags, this.rights, this.sessions, this.relationships, this.connectedAccounts, this.data, this.fingerprints, this.settings, this.extendedSettings, this.securityKeys, this.id});

  OwnerUser2.fromJson(Map<String, dynamic> json) {
    username = json["username"];
    discriminator = json["discriminator"];
    avatar = json["avatar"];
    accentColor = json["accent_color"];
    banner = json["banner"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    phone = json["phone"];
    desktop = json["desktop"];
    mobile = json["mobile"];
    premium = json["premium"];
    premiumType = json["premium_type"];
    bot = json["bot"];
    bio = json["bio"];
    system = json["system"];
    nsfwAllowed = json["nsfw_allowed"];
    mfaEnabled = json["mfa_enabled"];
    webauthnEnabled = json["webauthn_enabled"];
    totpSecret = json["totp_secret"];
    totpLastTicket = json["totp_last_ticket"];
    createdAt = json["created_at"];
    premiumSince = json["premium_since"];
    verified = json["verified"];
    disabled = json["disabled"];
    deleted = json["deleted"];
    email = json["email"];
    flags = json["flags"];
    publicFlags = json["public_flags"];
    purchasedFlags = json["purchased_flags"];
    premiumUsageFlags = json["premium_usage_flags"];
    rights = json["rights"];
    sessions = json["sessions"] == null ? null : (json["sessions"] as List).map((e) => Sessions22.fromJson(e)).toList();
    relationships = json["relationships"] == null ? null : (json["relationships"] as List).map((e) => Relationships22.fromJson(e)).toList();
    connectedAccounts = json["connected_accounts"] == null ? null : (json["connected_accounts"] as List).map((e) => ConnectedAccounts22.fromJson(e)).toList();
    data = json["data"] == null ? null : Data22.fromJson(json["data"]);
    fingerprints = json["fingerprints"] == null ? null : List<String>.from(json["fingerprints"]);
    settings = json["settings"] == null ? null : Settings24.fromJson(json["settings"]);
    extendedSettings = json["extended_settings"];
    securityKeys = json["security_keys"] == null ? null : (json["security_keys"] as List).map((e) => SecurityKeys22.fromJson(e)).toList();
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["discriminator"] = discriminator;
    _data["avatar"] = avatar;
    _data["accent_color"] = accentColor;
    _data["banner"] = banner;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["phone"] = phone;
    _data["desktop"] = desktop;
    _data["mobile"] = mobile;
    _data["premium"] = premium;
    _data["premium_type"] = premiumType;
    _data["bot"] = bot;
    _data["bio"] = bio;
    _data["system"] = system;
    _data["nsfw_allowed"] = nsfwAllowed;
    _data["mfa_enabled"] = mfaEnabled;
    _data["webauthn_enabled"] = webauthnEnabled;
    _data["totp_secret"] = totpSecret;
    _data["totp_last_ticket"] = totpLastTicket;
    _data["created_at"] = createdAt;
    _data["premium_since"] = premiumSince;
    _data["verified"] = verified;
    _data["disabled"] = disabled;
    _data["deleted"] = deleted;
    _data["email"] = email;
    _data["flags"] = flags;
    _data["public_flags"] = publicFlags;
    _data["purchased_flags"] = purchasedFlags;
    _data["premium_usage_flags"] = premiumUsageFlags;
    _data["rights"] = rights;
    if(sessions != null) {
      _data["sessions"] = sessions?.map((e) => e.toJson()).toList();
    }
    if(relationships != null) {
      _data["relationships"] = relationships?.map((e) => e.toJson()).toList();
    }
    if(connectedAccounts != null) {
      _data["connected_accounts"] = connectedAccounts?.map((e) => e.toJson()).toList();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    if(fingerprints != null) {
      _data["fingerprints"] = fingerprints;
    }
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["extended_settings"] = extendedSettings;
    if(securityKeys != null) {
      _data["security_keys"] = securityKeys?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    return _data;
  }
}

class SecurityKeys22 {
  String? userId;
  String? user;
  String? keyId;
  String? publicKey;
  int? counter;
  String? name;
  String? id;

  SecurityKeys22({this.userId, this.user, this.keyId, this.publicKey, this.counter, this.name, this.id});

  SecurityKeys22.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    keyId = json["key_id"];
    publicKey = json["public_key"];
    counter = json["counter"];
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["key_id"] = keyId;
    _data["public_key"] = publicKey;
    _data["counter"] = counter;
    _data["name"] = name;
    _data["id"] = id;
    return _data;
  }
}

class Settings24 {
  String? index;
  int? afkTimeout;
  bool? allowAccessibilityDetection;
  bool? animateEmoji;
  int? animateStickers;
  bool? contactSyncEnabled;
  bool? convertEmoticons;
  CustomStatus22? customStatus;
  bool? defaultGuildsRestricted;
  bool? detectPlatformAccounts;
  bool? developerMode;
  bool? disableGamesTab;
  bool? enableTtsCommand;
  int? explicitContentFilter;
  FriendSourceFlags22? friendSourceFlags;
  bool? gatewayConnected;
  bool? gifAutoPlay;
  List<GuildFolders22>? guildFolders;
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

  Settings24({this.index, this.afkTimeout, this.allowAccessibilityDetection, this.animateEmoji, this.animateStickers, this.contactSyncEnabled, this.convertEmoticons, this.customStatus, this.defaultGuildsRestricted, this.detectPlatformAccounts, this.developerMode, this.disableGamesTab, this.enableTtsCommand, this.explicitContentFilter, this.friendSourceFlags, this.gatewayConnected, this.gifAutoPlay, this.guildFolders, this.guildPositions, this.inlineAttachmentMedia, this.inlineEmbedMedia, this.locale, this.messageDisplayCompact, this.nativePhoneIntegrationEnabled, this.renderEmbeds, this.renderReactions, this.restrictedGuilds, this.showCurrentGame, this.status, this.streamNotificationsEnabled, this.theme, this.timezoneOffset});

  Settings24.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    afkTimeout = json["afk_timeout"];
    allowAccessibilityDetection = json["allow_accessibility_detection"];
    animateEmoji = json["animate_emoji"];
    animateStickers = json["animate_stickers"];
    contactSyncEnabled = json["contact_sync_enabled"];
    convertEmoticons = json["convert_emoticons"];
    customStatus = json["custom_status"] == null ? null : CustomStatus22.fromJson(json["custom_status"]);
    defaultGuildsRestricted = json["default_guilds_restricted"];
    detectPlatformAccounts = json["detect_platform_accounts"];
    developerMode = json["developer_mode"];
    disableGamesTab = json["disable_games_tab"];
    enableTtsCommand = json["enable_tts_command"];
    explicitContentFilter = json["explicit_content_filter"];
    friendSourceFlags = json["friend_source_flags"] == null ? null : FriendSourceFlags22.fromJson(json["friend_source_flags"]);
    gatewayConnected = json["gateway_connected"];
    gifAutoPlay = json["gif_auto_play"];
    guildFolders = json["guild_folders"] == null ? null : (json["guild_folders"] as List).map((e) => GuildFolders22.fromJson(e)).toList();
    guildPositions = json["guild_positions"] == null ? null : List<String>.from(json["guild_positions"]);
    inlineAttachmentMedia = json["inline_attachment_media"];
    inlineEmbedMedia = json["inline_embed_media"];
    locale = json["locale"];
    messageDisplayCompact = json["message_display_compact"];
    nativePhoneIntegrationEnabled = json["native_phone_integration_enabled"];
    renderEmbeds = json["render_embeds"];
    renderReactions = json["render_reactions"];
    restrictedGuilds = json["restricted_guilds"] == null ? null : List<String>.from(json["restricted_guilds"]);
    showCurrentGame = json["show_current_game"];
    status = json["status"];
    streamNotificationsEnabled = json["stream_notifications_enabled"];
    theme = json["theme"];
    timezoneOffset = json["timezone_offset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["afk_timeout"] = afkTimeout;
    _data["allow_accessibility_detection"] = allowAccessibilityDetection;
    _data["animate_emoji"] = animateEmoji;
    _data["animate_stickers"] = animateStickers;
    _data["contact_sync_enabled"] = contactSyncEnabled;
    _data["convert_emoticons"] = convertEmoticons;
    if(customStatus != null) {
      _data["custom_status"] = customStatus?.toJson();
    }
    _data["default_guilds_restricted"] = defaultGuildsRestricted;
    _data["detect_platform_accounts"] = detectPlatformAccounts;
    _data["developer_mode"] = developerMode;
    _data["disable_games_tab"] = disableGamesTab;
    _data["enable_tts_command"] = enableTtsCommand;
    _data["explicit_content_filter"] = explicitContentFilter;
    if(friendSourceFlags != null) {
      _data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    _data["gateway_connected"] = gatewayConnected;
    _data["gif_auto_play"] = gifAutoPlay;
    if(guildFolders != null) {
      _data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if(guildPositions != null) {
      _data["guild_positions"] = guildPositions;
    }
    _data["inline_attachment_media"] = inlineAttachmentMedia;
    _data["inline_embed_media"] = inlineEmbedMedia;
    _data["locale"] = locale;
    _data["message_display_compact"] = messageDisplayCompact;
    _data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    _data["render_embeds"] = renderEmbeds;
    _data["render_reactions"] = renderReactions;
    if(restrictedGuilds != null) {
      _data["restricted_guilds"] = restrictedGuilds;
    }
    _data["show_current_game"] = showCurrentGame;
    _data["status"] = status;
    _data["stream_notifications_enabled"] = streamNotificationsEnabled;
    _data["theme"] = theme;
    _data["timezone_offset"] = timezoneOffset;
    return _data;
  }
}

class GuildFolders22 {
  int? color;
  List<String>? guildIds;
  int? id;
  String? name;

  GuildFolders22({this.color, this.guildIds, this.id, this.name});

  GuildFolders22.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    guildIds = json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    if(guildIds != null) {
      _data["guild_ids"] = guildIds;
    }
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class FriendSourceFlags22 {
  bool? all;

  FriendSourceFlags22({this.all});

  FriendSourceFlags22.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["all"] = all;
    return _data;
  }
}

class CustomStatus22 {
  String? emojiId;
  String? emojiName;
  int? expiresAt;
  String? text;

  CustomStatus22({this.emojiId, this.emojiName, this.expiresAt, this.text});

  CustomStatus22.fromJson(Map<String, dynamic> json) {
    emojiId = json["emoji_id"];
    emojiName = json["emoji_name"];
    expiresAt = json["expires_at"];
    text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["emoji_id"] = emojiId;
    _data["emoji_name"] = emojiName;
    _data["expires_at"] = expiresAt;
    _data["text"] = text;
    return _data;
  }
}

class Data22 {
  String? validTokensSince;
  String? hash;

  Data22({this.validTokensSince, this.hash});

  Data22.fromJson(Map<String, dynamic> json) {
    validTokensSince = json["valid_tokens_since"];
    hash = json["hash"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["valid_tokens_since"] = validTokensSince;
    _data["hash"] = hash;
    return _data;
  }
}

class ConnectedAccounts22 {
  String? externalId;
  String? userId;
  String? user;
  bool? friendSync;
  String? name;
  bool? revoked;
  int? showActivity;
  String? type;
  bool? verified;
  int? visibility;
  List<String>? integrations;
  dynamic metadata;
  int? metadataVisibility;
  bool? twoWayLink;
  TokenData22? tokenData;
  String? id;

  ConnectedAccounts22({this.externalId, this.userId, this.user, this.friendSync, this.name, this.revoked, this.showActivity, this.type, this.verified, this.visibility, this.integrations, this.metadata, this.metadataVisibility, this.twoWayLink, this.tokenData, this.id});

  ConnectedAccounts22.fromJson(Map<String, dynamic> json) {
    externalId = json["external_id"];
    userId = json["user_id"];
    user = json["user"];
    friendSync = json["friend_sync"];
    name = json["name"];
    revoked = json["revoked"];
    showActivity = json["show_activity"];
    type = json["type"];
    verified = json["verified"];
    visibility = json["visibility"];
    integrations = json["integrations"] == null ? null : List<String>.from(json["integrations"]);
    metadata = json["metadata_"];
    metadataVisibility = json["metadata_visibility"];
    twoWayLink = json["two_way_link"];
    tokenData = json["token_data"] == null ? null : TokenData22.fromJson(json["token_data"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["external_id"] = externalId;
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["friend_sync"] = friendSync;
    _data["name"] = name;
    _data["revoked"] = revoked;
    _data["show_activity"] = showActivity;
    _data["type"] = type;
    _data["verified"] = verified;
    _data["visibility"] = visibility;
    if(integrations != null) {
      _data["integrations"] = integrations;
    }
    _data["metadata_"] = metadata;
    _data["metadata_visibility"] = metadataVisibility;
    _data["two_way_link"] = twoWayLink;
    if(tokenData != null) {
      _data["token_data"] = tokenData?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class TokenData22 {
  String? accessToken;
  String? tokenType;
  String? scope;
  String? refreshToken;
  int? expiresIn;
  int? expiresAt;
  int? fetchedAt;

  TokenData22({this.accessToken, this.tokenType, this.scope, this.refreshToken, this.expiresIn, this.expiresAt, this.fetchedAt});

  TokenData22.fromJson(Map<String, dynamic> json) {
    accessToken = json["access_token"];
    tokenType = json["token_type"];
    scope = json["scope"];
    refreshToken = json["refresh_token"];
    expiresIn = json["expires_in"];
    expiresAt = json["expires_at"];
    fetchedAt = json["fetched_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    _data["token_type"] = tokenType;
    _data["scope"] = scope;
    _data["refresh_token"] = refreshToken;
    _data["expires_in"] = expiresIn;
    _data["expires_at"] = expiresAt;
    _data["fetched_at"] = fetchedAt;
    return _data;
  }
}

class Relationships22 {
  String? fromId;
  String? from;
  String? toId;
  String? to;
  String? nickname;
  int? type;
  String? id;

  Relationships22({this.fromId, this.from, this.toId, this.to, this.nickname, this.type, this.id});

  Relationships22.fromJson(Map<String, dynamic> json) {
    fromId = json["from_id"];
    from = json["from"];
    toId = json["to_id"];
    to = json["to"];
    nickname = json["nickname"];
    type = json["type"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["from_id"] = fromId;
    _data["from"] = from;
    _data["to_id"] = toId;
    _data["to"] = to;
    _data["nickname"] = nickname;
    _data["type"] = type;
    _data["id"] = id;
    return _data;
  }
}

class Sessions22 {
  String? userId;
  String? user;
  String? sessionId;
  List<Activities22>? activities;
  ClientInfo22? clientInfo;
  String? status;
  String? id;

  Sessions22({this.userId, this.user, this.sessionId, this.activities, this.clientInfo, this.status, this.id});

  Sessions22.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    sessionId = json["session_id"];
    activities = json["activities"] == null ? null : (json["activities"] as List).map((e) => Activities22.fromJson(e)).toList();
    clientInfo = json["client_info"] == null ? null : ClientInfo22.fromJson(json["client_info"]);
    status = json["status"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["session_id"] = sessionId;
    if(activities != null) {
      _data["activities"] = activities?.map((e) => e.toJson()).toList();
    }
    if(clientInfo != null) {
      _data["client_info"] = clientInfo?.toJson();
    }
    _data["status"] = status;
    _data["id"] = id;
    return _data;
  }
}

class ClientInfo22 {
  String? client;
  String? os;
  int? version;

  ClientInfo22({this.client, this.os, this.version});

  ClientInfo22.fromJson(Map<String, dynamic> json) {
    client = json["client"];
    os = json["os"];
    version = json["version"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["client"] = client;
    _data["os"] = os;
    _data["version"] = version;
    return _data;
  }
}

class Activities22 {
  String? name;
  int? type;
  String? url;
  int? createdAt;
  Timestamps22? timestamps;
  String? applicationId;
  String? details;
  String? state;
  Emoji24? emoji;
  Party22? party;
  Assets22? assets;
  Secrets22? secrets;
  bool? instance;
  String? flags;
  String? id;
  String? syncId;
  Metadata22? metadata;
  String? sessionId;

  Activities22({this.name, this.type, this.url, this.createdAt, this.timestamps, this.applicationId, this.details, this.state, this.emoji, this.party, this.assets, this.secrets, this.instance, this.flags, this.id, this.syncId, this.metadata, this.sessionId});

  Activities22.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    type = json["type"];
    url = json["url"];
    createdAt = json["created_at"];
    timestamps = json["timestamps"] == null ? null : Timestamps22.fromJson(json["timestamps"]);
    applicationId = json["application_id"];
    details = json["details"];
    state = json["state"];
    emoji = json["emoji"] == null ? null : Emoji24.fromJson(json["emoji"]);
    party = json["party"] == null ? null : Party22.fromJson(json["party"]);
    assets = json["assets"] == null ? null : Assets22.fromJson(json["assets"]);
    secrets = json["secrets"] == null ? null : Secrets22.fromJson(json["secrets"]);
    instance = json["instance"];
    flags = json["flags"];
    id = json["id"];
    syncId = json["sync_id"];
    metadata = json["metadata"] == null ? null : Metadata22.fromJson(json["metadata"]);
    sessionId = json["session_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["type"] = type;
    _data["url"] = url;
    _data["created_at"] = createdAt;
    if(timestamps != null) {
      _data["timestamps"] = timestamps?.toJson();
    }
    _data["application_id"] = applicationId;
    _data["details"] = details;
    _data["state"] = state;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    if(party != null) {
      _data["party"] = party?.toJson();
    }
    if(assets != null) {
      _data["assets"] = assets?.toJson();
    }
    if(secrets != null) {
      _data["secrets"] = secrets?.toJson();
    }
    _data["instance"] = instance;
    _data["flags"] = flags;
    _data["id"] = id;
    _data["sync_id"] = syncId;
    if(metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    _data["session_id"] = sessionId;
    return _data;
  }
}

class Metadata22 {
  String? contextUri;
  String? albumId;
  List<String>? artistIds;

  Metadata22({this.contextUri, this.albumId, this.artistIds});

  Metadata22.fromJson(Map<String, dynamic> json) {
    contextUri = json["context_uri"];
    albumId = json["album_id"];
    artistIds = json["artist_ids"] == null ? null : List<String>.from(json["artist_ids"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["context_uri"] = contextUri;
    _data["album_id"] = albumId;
    if(artistIds != null) {
      _data["artist_ids"] = artistIds;
    }
    return _data;
  }
}

class Secrets22 {
  String? join;
  String? spectate;
  String? match;

  Secrets22({this.join, this.spectate, this.match});

  Secrets22.fromJson(Map<String, dynamic> json) {
    join = json["join"];
    spectate = json["spectate"];
    match = json["match"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["join"] = join;
    _data["spectate"] = spectate;
    _data["match"] = match;
    return _data;
  }
}

class Assets22 {
  String? largeImage;
  String? largeText;
  String? smallImage;
  String? smallText;

  Assets22({this.largeImage, this.largeText, this.smallImage, this.smallText});

  Assets22.fromJson(Map<String, dynamic> json) {
    largeImage = json["large_image"];
    largeText = json["large_text"];
    smallImage = json["small_image"];
    smallText = json["small_text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["large_image"] = largeImage;
    _data["large_text"] = largeText;
    _data["small_image"] = smallImage;
    _data["small_text"] = smallText;
    return _data;
  }
}

class Party22 {
  String? id;
  List<int>? size;

  Party22({this.id, this.size});

  Party22.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    size = json["size"] == null ? null : List<int>.from(json["size"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if(size != null) {
      _data["size"] = size;
    }
    return _data;
  }
}

class Emoji24 {
  String? name;
  String? id;
  bool? animated;

  Emoji24({this.name, this.id, this.animated});

  Emoji24.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["id"] = id;
    _data["animated"] = animated;
    return _data;
  }
}

class Timestamps22 {
  int? start;
  int? end;

  Timestamps22({this.start, this.end});

  Timestamps22.fromJson(Map<String, dynamic> json) {
    start = json["start"];
    end = json["end"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }
}

class Members2 {
  int? membershipState;
  List<String>? permissions;
  String? teamId;
  String? team;
  String? userId;
  User9? user;
  String? id;

  Members2({this.membershipState, this.permissions, this.teamId, this.team, this.userId, this.user, this.id});

  Members2.fromJson(Map<String, dynamic> json) {
    membershipState = json["membership_state"];
    permissions = json["permissions"] == null ? null : List<String>.from(json["permissions"]);
    teamId = json["team_id"];
    team = json["team"];
    userId = json["user_id"];
    user = json["user"] == null ? null : User9.fromJson(json["user"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["membership_state"] = membershipState;
    if(permissions != null) {
      _data["permissions"] = permissions;
    }
    _data["team_id"] = teamId;
    _data["team"] = team;
    _data["user_id"] = userId;
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class User9 {
  String? username;
  String? discriminator;
  String? avatar;
  int? accentColor;
  String? banner;
  List<int>? themeColors;
  String? pronouns;
  String? phone;
  bool? desktop;
  bool? mobile;
  bool? premium;
  int? premiumType;
  bool? bot;
  String? bio;
  bool? system;
  bool? nsfwAllowed;
  bool? mfaEnabled;
  bool? webauthnEnabled;
  String? totpSecret;
  String? totpLastTicket;
  String? createdAt;
  String? premiumSince;
  bool? verified;
  bool? disabled;
  bool? deleted;
  String? email;
  String? flags;
  int? publicFlags;
  int? purchasedFlags;
  int? premiumUsageFlags;
  String? rights;
  List<Sessions21>? sessions;
  List<Relationships21>? relationships;
  List<ConnectedAccounts21>? connectedAccounts;
  Data21? data;
  List<String>? fingerprints;
  Settings23? settings;
  String? extendedSettings;
  List<SecurityKeys21>? securityKeys;
  String? id;

  User9({this.username, this.discriminator, this.avatar, this.accentColor, this.banner, this.themeColors, this.pronouns, this.phone, this.desktop, this.mobile, this.premium, this.premiumType, this.bot, this.bio, this.system, this.nsfwAllowed, this.mfaEnabled, this.webauthnEnabled, this.totpSecret, this.totpLastTicket, this.createdAt, this.premiumSince, this.verified, this.disabled, this.deleted, this.email, this.flags, this.publicFlags, this.purchasedFlags, this.premiumUsageFlags, this.rights, this.sessions, this.relationships, this.connectedAccounts, this.data, this.fingerprints, this.settings, this.extendedSettings, this.securityKeys, this.id});

  User9.fromJson(Map<String, dynamic> json) {
    username = json["username"];
    discriminator = json["discriminator"];
    avatar = json["avatar"];
    accentColor = json["accent_color"];
    banner = json["banner"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    phone = json["phone"];
    desktop = json["desktop"];
    mobile = json["mobile"];
    premium = json["premium"];
    premiumType = json["premium_type"];
    bot = json["bot"];
    bio = json["bio"];
    system = json["system"];
    nsfwAllowed = json["nsfw_allowed"];
    mfaEnabled = json["mfa_enabled"];
    webauthnEnabled = json["webauthn_enabled"];
    totpSecret = json["totp_secret"];
    totpLastTicket = json["totp_last_ticket"];
    createdAt = json["created_at"];
    premiumSince = json["premium_since"];
    verified = json["verified"];
    disabled = json["disabled"];
    deleted = json["deleted"];
    email = json["email"];
    flags = json["flags"];
    publicFlags = json["public_flags"];
    purchasedFlags = json["purchased_flags"];
    premiumUsageFlags = json["premium_usage_flags"];
    rights = json["rights"];
    sessions = json["sessions"] == null ? null : (json["sessions"] as List).map((e) => Sessions21.fromJson(e)).toList();
    relationships = json["relationships"] == null ? null : (json["relationships"] as List).map((e) => Relationships21.fromJson(e)).toList();
    connectedAccounts = json["connected_accounts"] == null ? null : (json["connected_accounts"] as List).map((e) => ConnectedAccounts21.fromJson(e)).toList();
    data = json["data"] == null ? null : Data21.fromJson(json["data"]);
    fingerprints = json["fingerprints"] == null ? null : List<String>.from(json["fingerprints"]);
    settings = json["settings"] == null ? null : Settings23.fromJson(json["settings"]);
    extendedSettings = json["extended_settings"];
    securityKeys = json["security_keys"] == null ? null : (json["security_keys"] as List).map((e) => SecurityKeys21.fromJson(e)).toList();
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["discriminator"] = discriminator;
    _data["avatar"] = avatar;
    _data["accent_color"] = accentColor;
    _data["banner"] = banner;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["phone"] = phone;
    _data["desktop"] = desktop;
    _data["mobile"] = mobile;
    _data["premium"] = premium;
    _data["premium_type"] = premiumType;
    _data["bot"] = bot;
    _data["bio"] = bio;
    _data["system"] = system;
    _data["nsfw_allowed"] = nsfwAllowed;
    _data["mfa_enabled"] = mfaEnabled;
    _data["webauthn_enabled"] = webauthnEnabled;
    _data["totp_secret"] = totpSecret;
    _data["totp_last_ticket"] = totpLastTicket;
    _data["created_at"] = createdAt;
    _data["premium_since"] = premiumSince;
    _data["verified"] = verified;
    _data["disabled"] = disabled;
    _data["deleted"] = deleted;
    _data["email"] = email;
    _data["flags"] = flags;
    _data["public_flags"] = publicFlags;
    _data["purchased_flags"] = purchasedFlags;
    _data["premium_usage_flags"] = premiumUsageFlags;
    _data["rights"] = rights;
    if(sessions != null) {
      _data["sessions"] = sessions?.map((e) => e.toJson()).toList();
    }
    if(relationships != null) {
      _data["relationships"] = relationships?.map((e) => e.toJson()).toList();
    }
    if(connectedAccounts != null) {
      _data["connected_accounts"] = connectedAccounts?.map((e) => e.toJson()).toList();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    if(fingerprints != null) {
      _data["fingerprints"] = fingerprints;
    }
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["extended_settings"] = extendedSettings;
    if(securityKeys != null) {
      _data["security_keys"] = securityKeys?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    return _data;
  }
}

class SecurityKeys21 {
  String? userId;
  String? user;
  String? keyId;
  String? publicKey;
  int? counter;
  String? name;
  String? id;

  SecurityKeys21({this.userId, this.user, this.keyId, this.publicKey, this.counter, this.name, this.id});

  SecurityKeys21.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    keyId = json["key_id"];
    publicKey = json["public_key"];
    counter = json["counter"];
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["key_id"] = keyId;
    _data["public_key"] = publicKey;
    _data["counter"] = counter;
    _data["name"] = name;
    _data["id"] = id;
    return _data;
  }
}

class Settings23 {
  String? index;
  int? afkTimeout;
  bool? allowAccessibilityDetection;
  bool? animateEmoji;
  int? animateStickers;
  bool? contactSyncEnabled;
  bool? convertEmoticons;
  CustomStatus21? customStatus;
  bool? defaultGuildsRestricted;
  bool? detectPlatformAccounts;
  bool? developerMode;
  bool? disableGamesTab;
  bool? enableTtsCommand;
  int? explicitContentFilter;
  FriendSourceFlags21? friendSourceFlags;
  bool? gatewayConnected;
  bool? gifAutoPlay;
  List<GuildFolders21>? guildFolders;
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

  Settings23({this.index, this.afkTimeout, this.allowAccessibilityDetection, this.animateEmoji, this.animateStickers, this.contactSyncEnabled, this.convertEmoticons, this.customStatus, this.defaultGuildsRestricted, this.detectPlatformAccounts, this.developerMode, this.disableGamesTab, this.enableTtsCommand, this.explicitContentFilter, this.friendSourceFlags, this.gatewayConnected, this.gifAutoPlay, this.guildFolders, this.guildPositions, this.inlineAttachmentMedia, this.inlineEmbedMedia, this.locale, this.messageDisplayCompact, this.nativePhoneIntegrationEnabled, this.renderEmbeds, this.renderReactions, this.restrictedGuilds, this.showCurrentGame, this.status, this.streamNotificationsEnabled, this.theme, this.timezoneOffset});

  Settings23.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    afkTimeout = json["afk_timeout"];
    allowAccessibilityDetection = json["allow_accessibility_detection"];
    animateEmoji = json["animate_emoji"];
    animateStickers = json["animate_stickers"];
    contactSyncEnabled = json["contact_sync_enabled"];
    convertEmoticons = json["convert_emoticons"];
    customStatus = json["custom_status"] == null ? null : CustomStatus21.fromJson(json["custom_status"]);
    defaultGuildsRestricted = json["default_guilds_restricted"];
    detectPlatformAccounts = json["detect_platform_accounts"];
    developerMode = json["developer_mode"];
    disableGamesTab = json["disable_games_tab"];
    enableTtsCommand = json["enable_tts_command"];
    explicitContentFilter = json["explicit_content_filter"];
    friendSourceFlags = json["friend_source_flags"] == null ? null : FriendSourceFlags21.fromJson(json["friend_source_flags"]);
    gatewayConnected = json["gateway_connected"];
    gifAutoPlay = json["gif_auto_play"];
    guildFolders = json["guild_folders"] == null ? null : (json["guild_folders"] as List).map((e) => GuildFolders21.fromJson(e)).toList();
    guildPositions = json["guild_positions"] == null ? null : List<String>.from(json["guild_positions"]);
    inlineAttachmentMedia = json["inline_attachment_media"];
    inlineEmbedMedia = json["inline_embed_media"];
    locale = json["locale"];
    messageDisplayCompact = json["message_display_compact"];
    nativePhoneIntegrationEnabled = json["native_phone_integration_enabled"];
    renderEmbeds = json["render_embeds"];
    renderReactions = json["render_reactions"];
    restrictedGuilds = json["restricted_guilds"] == null ? null : List<String>.from(json["restricted_guilds"]);
    showCurrentGame = json["show_current_game"];
    status = json["status"];
    streamNotificationsEnabled = json["stream_notifications_enabled"];
    theme = json["theme"];
    timezoneOffset = json["timezone_offset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["afk_timeout"] = afkTimeout;
    _data["allow_accessibility_detection"] = allowAccessibilityDetection;
    _data["animate_emoji"] = animateEmoji;
    _data["animate_stickers"] = animateStickers;
    _data["contact_sync_enabled"] = contactSyncEnabled;
    _data["convert_emoticons"] = convertEmoticons;
    if(customStatus != null) {
      _data["custom_status"] = customStatus?.toJson();
    }
    _data["default_guilds_restricted"] = defaultGuildsRestricted;
    _data["detect_platform_accounts"] = detectPlatformAccounts;
    _data["developer_mode"] = developerMode;
    _data["disable_games_tab"] = disableGamesTab;
    _data["enable_tts_command"] = enableTtsCommand;
    _data["explicit_content_filter"] = explicitContentFilter;
    if(friendSourceFlags != null) {
      _data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    _data["gateway_connected"] = gatewayConnected;
    _data["gif_auto_play"] = gifAutoPlay;
    if(guildFolders != null) {
      _data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if(guildPositions != null) {
      _data["guild_positions"] = guildPositions;
    }
    _data["inline_attachment_media"] = inlineAttachmentMedia;
    _data["inline_embed_media"] = inlineEmbedMedia;
    _data["locale"] = locale;
    _data["message_display_compact"] = messageDisplayCompact;
    _data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    _data["render_embeds"] = renderEmbeds;
    _data["render_reactions"] = renderReactions;
    if(restrictedGuilds != null) {
      _data["restricted_guilds"] = restrictedGuilds;
    }
    _data["show_current_game"] = showCurrentGame;
    _data["status"] = status;
    _data["stream_notifications_enabled"] = streamNotificationsEnabled;
    _data["theme"] = theme;
    _data["timezone_offset"] = timezoneOffset;
    return _data;
  }
}

class GuildFolders21 {
  int? color;
  List<String>? guildIds;
  int? id;
  String? name;

  GuildFolders21({this.color, this.guildIds, this.id, this.name});

  GuildFolders21.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    guildIds = json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    if(guildIds != null) {
      _data["guild_ids"] = guildIds;
    }
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class FriendSourceFlags21 {
  bool? all;

  FriendSourceFlags21({this.all});

  FriendSourceFlags21.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["all"] = all;
    return _data;
  }
}

class CustomStatus21 {
  String? emojiId;
  String? emojiName;
  int? expiresAt;
  String? text;

  CustomStatus21({this.emojiId, this.emojiName, this.expiresAt, this.text});

  CustomStatus21.fromJson(Map<String, dynamic> json) {
    emojiId = json["emoji_id"];
    emojiName = json["emoji_name"];
    expiresAt = json["expires_at"];
    text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["emoji_id"] = emojiId;
    _data["emoji_name"] = emojiName;
    _data["expires_at"] = expiresAt;
    _data["text"] = text;
    return _data;
  }
}

class Data21 {
  String? validTokensSince;
  String? hash;

  Data21({this.validTokensSince, this.hash});

  Data21.fromJson(Map<String, dynamic> json) {
    validTokensSince = json["valid_tokens_since"];
    hash = json["hash"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["valid_tokens_since"] = validTokensSince;
    _data["hash"] = hash;
    return _data;
  }
}

class ConnectedAccounts21 {
  String? externalId;
  String? userId;
  String? user;
  bool? friendSync;
  String? name;
  bool? revoked;
  int? showActivity;
  String? type;
  bool? verified;
  int? visibility;
  List<String>? integrations;
  dynamic metadata;
  int? metadataVisibility;
  bool? twoWayLink;
  TokenData21? tokenData;
  String? id;

  ConnectedAccounts21({this.externalId, this.userId, this.user, this.friendSync, this.name, this.revoked, this.showActivity, this.type, this.verified, this.visibility, this.integrations, this.metadata, this.metadataVisibility, this.twoWayLink, this.tokenData, this.id});

  ConnectedAccounts21.fromJson(Map<String, dynamic> json) {
    externalId = json["external_id"];
    userId = json["user_id"];
    user = json["user"];
    friendSync = json["friend_sync"];
    name = json["name"];
    revoked = json["revoked"];
    showActivity = json["show_activity"];
    type = json["type"];
    verified = json["verified"];
    visibility = json["visibility"];
    integrations = json["integrations"] == null ? null : List<String>.from(json["integrations"]);
    metadata = json["metadata_"];
    metadataVisibility = json["metadata_visibility"];
    twoWayLink = json["two_way_link"];
    tokenData = json["token_data"] == null ? null : TokenData21.fromJson(json["token_data"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["external_id"] = externalId;
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["friend_sync"] = friendSync;
    _data["name"] = name;
    _data["revoked"] = revoked;
    _data["show_activity"] = showActivity;
    _data["type"] = type;
    _data["verified"] = verified;
    _data["visibility"] = visibility;
    if(integrations != null) {
      _data["integrations"] = integrations;
    }
    _data["metadata_"] = metadata;
    _data["metadata_visibility"] = metadataVisibility;
    _data["two_way_link"] = twoWayLink;
    if(tokenData != null) {
      _data["token_data"] = tokenData?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class TokenData21 {
  String? accessToken;
  String? tokenType;
  String? scope;
  String? refreshToken;
  int? expiresIn;
  int? expiresAt;
  int? fetchedAt;

  TokenData21({this.accessToken, this.tokenType, this.scope, this.refreshToken, this.expiresIn, this.expiresAt, this.fetchedAt});

  TokenData21.fromJson(Map<String, dynamic> json) {
    accessToken = json["access_token"];
    tokenType = json["token_type"];
    scope = json["scope"];
    refreshToken = json["refresh_token"];
    expiresIn = json["expires_in"];
    expiresAt = json["expires_at"];
    fetchedAt = json["fetched_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    _data["token_type"] = tokenType;
    _data["scope"] = scope;
    _data["refresh_token"] = refreshToken;
    _data["expires_in"] = expiresIn;
    _data["expires_at"] = expiresAt;
    _data["fetched_at"] = fetchedAt;
    return _data;
  }
}

class Relationships21 {
  String? fromId;
  String? from;
  String? toId;
  String? to;
  String? nickname;
  int? type;
  String? id;

  Relationships21({this.fromId, this.from, this.toId, this.to, this.nickname, this.type, this.id});

  Relationships21.fromJson(Map<String, dynamic> json) {
    fromId = json["from_id"];
    from = json["from"];
    toId = json["to_id"];
    to = json["to"];
    nickname = json["nickname"];
    type = json["type"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["from_id"] = fromId;
    _data["from"] = from;
    _data["to_id"] = toId;
    _data["to"] = to;
    _data["nickname"] = nickname;
    _data["type"] = type;
    _data["id"] = id;
    return _data;
  }
}

class Sessions21 {
  String? userId;
  String? user;
  String? sessionId;
  List<Activities21>? activities;
  ClientInfo21? clientInfo;
  String? status;
  String? id;

  Sessions21({this.userId, this.user, this.sessionId, this.activities, this.clientInfo, this.status, this.id});

  Sessions21.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    sessionId = json["session_id"];
    activities = json["activities"] == null ? null : (json["activities"] as List).map((e) => Activities21.fromJson(e)).toList();
    clientInfo = json["client_info"] == null ? null : ClientInfo21.fromJson(json["client_info"]);
    status = json["status"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["session_id"] = sessionId;
    if(activities != null) {
      _data["activities"] = activities?.map((e) => e.toJson()).toList();
    }
    if(clientInfo != null) {
      _data["client_info"] = clientInfo?.toJson();
    }
    _data["status"] = status;
    _data["id"] = id;
    return _data;
  }
}

class ClientInfo21 {
  String? client;
  String? os;
  int? version;

  ClientInfo21({this.client, this.os, this.version});

  ClientInfo21.fromJson(Map<String, dynamic> json) {
    client = json["client"];
    os = json["os"];
    version = json["version"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["client"] = client;
    _data["os"] = os;
    _data["version"] = version;
    return _data;
  }
}

class Activities21 {
  String? name;
  int? type;
  String? url;
  int? createdAt;
  Timestamps21? timestamps;
  String? applicationId;
  String? details;
  String? state;
  Emoji23? emoji;
  Party21? party;
  Assets21? assets;
  Secrets21? secrets;
  bool? instance;
  String? flags;
  String? id;
  String? syncId;
  Metadata21? metadata;
  String? sessionId;

  Activities21({this.name, this.type, this.url, this.createdAt, this.timestamps, this.applicationId, this.details, this.state, this.emoji, this.party, this.assets, this.secrets, this.instance, this.flags, this.id, this.syncId, this.metadata, this.sessionId});

  Activities21.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    type = json["type"];
    url = json["url"];
    createdAt = json["created_at"];
    timestamps = json["timestamps"] == null ? null : Timestamps21.fromJson(json["timestamps"]);
    applicationId = json["application_id"];
    details = json["details"];
    state = json["state"];
    emoji = json["emoji"] == null ? null : Emoji23.fromJson(json["emoji"]);
    party = json["party"] == null ? null : Party21.fromJson(json["party"]);
    assets = json["assets"] == null ? null : Assets21.fromJson(json["assets"]);
    secrets = json["secrets"] == null ? null : Secrets21.fromJson(json["secrets"]);
    instance = json["instance"];
    flags = json["flags"];
    id = json["id"];
    syncId = json["sync_id"];
    metadata = json["metadata"] == null ? null : Metadata21.fromJson(json["metadata"]);
    sessionId = json["session_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["type"] = type;
    _data["url"] = url;
    _data["created_at"] = createdAt;
    if(timestamps != null) {
      _data["timestamps"] = timestamps?.toJson();
    }
    _data["application_id"] = applicationId;
    _data["details"] = details;
    _data["state"] = state;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    if(party != null) {
      _data["party"] = party?.toJson();
    }
    if(assets != null) {
      _data["assets"] = assets?.toJson();
    }
    if(secrets != null) {
      _data["secrets"] = secrets?.toJson();
    }
    _data["instance"] = instance;
    _data["flags"] = flags;
    _data["id"] = id;
    _data["sync_id"] = syncId;
    if(metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    _data["session_id"] = sessionId;
    return _data;
  }
}

class Metadata21 {
  String? contextUri;
  String? albumId;
  List<String>? artistIds;

  Metadata21({this.contextUri, this.albumId, this.artistIds});

  Metadata21.fromJson(Map<String, dynamic> json) {
    contextUri = json["context_uri"];
    albumId = json["album_id"];
    artistIds = json["artist_ids"] == null ? null : List<String>.from(json["artist_ids"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["context_uri"] = contextUri;
    _data["album_id"] = albumId;
    if(artistIds != null) {
      _data["artist_ids"] = artistIds;
    }
    return _data;
  }
}

class Secrets21 {
  String? join;
  String? spectate;
  String? match;

  Secrets21({this.join, this.spectate, this.match});

  Secrets21.fromJson(Map<String, dynamic> json) {
    join = json["join"];
    spectate = json["spectate"];
    match = json["match"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["join"] = join;
    _data["spectate"] = spectate;
    _data["match"] = match;
    return _data;
  }
}

class Assets21 {
  String? largeImage;
  String? largeText;
  String? smallImage;
  String? smallText;

  Assets21({this.largeImage, this.largeText, this.smallImage, this.smallText});

  Assets21.fromJson(Map<String, dynamic> json) {
    largeImage = json["large_image"];
    largeText = json["large_text"];
    smallImage = json["small_image"];
    smallText = json["small_text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["large_image"] = largeImage;
    _data["large_text"] = largeText;
    _data["small_image"] = smallImage;
    _data["small_text"] = smallText;
    return _data;
  }
}

class Party21 {
  String? id;
  List<int>? size;

  Party21({this.id, this.size});

  Party21.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    size = json["size"] == null ? null : List<int>.from(json["size"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if(size != null) {
      _data["size"] = size;
    }
    return _data;
  }
}

class Emoji23 {
  String? name;
  String? id;
  bool? animated;

  Emoji23({this.name, this.id, this.animated});

  Emoji23.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["id"] = id;
    _data["animated"] = animated;
    return _data;
  }
}

class Timestamps21 {
  int? start;
  int? end;

  Timestamps21({this.start, this.end});

  Timestamps21.fromJson(Map<String, dynamic> json) {
    start = json["start"];
    end = json["end"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }
}

class InstallParams2 {
  List<String>? scopes;
  String? permissions;

  InstallParams2({this.scopes, this.permissions});

  InstallParams2.fromJson(Map<String, dynamic> json) {
    scopes = json["scopes"] == null ? null : List<String>.from(json["scopes"]);
    permissions = json["permissions"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(scopes != null) {
      _data["scopes"] = scopes;
    }
    _data["permissions"] = permissions;
    return _data;
  }
}

class Bot2 {
  String? username;
  String? discriminator;
  String? avatar;
  int? accentColor;
  String? banner;
  List<int>? themeColors;
  String? pronouns;
  String? phone;
  bool? desktop;
  bool? mobile;
  bool? premium;
  int? premiumType;
  bool? bot;
  String? bio;
  bool? system;
  bool? nsfwAllowed;
  bool? mfaEnabled;
  bool? webauthnEnabled;
  String? totpSecret;
  String? totpLastTicket;
  String? createdAt;
  String? premiumSince;
  bool? verified;
  bool? disabled;
  bool? deleted;
  String? email;
  String? flags;
  int? publicFlags;
  int? purchasedFlags;
  int? premiumUsageFlags;
  String? rights;
  List<Sessions20>? sessions;
  List<Relationships20>? relationships;
  List<ConnectedAccounts20>? connectedAccounts;
  Data20? data;
  List<String>? fingerprints;
  Settings22? settings;
  String? extendedSettings;
  List<SecurityKeys20>? securityKeys;
  String? id;

  Bot2({this.username, this.discriminator, this.avatar, this.accentColor, this.banner, this.themeColors, this.pronouns, this.phone, this.desktop, this.mobile, this.premium, this.premiumType, this.bot, this.bio, this.system, this.nsfwAllowed, this.mfaEnabled, this.webauthnEnabled, this.totpSecret, this.totpLastTicket, this.createdAt, this.premiumSince, this.verified, this.disabled, this.deleted, this.email, this.flags, this.publicFlags, this.purchasedFlags, this.premiumUsageFlags, this.rights, this.sessions, this.relationships, this.connectedAccounts, this.data, this.fingerprints, this.settings, this.extendedSettings, this.securityKeys, this.id});

  Bot2.fromJson(Map<String, dynamic> json) {
    username = json["username"];
    discriminator = json["discriminator"];
    avatar = json["avatar"];
    accentColor = json["accent_color"];
    banner = json["banner"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    phone = json["phone"];
    desktop = json["desktop"];
    mobile = json["mobile"];
    premium = json["premium"];
    premiumType = json["premium_type"];
    bot = json["bot"];
    bio = json["bio"];
    system = json["system"];
    nsfwAllowed = json["nsfw_allowed"];
    mfaEnabled = json["mfa_enabled"];
    webauthnEnabled = json["webauthn_enabled"];
    totpSecret = json["totp_secret"];
    totpLastTicket = json["totp_last_ticket"];
    createdAt = json["created_at"];
    premiumSince = json["premium_since"];
    verified = json["verified"];
    disabled = json["disabled"];
    deleted = json["deleted"];
    email = json["email"];
    flags = json["flags"];
    publicFlags = json["public_flags"];
    purchasedFlags = json["purchased_flags"];
    premiumUsageFlags = json["premium_usage_flags"];
    rights = json["rights"];
    sessions = json["sessions"] == null ? null : (json["sessions"] as List).map((e) => Sessions20.fromJson(e)).toList();
    relationships = json["relationships"] == null ? null : (json["relationships"] as List).map((e) => Relationships20.fromJson(e)).toList();
    connectedAccounts = json["connected_accounts"] == null ? null : (json["connected_accounts"] as List).map((e) => ConnectedAccounts20.fromJson(e)).toList();
    data = json["data"] == null ? null : Data20.fromJson(json["data"]);
    fingerprints = json["fingerprints"] == null ? null : List<String>.from(json["fingerprints"]);
    settings = json["settings"] == null ? null : Settings22.fromJson(json["settings"]);
    extendedSettings = json["extended_settings"];
    securityKeys = json["security_keys"] == null ? null : (json["security_keys"] as List).map((e) => SecurityKeys20.fromJson(e)).toList();
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["discriminator"] = discriminator;
    _data["avatar"] = avatar;
    _data["accent_color"] = accentColor;
    _data["banner"] = banner;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["phone"] = phone;
    _data["desktop"] = desktop;
    _data["mobile"] = mobile;
    _data["premium"] = premium;
    _data["premium_type"] = premiumType;
    _data["bot"] = bot;
    _data["bio"] = bio;
    _data["system"] = system;
    _data["nsfw_allowed"] = nsfwAllowed;
    _data["mfa_enabled"] = mfaEnabled;
    _data["webauthn_enabled"] = webauthnEnabled;
    _data["totp_secret"] = totpSecret;
    _data["totp_last_ticket"] = totpLastTicket;
    _data["created_at"] = createdAt;
    _data["premium_since"] = premiumSince;
    _data["verified"] = verified;
    _data["disabled"] = disabled;
    _data["deleted"] = deleted;
    _data["email"] = email;
    _data["flags"] = flags;
    _data["public_flags"] = publicFlags;
    _data["purchased_flags"] = purchasedFlags;
    _data["premium_usage_flags"] = premiumUsageFlags;
    _data["rights"] = rights;
    if(sessions != null) {
      _data["sessions"] = sessions?.map((e) => e.toJson()).toList();
    }
    if(relationships != null) {
      _data["relationships"] = relationships?.map((e) => e.toJson()).toList();
    }
    if(connectedAccounts != null) {
      _data["connected_accounts"] = connectedAccounts?.map((e) => e.toJson()).toList();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    if(fingerprints != null) {
      _data["fingerprints"] = fingerprints;
    }
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["extended_settings"] = extendedSettings;
    if(securityKeys != null) {
      _data["security_keys"] = securityKeys?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    return _data;
  }
}

class SecurityKeys20 {
  String? userId;
  String? user;
  String? keyId;
  String? publicKey;
  int? counter;
  String? name;
  String? id;

  SecurityKeys20({this.userId, this.user, this.keyId, this.publicKey, this.counter, this.name, this.id});

  SecurityKeys20.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    keyId = json["key_id"];
    publicKey = json["public_key"];
    counter = json["counter"];
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["key_id"] = keyId;
    _data["public_key"] = publicKey;
    _data["counter"] = counter;
    _data["name"] = name;
    _data["id"] = id;
    return _data;
  }
}

class Settings22 {
  String? index;
  int? afkTimeout;
  bool? allowAccessibilityDetection;
  bool? animateEmoji;
  int? animateStickers;
  bool? contactSyncEnabled;
  bool? convertEmoticons;
  CustomStatus20? customStatus;
  bool? defaultGuildsRestricted;
  bool? detectPlatformAccounts;
  bool? developerMode;
  bool? disableGamesTab;
  bool? enableTtsCommand;
  int? explicitContentFilter;
  FriendSourceFlags20? friendSourceFlags;
  bool? gatewayConnected;
  bool? gifAutoPlay;
  List<GuildFolders20>? guildFolders;
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

  Settings22({this.index, this.afkTimeout, this.allowAccessibilityDetection, this.animateEmoji, this.animateStickers, this.contactSyncEnabled, this.convertEmoticons, this.customStatus, this.defaultGuildsRestricted, this.detectPlatformAccounts, this.developerMode, this.disableGamesTab, this.enableTtsCommand, this.explicitContentFilter, this.friendSourceFlags, this.gatewayConnected, this.gifAutoPlay, this.guildFolders, this.guildPositions, this.inlineAttachmentMedia, this.inlineEmbedMedia, this.locale, this.messageDisplayCompact, this.nativePhoneIntegrationEnabled, this.renderEmbeds, this.renderReactions, this.restrictedGuilds, this.showCurrentGame, this.status, this.streamNotificationsEnabled, this.theme, this.timezoneOffset});

  Settings22.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    afkTimeout = json["afk_timeout"];
    allowAccessibilityDetection = json["allow_accessibility_detection"];
    animateEmoji = json["animate_emoji"];
    animateStickers = json["animate_stickers"];
    contactSyncEnabled = json["contact_sync_enabled"];
    convertEmoticons = json["convert_emoticons"];
    customStatus = json["custom_status"] == null ? null : CustomStatus20.fromJson(json["custom_status"]);
    defaultGuildsRestricted = json["default_guilds_restricted"];
    detectPlatformAccounts = json["detect_platform_accounts"];
    developerMode = json["developer_mode"];
    disableGamesTab = json["disable_games_tab"];
    enableTtsCommand = json["enable_tts_command"];
    explicitContentFilter = json["explicit_content_filter"];
    friendSourceFlags = json["friend_source_flags"] == null ? null : FriendSourceFlags20.fromJson(json["friend_source_flags"]);
    gatewayConnected = json["gateway_connected"];
    gifAutoPlay = json["gif_auto_play"];
    guildFolders = json["guild_folders"] == null ? null : (json["guild_folders"] as List).map((e) => GuildFolders20.fromJson(e)).toList();
    guildPositions = json["guild_positions"] == null ? null : List<String>.from(json["guild_positions"]);
    inlineAttachmentMedia = json["inline_attachment_media"];
    inlineEmbedMedia = json["inline_embed_media"];
    locale = json["locale"];
    messageDisplayCompact = json["message_display_compact"];
    nativePhoneIntegrationEnabled = json["native_phone_integration_enabled"];
    renderEmbeds = json["render_embeds"];
    renderReactions = json["render_reactions"];
    restrictedGuilds = json["restricted_guilds"] == null ? null : List<String>.from(json["restricted_guilds"]);
    showCurrentGame = json["show_current_game"];
    status = json["status"];
    streamNotificationsEnabled = json["stream_notifications_enabled"];
    theme = json["theme"];
    timezoneOffset = json["timezone_offset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["afk_timeout"] = afkTimeout;
    _data["allow_accessibility_detection"] = allowAccessibilityDetection;
    _data["animate_emoji"] = animateEmoji;
    _data["animate_stickers"] = animateStickers;
    _data["contact_sync_enabled"] = contactSyncEnabled;
    _data["convert_emoticons"] = convertEmoticons;
    if(customStatus != null) {
      _data["custom_status"] = customStatus?.toJson();
    }
    _data["default_guilds_restricted"] = defaultGuildsRestricted;
    _data["detect_platform_accounts"] = detectPlatformAccounts;
    _data["developer_mode"] = developerMode;
    _data["disable_games_tab"] = disableGamesTab;
    _data["enable_tts_command"] = enableTtsCommand;
    _data["explicit_content_filter"] = explicitContentFilter;
    if(friendSourceFlags != null) {
      _data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    _data["gateway_connected"] = gatewayConnected;
    _data["gif_auto_play"] = gifAutoPlay;
    if(guildFolders != null) {
      _data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if(guildPositions != null) {
      _data["guild_positions"] = guildPositions;
    }
    _data["inline_attachment_media"] = inlineAttachmentMedia;
    _data["inline_embed_media"] = inlineEmbedMedia;
    _data["locale"] = locale;
    _data["message_display_compact"] = messageDisplayCompact;
    _data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    _data["render_embeds"] = renderEmbeds;
    _data["render_reactions"] = renderReactions;
    if(restrictedGuilds != null) {
      _data["restricted_guilds"] = restrictedGuilds;
    }
    _data["show_current_game"] = showCurrentGame;
    _data["status"] = status;
    _data["stream_notifications_enabled"] = streamNotificationsEnabled;
    _data["theme"] = theme;
    _data["timezone_offset"] = timezoneOffset;
    return _data;
  }
}

class GuildFolders20 {
  int? color;
  List<String>? guildIds;
  int? id;
  String? name;

  GuildFolders20({this.color, this.guildIds, this.id, this.name});

  GuildFolders20.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    guildIds = json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    if(guildIds != null) {
      _data["guild_ids"] = guildIds;
    }
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class FriendSourceFlags20 {
  bool? all;

  FriendSourceFlags20({this.all});

  FriendSourceFlags20.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["all"] = all;
    return _data;
  }
}

class CustomStatus20 {
  String? emojiId;
  String? emojiName;
  int? expiresAt;
  String? text;

  CustomStatus20({this.emojiId, this.emojiName, this.expiresAt, this.text});

  CustomStatus20.fromJson(Map<String, dynamic> json) {
    emojiId = json["emoji_id"];
    emojiName = json["emoji_name"];
    expiresAt = json["expires_at"];
    text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["emoji_id"] = emojiId;
    _data["emoji_name"] = emojiName;
    _data["expires_at"] = expiresAt;
    _data["text"] = text;
    return _data;
  }
}

class Data20 {
  String? validTokensSince;
  String? hash;

  Data20({this.validTokensSince, this.hash});

  Data20.fromJson(Map<String, dynamic> json) {
    validTokensSince = json["valid_tokens_since"];
    hash = json["hash"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["valid_tokens_since"] = validTokensSince;
    _data["hash"] = hash;
    return _data;
  }
}

class ConnectedAccounts20 {
  String? externalId;
  String? userId;
  String? user;
  bool? friendSync;
  String? name;
  bool? revoked;
  int? showActivity;
  String? type;
  bool? verified;
  int? visibility;
  List<String>? integrations;
  dynamic metadata;
  int? metadataVisibility;
  bool? twoWayLink;
  TokenData20? tokenData;
  String? id;

  ConnectedAccounts20({this.externalId, this.userId, this.user, this.friendSync, this.name, this.revoked, this.showActivity, this.type, this.verified, this.visibility, this.integrations, this.metadata, this.metadataVisibility, this.twoWayLink, this.tokenData, this.id});

  ConnectedAccounts20.fromJson(Map<String, dynamic> json) {
    externalId = json["external_id"];
    userId = json["user_id"];
    user = json["user"];
    friendSync = json["friend_sync"];
    name = json["name"];
    revoked = json["revoked"];
    showActivity = json["show_activity"];
    type = json["type"];
    verified = json["verified"];
    visibility = json["visibility"];
    integrations = json["integrations"] == null ? null : List<String>.from(json["integrations"]);
    metadata = json["metadata_"];
    metadataVisibility = json["metadata_visibility"];
    twoWayLink = json["two_way_link"];
    tokenData = json["token_data"] == null ? null : TokenData20.fromJson(json["token_data"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["external_id"] = externalId;
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["friend_sync"] = friendSync;
    _data["name"] = name;
    _data["revoked"] = revoked;
    _data["show_activity"] = showActivity;
    _data["type"] = type;
    _data["verified"] = verified;
    _data["visibility"] = visibility;
    if(integrations != null) {
      _data["integrations"] = integrations;
    }
    _data["metadata_"] = metadata;
    _data["metadata_visibility"] = metadataVisibility;
    _data["two_way_link"] = twoWayLink;
    if(tokenData != null) {
      _data["token_data"] = tokenData?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class TokenData20 {
  String? accessToken;
  String? tokenType;
  String? scope;
  String? refreshToken;
  int? expiresIn;
  int? expiresAt;
  int? fetchedAt;

  TokenData20({this.accessToken, this.tokenType, this.scope, this.refreshToken, this.expiresIn, this.expiresAt, this.fetchedAt});

  TokenData20.fromJson(Map<String, dynamic> json) {
    accessToken = json["access_token"];
    tokenType = json["token_type"];
    scope = json["scope"];
    refreshToken = json["refresh_token"];
    expiresIn = json["expires_in"];
    expiresAt = json["expires_at"];
    fetchedAt = json["fetched_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    _data["token_type"] = tokenType;
    _data["scope"] = scope;
    _data["refresh_token"] = refreshToken;
    _data["expires_in"] = expiresIn;
    _data["expires_at"] = expiresAt;
    _data["fetched_at"] = fetchedAt;
    return _data;
  }
}

class Relationships20 {
  String? fromId;
  String? from;
  String? toId;
  String? to;
  String? nickname;
  int? type;
  String? id;

  Relationships20({this.fromId, this.from, this.toId, this.to, this.nickname, this.type, this.id});

  Relationships20.fromJson(Map<String, dynamic> json) {
    fromId = json["from_id"];
    from = json["from"];
    toId = json["to_id"];
    to = json["to"];
    nickname = json["nickname"];
    type = json["type"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["from_id"] = fromId;
    _data["from"] = from;
    _data["to_id"] = toId;
    _data["to"] = to;
    _data["nickname"] = nickname;
    _data["type"] = type;
    _data["id"] = id;
    return _data;
  }
}

class Sessions20 {
  String? userId;
  String? user;
  String? sessionId;
  List<Activities20>? activities;
  ClientInfo20? clientInfo;
  String? status;
  String? id;

  Sessions20({this.userId, this.user, this.sessionId, this.activities, this.clientInfo, this.status, this.id});

  Sessions20.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    sessionId = json["session_id"];
    activities = json["activities"] == null ? null : (json["activities"] as List).map((e) => Activities20.fromJson(e)).toList();
    clientInfo = json["client_info"] == null ? null : ClientInfo20.fromJson(json["client_info"]);
    status = json["status"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["session_id"] = sessionId;
    if(activities != null) {
      _data["activities"] = activities?.map((e) => e.toJson()).toList();
    }
    if(clientInfo != null) {
      _data["client_info"] = clientInfo?.toJson();
    }
    _data["status"] = status;
    _data["id"] = id;
    return _data;
  }
}

class ClientInfo20 {
  String? client;
  String? os;
  int? version;

  ClientInfo20({this.client, this.os, this.version});

  ClientInfo20.fromJson(Map<String, dynamic> json) {
    client = json["client"];
    os = json["os"];
    version = json["version"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["client"] = client;
    _data["os"] = os;
    _data["version"] = version;
    return _data;
  }
}

class Activities20 {
  String? name;
  int? type;
  String? url;
  int? createdAt;
  Timestamps20? timestamps;
  String? applicationId;
  String? details;
  String? state;
  Emoji22? emoji;
  Party20? party;
  Assets20? assets;
  Secrets20? secrets;
  bool? instance;
  String? flags;
  String? id;
  String? syncId;
  Metadata20? metadata;
  String? sessionId;

  Activities20({this.name, this.type, this.url, this.createdAt, this.timestamps, this.applicationId, this.details, this.state, this.emoji, this.party, this.assets, this.secrets, this.instance, this.flags, this.id, this.syncId, this.metadata, this.sessionId});

  Activities20.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    type = json["type"];
    url = json["url"];
    createdAt = json["created_at"];
    timestamps = json["timestamps"] == null ? null : Timestamps20.fromJson(json["timestamps"]);
    applicationId = json["application_id"];
    details = json["details"];
    state = json["state"];
    emoji = json["emoji"] == null ? null : Emoji22.fromJson(json["emoji"]);
    party = json["party"] == null ? null : Party20.fromJson(json["party"]);
    assets = json["assets"] == null ? null : Assets20.fromJson(json["assets"]);
    secrets = json["secrets"] == null ? null : Secrets20.fromJson(json["secrets"]);
    instance = json["instance"];
    flags = json["flags"];
    id = json["id"];
    syncId = json["sync_id"];
    metadata = json["metadata"] == null ? null : Metadata20.fromJson(json["metadata"]);
    sessionId = json["session_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["type"] = type;
    _data["url"] = url;
    _data["created_at"] = createdAt;
    if(timestamps != null) {
      _data["timestamps"] = timestamps?.toJson();
    }
    _data["application_id"] = applicationId;
    _data["details"] = details;
    _data["state"] = state;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    if(party != null) {
      _data["party"] = party?.toJson();
    }
    if(assets != null) {
      _data["assets"] = assets?.toJson();
    }
    if(secrets != null) {
      _data["secrets"] = secrets?.toJson();
    }
    _data["instance"] = instance;
    _data["flags"] = flags;
    _data["id"] = id;
    _data["sync_id"] = syncId;
    if(metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    _data["session_id"] = sessionId;
    return _data;
  }
}

class Metadata20 {
  String? contextUri;
  String? albumId;
  List<String>? artistIds;

  Metadata20({this.contextUri, this.albumId, this.artistIds});

  Metadata20.fromJson(Map<String, dynamic> json) {
    contextUri = json["context_uri"];
    albumId = json["album_id"];
    artistIds = json["artist_ids"] == null ? null : List<String>.from(json["artist_ids"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["context_uri"] = contextUri;
    _data["album_id"] = albumId;
    if(artistIds != null) {
      _data["artist_ids"] = artistIds;
    }
    return _data;
  }
}

class Secrets20 {
  String? join;
  String? spectate;
  String? match;

  Secrets20({this.join, this.spectate, this.match});

  Secrets20.fromJson(Map<String, dynamic> json) {
    join = json["join"];
    spectate = json["spectate"];
    match = json["match"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["join"] = join;
    _data["spectate"] = spectate;
    _data["match"] = match;
    return _data;
  }
}

class Assets20 {
  String? largeImage;
  String? largeText;
  String? smallImage;
  String? smallText;

  Assets20({this.largeImage, this.largeText, this.smallImage, this.smallText});

  Assets20.fromJson(Map<String, dynamic> json) {
    largeImage = json["large_image"];
    largeText = json["large_text"];
    smallImage = json["small_image"];
    smallText = json["small_text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["large_image"] = largeImage;
    _data["large_text"] = largeText;
    _data["small_image"] = smallImage;
    _data["small_text"] = smallText;
    return _data;
  }
}

class Party20 {
  String? id;
  List<int>? size;

  Party20({this.id, this.size});

  Party20.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    size = json["size"] == null ? null : List<int>.from(json["size"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if(size != null) {
      _data["size"] = size;
    }
    return _data;
  }
}

class Emoji22 {
  String? name;
  String? id;
  bool? animated;

  Emoji22({this.name, this.id, this.animated});

  Emoji22.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["id"] = id;
    _data["animated"] = animated;
    return _data;
  }
}

class Timestamps20 {
  int? start;
  int? end;

  Timestamps20({this.start, this.end});

  Timestamps20.fromJson(Map<String, dynamic> json) {
    start = json["start"];
    end = json["end"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }
}

class Owner3 {
  String? username;
  String? discriminator;
  String? avatar;
  int? accentColor;
  String? banner;
  List<int>? themeColors;
  String? pronouns;
  String? phone;
  bool? desktop;
  bool? mobile;
  bool? premium;
  int? premiumType;
  bool? bot;
  String? bio;
  bool? system;
  bool? nsfwAllowed;
  bool? mfaEnabled;
  bool? webauthnEnabled;
  String? totpSecret;
  String? totpLastTicket;
  String? createdAt;
  String? premiumSince;
  bool? verified;
  bool? disabled;
  bool? deleted;
  String? email;
  String? flags;
  int? publicFlags;
  int? purchasedFlags;
  int? premiumUsageFlags;
  String? rights;
  List<Sessions19>? sessions;
  List<Relationships19>? relationships;
  List<ConnectedAccounts19>? connectedAccounts;
  Data19? data;
  List<String>? fingerprints;
  Settings21? settings;
  String? extendedSettings;
  List<SecurityKeys19>? securityKeys;
  String? id;

  Owner3({this.username, this.discriminator, this.avatar, this.accentColor, this.banner, this.themeColors, this.pronouns, this.phone, this.desktop, this.mobile, this.premium, this.premiumType, this.bot, this.bio, this.system, this.nsfwAllowed, this.mfaEnabled, this.webauthnEnabled, this.totpSecret, this.totpLastTicket, this.createdAt, this.premiumSince, this.verified, this.disabled, this.deleted, this.email, this.flags, this.publicFlags, this.purchasedFlags, this.premiumUsageFlags, this.rights, this.sessions, this.relationships, this.connectedAccounts, this.data, this.fingerprints, this.settings, this.extendedSettings, this.securityKeys, this.id});

  Owner3.fromJson(Map<String, dynamic> json) {
    username = json["username"];
    discriminator = json["discriminator"];
    avatar = json["avatar"];
    accentColor = json["accent_color"];
    banner = json["banner"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    phone = json["phone"];
    desktop = json["desktop"];
    mobile = json["mobile"];
    premium = json["premium"];
    premiumType = json["premium_type"];
    bot = json["bot"];
    bio = json["bio"];
    system = json["system"];
    nsfwAllowed = json["nsfw_allowed"];
    mfaEnabled = json["mfa_enabled"];
    webauthnEnabled = json["webauthn_enabled"];
    totpSecret = json["totp_secret"];
    totpLastTicket = json["totp_last_ticket"];
    createdAt = json["created_at"];
    premiumSince = json["premium_since"];
    verified = json["verified"];
    disabled = json["disabled"];
    deleted = json["deleted"];
    email = json["email"];
    flags = json["flags"];
    publicFlags = json["public_flags"];
    purchasedFlags = json["purchased_flags"];
    premiumUsageFlags = json["premium_usage_flags"];
    rights = json["rights"];
    sessions = json["sessions"] == null ? null : (json["sessions"] as List).map((e) => Sessions19.fromJson(e)).toList();
    relationships = json["relationships"] == null ? null : (json["relationships"] as List).map((e) => Relationships19.fromJson(e)).toList();
    connectedAccounts = json["connected_accounts"] == null ? null : (json["connected_accounts"] as List).map((e) => ConnectedAccounts19.fromJson(e)).toList();
    data = json["data"] == null ? null : Data19.fromJson(json["data"]);
    fingerprints = json["fingerprints"] == null ? null : List<String>.from(json["fingerprints"]);
    settings = json["settings"] == null ? null : Settings21.fromJson(json["settings"]);
    extendedSettings = json["extended_settings"];
    securityKeys = json["security_keys"] == null ? null : (json["security_keys"] as List).map((e) => SecurityKeys19.fromJson(e)).toList();
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["discriminator"] = discriminator;
    _data["avatar"] = avatar;
    _data["accent_color"] = accentColor;
    _data["banner"] = banner;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["phone"] = phone;
    _data["desktop"] = desktop;
    _data["mobile"] = mobile;
    _data["premium"] = premium;
    _data["premium_type"] = premiumType;
    _data["bot"] = bot;
    _data["bio"] = bio;
    _data["system"] = system;
    _data["nsfw_allowed"] = nsfwAllowed;
    _data["mfa_enabled"] = mfaEnabled;
    _data["webauthn_enabled"] = webauthnEnabled;
    _data["totp_secret"] = totpSecret;
    _data["totp_last_ticket"] = totpLastTicket;
    _data["created_at"] = createdAt;
    _data["premium_since"] = premiumSince;
    _data["verified"] = verified;
    _data["disabled"] = disabled;
    _data["deleted"] = deleted;
    _data["email"] = email;
    _data["flags"] = flags;
    _data["public_flags"] = publicFlags;
    _data["purchased_flags"] = purchasedFlags;
    _data["premium_usage_flags"] = premiumUsageFlags;
    _data["rights"] = rights;
    if(sessions != null) {
      _data["sessions"] = sessions?.map((e) => e.toJson()).toList();
    }
    if(relationships != null) {
      _data["relationships"] = relationships?.map((e) => e.toJson()).toList();
    }
    if(connectedAccounts != null) {
      _data["connected_accounts"] = connectedAccounts?.map((e) => e.toJson()).toList();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    if(fingerprints != null) {
      _data["fingerprints"] = fingerprints;
    }
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["extended_settings"] = extendedSettings;
    if(securityKeys != null) {
      _data["security_keys"] = securityKeys?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    return _data;
  }
}

class SecurityKeys19 {
  String? userId;
  String? user;
  String? keyId;
  String? publicKey;
  int? counter;
  String? name;
  String? id;

  SecurityKeys19({this.userId, this.user, this.keyId, this.publicKey, this.counter, this.name, this.id});

  SecurityKeys19.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    keyId = json["key_id"];
    publicKey = json["public_key"];
    counter = json["counter"];
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["key_id"] = keyId;
    _data["public_key"] = publicKey;
    _data["counter"] = counter;
    _data["name"] = name;
    _data["id"] = id;
    return _data;
  }
}

class Settings21 {
  String? index;
  int? afkTimeout;
  bool? allowAccessibilityDetection;
  bool? animateEmoji;
  int? animateStickers;
  bool? contactSyncEnabled;
  bool? convertEmoticons;
  CustomStatus19? customStatus;
  bool? defaultGuildsRestricted;
  bool? detectPlatformAccounts;
  bool? developerMode;
  bool? disableGamesTab;
  bool? enableTtsCommand;
  int? explicitContentFilter;
  FriendSourceFlags19? friendSourceFlags;
  bool? gatewayConnected;
  bool? gifAutoPlay;
  List<GuildFolders19>? guildFolders;
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

  Settings21({this.index, this.afkTimeout, this.allowAccessibilityDetection, this.animateEmoji, this.animateStickers, this.contactSyncEnabled, this.convertEmoticons, this.customStatus, this.defaultGuildsRestricted, this.detectPlatformAccounts, this.developerMode, this.disableGamesTab, this.enableTtsCommand, this.explicitContentFilter, this.friendSourceFlags, this.gatewayConnected, this.gifAutoPlay, this.guildFolders, this.guildPositions, this.inlineAttachmentMedia, this.inlineEmbedMedia, this.locale, this.messageDisplayCompact, this.nativePhoneIntegrationEnabled, this.renderEmbeds, this.renderReactions, this.restrictedGuilds, this.showCurrentGame, this.status, this.streamNotificationsEnabled, this.theme, this.timezoneOffset});

  Settings21.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    afkTimeout = json["afk_timeout"];
    allowAccessibilityDetection = json["allow_accessibility_detection"];
    animateEmoji = json["animate_emoji"];
    animateStickers = json["animate_stickers"];
    contactSyncEnabled = json["contact_sync_enabled"];
    convertEmoticons = json["convert_emoticons"];
    customStatus = json["custom_status"] == null ? null : CustomStatus19.fromJson(json["custom_status"]);
    defaultGuildsRestricted = json["default_guilds_restricted"];
    detectPlatformAccounts = json["detect_platform_accounts"];
    developerMode = json["developer_mode"];
    disableGamesTab = json["disable_games_tab"];
    enableTtsCommand = json["enable_tts_command"];
    explicitContentFilter = json["explicit_content_filter"];
    friendSourceFlags = json["friend_source_flags"] == null ? null : FriendSourceFlags19.fromJson(json["friend_source_flags"]);
    gatewayConnected = json["gateway_connected"];
    gifAutoPlay = json["gif_auto_play"];
    guildFolders = json["guild_folders"] == null ? null : (json["guild_folders"] as List).map((e) => GuildFolders19.fromJson(e)).toList();
    guildPositions = json["guild_positions"] == null ? null : List<String>.from(json["guild_positions"]);
    inlineAttachmentMedia = json["inline_attachment_media"];
    inlineEmbedMedia = json["inline_embed_media"];
    locale = json["locale"];
    messageDisplayCompact = json["message_display_compact"];
    nativePhoneIntegrationEnabled = json["native_phone_integration_enabled"];
    renderEmbeds = json["render_embeds"];
    renderReactions = json["render_reactions"];
    restrictedGuilds = json["restricted_guilds"] == null ? null : List<String>.from(json["restricted_guilds"]);
    showCurrentGame = json["show_current_game"];
    status = json["status"];
    streamNotificationsEnabled = json["stream_notifications_enabled"];
    theme = json["theme"];
    timezoneOffset = json["timezone_offset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["afk_timeout"] = afkTimeout;
    _data["allow_accessibility_detection"] = allowAccessibilityDetection;
    _data["animate_emoji"] = animateEmoji;
    _data["animate_stickers"] = animateStickers;
    _data["contact_sync_enabled"] = contactSyncEnabled;
    _data["convert_emoticons"] = convertEmoticons;
    if(customStatus != null) {
      _data["custom_status"] = customStatus?.toJson();
    }
    _data["default_guilds_restricted"] = defaultGuildsRestricted;
    _data["detect_platform_accounts"] = detectPlatformAccounts;
    _data["developer_mode"] = developerMode;
    _data["disable_games_tab"] = disableGamesTab;
    _data["enable_tts_command"] = enableTtsCommand;
    _data["explicit_content_filter"] = explicitContentFilter;
    if(friendSourceFlags != null) {
      _data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    _data["gateway_connected"] = gatewayConnected;
    _data["gif_auto_play"] = gifAutoPlay;
    if(guildFolders != null) {
      _data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if(guildPositions != null) {
      _data["guild_positions"] = guildPositions;
    }
    _data["inline_attachment_media"] = inlineAttachmentMedia;
    _data["inline_embed_media"] = inlineEmbedMedia;
    _data["locale"] = locale;
    _data["message_display_compact"] = messageDisplayCompact;
    _data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    _data["render_embeds"] = renderEmbeds;
    _data["render_reactions"] = renderReactions;
    if(restrictedGuilds != null) {
      _data["restricted_guilds"] = restrictedGuilds;
    }
    _data["show_current_game"] = showCurrentGame;
    _data["status"] = status;
    _data["stream_notifications_enabled"] = streamNotificationsEnabled;
    _data["theme"] = theme;
    _data["timezone_offset"] = timezoneOffset;
    return _data;
  }
}

class GuildFolders19 {
  int? color;
  List<String>? guildIds;
  int? id;
  String? name;

  GuildFolders19({this.color, this.guildIds, this.id, this.name});

  GuildFolders19.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    guildIds = json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    if(guildIds != null) {
      _data["guild_ids"] = guildIds;
    }
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class FriendSourceFlags19 {
  bool? all;

  FriendSourceFlags19({this.all});

  FriendSourceFlags19.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["all"] = all;
    return _data;
  }
}

class CustomStatus19 {
  String? emojiId;
  String? emojiName;
  int? expiresAt;
  String? text;

  CustomStatus19({this.emojiId, this.emojiName, this.expiresAt, this.text});

  CustomStatus19.fromJson(Map<String, dynamic> json) {
    emojiId = json["emoji_id"];
    emojiName = json["emoji_name"];
    expiresAt = json["expires_at"];
    text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["emoji_id"] = emojiId;
    _data["emoji_name"] = emojiName;
    _data["expires_at"] = expiresAt;
    _data["text"] = text;
    return _data;
  }
}

class Data19 {
  String? validTokensSince;
  String? hash;

  Data19({this.validTokensSince, this.hash});

  Data19.fromJson(Map<String, dynamic> json) {
    validTokensSince = json["valid_tokens_since"];
    hash = json["hash"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["valid_tokens_since"] = validTokensSince;
    _data["hash"] = hash;
    return _data;
  }
}

class ConnectedAccounts19 {
  String? externalId;
  String? userId;
  String? user;
  bool? friendSync;
  String? name;
  bool? revoked;
  int? showActivity;
  String? type;
  bool? verified;
  int? visibility;
  List<String>? integrations;
  dynamic metadata;
  int? metadataVisibility;
  bool? twoWayLink;
  TokenData19? tokenData;
  String? id;

  ConnectedAccounts19({this.externalId, this.userId, this.user, this.friendSync, this.name, this.revoked, this.showActivity, this.type, this.verified, this.visibility, this.integrations, this.metadata, this.metadataVisibility, this.twoWayLink, this.tokenData, this.id});

  ConnectedAccounts19.fromJson(Map<String, dynamic> json) {
    externalId = json["external_id"];
    userId = json["user_id"];
    user = json["user"];
    friendSync = json["friend_sync"];
    name = json["name"];
    revoked = json["revoked"];
    showActivity = json["show_activity"];
    type = json["type"];
    verified = json["verified"];
    visibility = json["visibility"];
    integrations = json["integrations"] == null ? null : List<String>.from(json["integrations"]);
    metadata = json["metadata_"];
    metadataVisibility = json["metadata_visibility"];
    twoWayLink = json["two_way_link"];
    tokenData = json["token_data"] == null ? null : TokenData19.fromJson(json["token_data"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["external_id"] = externalId;
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["friend_sync"] = friendSync;
    _data["name"] = name;
    _data["revoked"] = revoked;
    _data["show_activity"] = showActivity;
    _data["type"] = type;
    _data["verified"] = verified;
    _data["visibility"] = visibility;
    if(integrations != null) {
      _data["integrations"] = integrations;
    }
    _data["metadata_"] = metadata;
    _data["metadata_visibility"] = metadataVisibility;
    _data["two_way_link"] = twoWayLink;
    if(tokenData != null) {
      _data["token_data"] = tokenData?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class TokenData19 {
  String? accessToken;
  String? tokenType;
  String? scope;
  String? refreshToken;
  int? expiresIn;
  int? expiresAt;
  int? fetchedAt;

  TokenData19({this.accessToken, this.tokenType, this.scope, this.refreshToken, this.expiresIn, this.expiresAt, this.fetchedAt});

  TokenData19.fromJson(Map<String, dynamic> json) {
    accessToken = json["access_token"];
    tokenType = json["token_type"];
    scope = json["scope"];
    refreshToken = json["refresh_token"];
    expiresIn = json["expires_in"];
    expiresAt = json["expires_at"];
    fetchedAt = json["fetched_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    _data["token_type"] = tokenType;
    _data["scope"] = scope;
    _data["refresh_token"] = refreshToken;
    _data["expires_in"] = expiresIn;
    _data["expires_at"] = expiresAt;
    _data["fetched_at"] = fetchedAt;
    return _data;
  }
}

class Relationships19 {
  String? fromId;
  String? from;
  String? toId;
  String? to;
  String? nickname;
  int? type;
  String? id;

  Relationships19({this.fromId, this.from, this.toId, this.to, this.nickname, this.type, this.id});

  Relationships19.fromJson(Map<String, dynamic> json) {
    fromId = json["from_id"];
    from = json["from"];
    toId = json["to_id"];
    to = json["to"];
    nickname = json["nickname"];
    type = json["type"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["from_id"] = fromId;
    _data["from"] = from;
    _data["to_id"] = toId;
    _data["to"] = to;
    _data["nickname"] = nickname;
    _data["type"] = type;
    _data["id"] = id;
    return _data;
  }
}

class Sessions19 {
  String? userId;
  String? user;
  String? sessionId;
  List<Activities19>? activities;
  ClientInfo19? clientInfo;
  String? status;
  String? id;

  Sessions19({this.userId, this.user, this.sessionId, this.activities, this.clientInfo, this.status, this.id});

  Sessions19.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    sessionId = json["session_id"];
    activities = json["activities"] == null ? null : (json["activities"] as List).map((e) => Activities19.fromJson(e)).toList();
    clientInfo = json["client_info"] == null ? null : ClientInfo19.fromJson(json["client_info"]);
    status = json["status"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["session_id"] = sessionId;
    if(activities != null) {
      _data["activities"] = activities?.map((e) => e.toJson()).toList();
    }
    if(clientInfo != null) {
      _data["client_info"] = clientInfo?.toJson();
    }
    _data["status"] = status;
    _data["id"] = id;
    return _data;
  }
}

class ClientInfo19 {
  String? client;
  String? os;
  int? version;

  ClientInfo19({this.client, this.os, this.version});

  ClientInfo19.fromJson(Map<String, dynamic> json) {
    client = json["client"];
    os = json["os"];
    version = json["version"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["client"] = client;
    _data["os"] = os;
    _data["version"] = version;
    return _data;
  }
}

class Activities19 {
  String? name;
  int? type;
  String? url;
  int? createdAt;
  Timestamps19? timestamps;
  String? applicationId;
  String? details;
  String? state;
  Emoji21? emoji;
  Party19? party;
  Assets19? assets;
  Secrets19? secrets;
  bool? instance;
  String? flags;
  String? id;
  String? syncId;
  Metadata19? metadata;
  String? sessionId;

  Activities19({this.name, this.type, this.url, this.createdAt, this.timestamps, this.applicationId, this.details, this.state, this.emoji, this.party, this.assets, this.secrets, this.instance, this.flags, this.id, this.syncId, this.metadata, this.sessionId});

  Activities19.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    type = json["type"];
    url = json["url"];
    createdAt = json["created_at"];
    timestamps = json["timestamps"] == null ? null : Timestamps19.fromJson(json["timestamps"]);
    applicationId = json["application_id"];
    details = json["details"];
    state = json["state"];
    emoji = json["emoji"] == null ? null : Emoji21.fromJson(json["emoji"]);
    party = json["party"] == null ? null : Party19.fromJson(json["party"]);
    assets = json["assets"] == null ? null : Assets19.fromJson(json["assets"]);
    secrets = json["secrets"] == null ? null : Secrets19.fromJson(json["secrets"]);
    instance = json["instance"];
    flags = json["flags"];
    id = json["id"];
    syncId = json["sync_id"];
    metadata = json["metadata"] == null ? null : Metadata19.fromJson(json["metadata"]);
    sessionId = json["session_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["type"] = type;
    _data["url"] = url;
    _data["created_at"] = createdAt;
    if(timestamps != null) {
      _data["timestamps"] = timestamps?.toJson();
    }
    _data["application_id"] = applicationId;
    _data["details"] = details;
    _data["state"] = state;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    if(party != null) {
      _data["party"] = party?.toJson();
    }
    if(assets != null) {
      _data["assets"] = assets?.toJson();
    }
    if(secrets != null) {
      _data["secrets"] = secrets?.toJson();
    }
    _data["instance"] = instance;
    _data["flags"] = flags;
    _data["id"] = id;
    _data["sync_id"] = syncId;
    if(metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    _data["session_id"] = sessionId;
    return _data;
  }
}

class Metadata19 {
  String? contextUri;
  String? albumId;
  List<String>? artistIds;

  Metadata19({this.contextUri, this.albumId, this.artistIds});

  Metadata19.fromJson(Map<String, dynamic> json) {
    contextUri = json["context_uri"];
    albumId = json["album_id"];
    artistIds = json["artist_ids"] == null ? null : List<String>.from(json["artist_ids"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["context_uri"] = contextUri;
    _data["album_id"] = albumId;
    if(artistIds != null) {
      _data["artist_ids"] = artistIds;
    }
    return _data;
  }
}

class Secrets19 {
  String? join;
  String? spectate;
  String? match;

  Secrets19({this.join, this.spectate, this.match});

  Secrets19.fromJson(Map<String, dynamic> json) {
    join = json["join"];
    spectate = json["spectate"];
    match = json["match"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["join"] = join;
    _data["spectate"] = spectate;
    _data["match"] = match;
    return _data;
  }
}

class Assets19 {
  String? largeImage;
  String? largeText;
  String? smallImage;
  String? smallText;

  Assets19({this.largeImage, this.largeText, this.smallImage, this.smallText});

  Assets19.fromJson(Map<String, dynamic> json) {
    largeImage = json["large_image"];
    largeText = json["large_text"];
    smallImage = json["small_image"];
    smallText = json["small_text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["large_image"] = largeImage;
    _data["large_text"] = largeText;
    _data["small_image"] = smallImage;
    _data["small_text"] = smallText;
    return _data;
  }
}

class Party19 {
  String? id;
  List<int>? size;

  Party19({this.id, this.size});

  Party19.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    size = json["size"] == null ? null : List<int>.from(json["size"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if(size != null) {
      _data["size"] = size;
    }
    return _data;
  }
}

class Emoji21 {
  String? name;
  String? id;
  bool? animated;

  Emoji21({this.name, this.id, this.animated});

  Emoji21.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["id"] = id;
    _data["animated"] = animated;
    return _data;
  }
}

class Timestamps19 {
  int? start;
  int? end;

  Timestamps19({this.start, this.end});

  Timestamps19.fromJson(Map<String, dynamic> json) {
    start = json["start"];
    end = json["end"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }
}

class Type2 {
  Type2();

  Type2.fromJson(Map<String, dynamic> json) {

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};

    return _data;
  }
}

class ReadStates {
  String? channelId;
  String? channel;
  String? userId;
  User8? user;
  String? lastMessageId;
  String? publicAck;
  String? notificationsCursor;
  String? lastPinTimestamp;
  int? mentionCount;
  bool? manual;
  String? id;

  ReadStates({this.channelId, this.channel, this.userId, this.user, this.lastMessageId, this.publicAck, this.notificationsCursor, this.lastPinTimestamp, this.mentionCount, this.manual, this.id});

  ReadStates.fromJson(Map<String, dynamic> json) {
    channelId = json["channel_id"];
    channel = json["channel"];
    userId = json["user_id"];
    user = json["user"] == null ? null : User8.fromJson(json["user"]);
    lastMessageId = json["last_message_id"];
    publicAck = json["public_ack"];
    notificationsCursor = json["notifications_cursor"];
    lastPinTimestamp = json["last_pin_timestamp"];
    mentionCount = json["mention_count"];
    manual = json["manual"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["channel_id"] = channelId;
    _data["channel"] = channel;
    _data["user_id"] = userId;
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    _data["last_message_id"] = lastMessageId;
    _data["public_ack"] = publicAck;
    _data["notifications_cursor"] = notificationsCursor;
    _data["last_pin_timestamp"] = lastPinTimestamp;
    _data["mention_count"] = mentionCount;
    _data["manual"] = manual;
    _data["id"] = id;
    return _data;
  }
}

class User8 {
  String? username;
  String? discriminator;
  String? avatar;
  int? accentColor;
  String? banner;
  List<int>? themeColors;
  String? pronouns;
  String? phone;
  bool? desktop;
  bool? mobile;
  bool? premium;
  int? premiumType;
  bool? bot;
  String? bio;
  bool? system;
  bool? nsfwAllowed;
  bool? mfaEnabled;
  bool? webauthnEnabled;
  String? totpSecret;
  String? totpLastTicket;
  String? createdAt;
  String? premiumSince;
  bool? verified;
  bool? disabled;
  bool? deleted;
  String? email;
  String? flags;
  int? publicFlags;
  int? purchasedFlags;
  int? premiumUsageFlags;
  String? rights;
  List<Sessions18>? sessions;
  List<Relationships18>? relationships;
  List<ConnectedAccounts18>? connectedAccounts;
  Data18? data;
  List<String>? fingerprints;
  Settings20? settings;
  String? extendedSettings;
  List<SecurityKeys18>? securityKeys;
  String? id;

  User8({this.username, this.discriminator, this.avatar, this.accentColor, this.banner, this.themeColors, this.pronouns, this.phone, this.desktop, this.mobile, this.premium, this.premiumType, this.bot, this.bio, this.system, this.nsfwAllowed, this.mfaEnabled, this.webauthnEnabled, this.totpSecret, this.totpLastTicket, this.createdAt, this.premiumSince, this.verified, this.disabled, this.deleted, this.email, this.flags, this.publicFlags, this.purchasedFlags, this.premiumUsageFlags, this.rights, this.sessions, this.relationships, this.connectedAccounts, this.data, this.fingerprints, this.settings, this.extendedSettings, this.securityKeys, this.id});

  User8.fromJson(Map<String, dynamic> json) {
    username = json["username"];
    discriminator = json["discriminator"];
    avatar = json["avatar"];
    accentColor = json["accent_color"];
    banner = json["banner"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    phone = json["phone"];
    desktop = json["desktop"];
    mobile = json["mobile"];
    premium = json["premium"];
    premiumType = json["premium_type"];
    bot = json["bot"];
    bio = json["bio"];
    system = json["system"];
    nsfwAllowed = json["nsfw_allowed"];
    mfaEnabled = json["mfa_enabled"];
    webauthnEnabled = json["webauthn_enabled"];
    totpSecret = json["totp_secret"];
    totpLastTicket = json["totp_last_ticket"];
    createdAt = json["created_at"];
    premiumSince = json["premium_since"];
    verified = json["verified"];
    disabled = json["disabled"];
    deleted = json["deleted"];
    email = json["email"];
    flags = json["flags"];
    publicFlags = json["public_flags"];
    purchasedFlags = json["purchased_flags"];
    premiumUsageFlags = json["premium_usage_flags"];
    rights = json["rights"];
    sessions = json["sessions"] == null ? null : (json["sessions"] as List).map((e) => Sessions18.fromJson(e)).toList();
    relationships = json["relationships"] == null ? null : (json["relationships"] as List).map((e) => Relationships18.fromJson(e)).toList();
    connectedAccounts = json["connected_accounts"] == null ? null : (json["connected_accounts"] as List).map((e) => ConnectedAccounts18.fromJson(e)).toList();
    data = json["data"] == null ? null : Data18.fromJson(json["data"]);
    fingerprints = json["fingerprints"] == null ? null : List<String>.from(json["fingerprints"]);
    settings = json["settings"] == null ? null : Settings20.fromJson(json["settings"]);
    extendedSettings = json["extended_settings"];
    securityKeys = json["security_keys"] == null ? null : (json["security_keys"] as List).map((e) => SecurityKeys18.fromJson(e)).toList();
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["discriminator"] = discriminator;
    _data["avatar"] = avatar;
    _data["accent_color"] = accentColor;
    _data["banner"] = banner;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["phone"] = phone;
    _data["desktop"] = desktop;
    _data["mobile"] = mobile;
    _data["premium"] = premium;
    _data["premium_type"] = premiumType;
    _data["bot"] = bot;
    _data["bio"] = bio;
    _data["system"] = system;
    _data["nsfw_allowed"] = nsfwAllowed;
    _data["mfa_enabled"] = mfaEnabled;
    _data["webauthn_enabled"] = webauthnEnabled;
    _data["totp_secret"] = totpSecret;
    _data["totp_last_ticket"] = totpLastTicket;
    _data["created_at"] = createdAt;
    _data["premium_since"] = premiumSince;
    _data["verified"] = verified;
    _data["disabled"] = disabled;
    _data["deleted"] = deleted;
    _data["email"] = email;
    _data["flags"] = flags;
    _data["public_flags"] = publicFlags;
    _data["purchased_flags"] = purchasedFlags;
    _data["premium_usage_flags"] = premiumUsageFlags;
    _data["rights"] = rights;
    if(sessions != null) {
      _data["sessions"] = sessions?.map((e) => e.toJson()).toList();
    }
    if(relationships != null) {
      _data["relationships"] = relationships?.map((e) => e.toJson()).toList();
    }
    if(connectedAccounts != null) {
      _data["connected_accounts"] = connectedAccounts?.map((e) => e.toJson()).toList();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    if(fingerprints != null) {
      _data["fingerprints"] = fingerprints;
    }
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["extended_settings"] = extendedSettings;
    if(securityKeys != null) {
      _data["security_keys"] = securityKeys?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    return _data;
  }
}

class SecurityKeys18 {
  String? userId;
  String? user;
  String? keyId;
  String? publicKey;
  int? counter;
  String? name;
  String? id;

  SecurityKeys18({this.userId, this.user, this.keyId, this.publicKey, this.counter, this.name, this.id});

  SecurityKeys18.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    keyId = json["key_id"];
    publicKey = json["public_key"];
    counter = json["counter"];
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["key_id"] = keyId;
    _data["public_key"] = publicKey;
    _data["counter"] = counter;
    _data["name"] = name;
    _data["id"] = id;
    return _data;
  }
}

class Settings20 {
  String? index;
  int? afkTimeout;
  bool? allowAccessibilityDetection;
  bool? animateEmoji;
  int? animateStickers;
  bool? contactSyncEnabled;
  bool? convertEmoticons;
  CustomStatus18? customStatus;
  bool? defaultGuildsRestricted;
  bool? detectPlatformAccounts;
  bool? developerMode;
  bool? disableGamesTab;
  bool? enableTtsCommand;
  int? explicitContentFilter;
  FriendSourceFlags18? friendSourceFlags;
  bool? gatewayConnected;
  bool? gifAutoPlay;
  List<GuildFolders18>? guildFolders;
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

  Settings20({this.index, this.afkTimeout, this.allowAccessibilityDetection, this.animateEmoji, this.animateStickers, this.contactSyncEnabled, this.convertEmoticons, this.customStatus, this.defaultGuildsRestricted, this.detectPlatformAccounts, this.developerMode, this.disableGamesTab, this.enableTtsCommand, this.explicitContentFilter, this.friendSourceFlags, this.gatewayConnected, this.gifAutoPlay, this.guildFolders, this.guildPositions, this.inlineAttachmentMedia, this.inlineEmbedMedia, this.locale, this.messageDisplayCompact, this.nativePhoneIntegrationEnabled, this.renderEmbeds, this.renderReactions, this.restrictedGuilds, this.showCurrentGame, this.status, this.streamNotificationsEnabled, this.theme, this.timezoneOffset});

  Settings20.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    afkTimeout = json["afk_timeout"];
    allowAccessibilityDetection = json["allow_accessibility_detection"];
    animateEmoji = json["animate_emoji"];
    animateStickers = json["animate_stickers"];
    contactSyncEnabled = json["contact_sync_enabled"];
    convertEmoticons = json["convert_emoticons"];
    customStatus = json["custom_status"] == null ? null : CustomStatus18.fromJson(json["custom_status"]);
    defaultGuildsRestricted = json["default_guilds_restricted"];
    detectPlatformAccounts = json["detect_platform_accounts"];
    developerMode = json["developer_mode"];
    disableGamesTab = json["disable_games_tab"];
    enableTtsCommand = json["enable_tts_command"];
    explicitContentFilter = json["explicit_content_filter"];
    friendSourceFlags = json["friend_source_flags"] == null ? null : FriendSourceFlags18.fromJson(json["friend_source_flags"]);
    gatewayConnected = json["gateway_connected"];
    gifAutoPlay = json["gif_auto_play"];
    guildFolders = json["guild_folders"] == null ? null : (json["guild_folders"] as List).map((e) => GuildFolders18.fromJson(e)).toList();
    guildPositions = json["guild_positions"] == null ? null : List<String>.from(json["guild_positions"]);
    inlineAttachmentMedia = json["inline_attachment_media"];
    inlineEmbedMedia = json["inline_embed_media"];
    locale = json["locale"];
    messageDisplayCompact = json["message_display_compact"];
    nativePhoneIntegrationEnabled = json["native_phone_integration_enabled"];
    renderEmbeds = json["render_embeds"];
    renderReactions = json["render_reactions"];
    restrictedGuilds = json["restricted_guilds"] == null ? null : List<String>.from(json["restricted_guilds"]);
    showCurrentGame = json["show_current_game"];
    status = json["status"];
    streamNotificationsEnabled = json["stream_notifications_enabled"];
    theme = json["theme"];
    timezoneOffset = json["timezone_offset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["afk_timeout"] = afkTimeout;
    _data["allow_accessibility_detection"] = allowAccessibilityDetection;
    _data["animate_emoji"] = animateEmoji;
    _data["animate_stickers"] = animateStickers;
    _data["contact_sync_enabled"] = contactSyncEnabled;
    _data["convert_emoticons"] = convertEmoticons;
    if(customStatus != null) {
      _data["custom_status"] = customStatus?.toJson();
    }
    _data["default_guilds_restricted"] = defaultGuildsRestricted;
    _data["detect_platform_accounts"] = detectPlatformAccounts;
    _data["developer_mode"] = developerMode;
    _data["disable_games_tab"] = disableGamesTab;
    _data["enable_tts_command"] = enableTtsCommand;
    _data["explicit_content_filter"] = explicitContentFilter;
    if(friendSourceFlags != null) {
      _data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    _data["gateway_connected"] = gatewayConnected;
    _data["gif_auto_play"] = gifAutoPlay;
    if(guildFolders != null) {
      _data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if(guildPositions != null) {
      _data["guild_positions"] = guildPositions;
    }
    _data["inline_attachment_media"] = inlineAttachmentMedia;
    _data["inline_embed_media"] = inlineEmbedMedia;
    _data["locale"] = locale;
    _data["message_display_compact"] = messageDisplayCompact;
    _data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    _data["render_embeds"] = renderEmbeds;
    _data["render_reactions"] = renderReactions;
    if(restrictedGuilds != null) {
      _data["restricted_guilds"] = restrictedGuilds;
    }
    _data["show_current_game"] = showCurrentGame;
    _data["status"] = status;
    _data["stream_notifications_enabled"] = streamNotificationsEnabled;
    _data["theme"] = theme;
    _data["timezone_offset"] = timezoneOffset;
    return _data;
  }
}

class GuildFolders18 {
  int? color;
  List<String>? guildIds;
  int? id;
  String? name;

  GuildFolders18({this.color, this.guildIds, this.id, this.name});

  GuildFolders18.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    guildIds = json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    if(guildIds != null) {
      _data["guild_ids"] = guildIds;
    }
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class FriendSourceFlags18 {
  bool? all;

  FriendSourceFlags18({this.all});

  FriendSourceFlags18.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["all"] = all;
    return _data;
  }
}

class CustomStatus18 {
  String? emojiId;
  String? emojiName;
  int? expiresAt;
  String? text;

  CustomStatus18({this.emojiId, this.emojiName, this.expiresAt, this.text});

  CustomStatus18.fromJson(Map<String, dynamic> json) {
    emojiId = json["emoji_id"];
    emojiName = json["emoji_name"];
    expiresAt = json["expires_at"];
    text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["emoji_id"] = emojiId;
    _data["emoji_name"] = emojiName;
    _data["expires_at"] = expiresAt;
    _data["text"] = text;
    return _data;
  }
}

class Data18 {
  String? validTokensSince;
  String? hash;

  Data18({this.validTokensSince, this.hash});

  Data18.fromJson(Map<String, dynamic> json) {
    validTokensSince = json["valid_tokens_since"];
    hash = json["hash"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["valid_tokens_since"] = validTokensSince;
    _data["hash"] = hash;
    return _data;
  }
}

class ConnectedAccounts18 {
  String? externalId;
  String? userId;
  String? user;
  bool? friendSync;
  String? name;
  bool? revoked;
  int? showActivity;
  String? type;
  bool? verified;
  int? visibility;
  List<String>? integrations;
  dynamic metadata;
  int? metadataVisibility;
  bool? twoWayLink;
  TokenData18? tokenData;
  String? id;

  ConnectedAccounts18({this.externalId, this.userId, this.user, this.friendSync, this.name, this.revoked, this.showActivity, this.type, this.verified, this.visibility, this.integrations, this.metadata, this.metadataVisibility, this.twoWayLink, this.tokenData, this.id});

  ConnectedAccounts18.fromJson(Map<String, dynamic> json) {
    externalId = json["external_id"];
    userId = json["user_id"];
    user = json["user"];
    friendSync = json["friend_sync"];
    name = json["name"];
    revoked = json["revoked"];
    showActivity = json["show_activity"];
    type = json["type"];
    verified = json["verified"];
    visibility = json["visibility"];
    integrations = json["integrations"] == null ? null : List<String>.from(json["integrations"]);
    metadata = json["metadata_"];
    metadataVisibility = json["metadata_visibility"];
    twoWayLink = json["two_way_link"];
    tokenData = json["token_data"] == null ? null : TokenData18.fromJson(json["token_data"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["external_id"] = externalId;
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["friend_sync"] = friendSync;
    _data["name"] = name;
    _data["revoked"] = revoked;
    _data["show_activity"] = showActivity;
    _data["type"] = type;
    _data["verified"] = verified;
    _data["visibility"] = visibility;
    if(integrations != null) {
      _data["integrations"] = integrations;
    }
    _data["metadata_"] = metadata;
    _data["metadata_visibility"] = metadataVisibility;
    _data["two_way_link"] = twoWayLink;
    if(tokenData != null) {
      _data["token_data"] = tokenData?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class TokenData18 {
  String? accessToken;
  String? tokenType;
  String? scope;
  String? refreshToken;
  int? expiresIn;
  int? expiresAt;
  int? fetchedAt;

  TokenData18({this.accessToken, this.tokenType, this.scope, this.refreshToken, this.expiresIn, this.expiresAt, this.fetchedAt});

  TokenData18.fromJson(Map<String, dynamic> json) {
    accessToken = json["access_token"];
    tokenType = json["token_type"];
    scope = json["scope"];
    refreshToken = json["refresh_token"];
    expiresIn = json["expires_in"];
    expiresAt = json["expires_at"];
    fetchedAt = json["fetched_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    _data["token_type"] = tokenType;
    _data["scope"] = scope;
    _data["refresh_token"] = refreshToken;
    _data["expires_in"] = expiresIn;
    _data["expires_at"] = expiresAt;
    _data["fetched_at"] = fetchedAt;
    return _data;
  }
}

class Relationships18 {
  String? fromId;
  String? from;
  String? toId;
  String? to;
  String? nickname;
  int? type;
  String? id;

  Relationships18({this.fromId, this.from, this.toId, this.to, this.nickname, this.type, this.id});

  Relationships18.fromJson(Map<String, dynamic> json) {
    fromId = json["from_id"];
    from = json["from"];
    toId = json["to_id"];
    to = json["to"];
    nickname = json["nickname"];
    type = json["type"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["from_id"] = fromId;
    _data["from"] = from;
    _data["to_id"] = toId;
    _data["to"] = to;
    _data["nickname"] = nickname;
    _data["type"] = type;
    _data["id"] = id;
    return _data;
  }
}

class Sessions18 {
  String? userId;
  String? user;
  String? sessionId;
  List<Activities18>? activities;
  ClientInfo18? clientInfo;
  String? status;
  String? id;

  Sessions18({this.userId, this.user, this.sessionId, this.activities, this.clientInfo, this.status, this.id});

  Sessions18.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    sessionId = json["session_id"];
    activities = json["activities"] == null ? null : (json["activities"] as List).map((e) => Activities18.fromJson(e)).toList();
    clientInfo = json["client_info"] == null ? null : ClientInfo18.fromJson(json["client_info"]);
    status = json["status"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["session_id"] = sessionId;
    if(activities != null) {
      _data["activities"] = activities?.map((e) => e.toJson()).toList();
    }
    if(clientInfo != null) {
      _data["client_info"] = clientInfo?.toJson();
    }
    _data["status"] = status;
    _data["id"] = id;
    return _data;
  }
}

class ClientInfo18 {
  String? client;
  String? os;
  int? version;

  ClientInfo18({this.client, this.os, this.version});

  ClientInfo18.fromJson(Map<String, dynamic> json) {
    client = json["client"];
    os = json["os"];
    version = json["version"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["client"] = client;
    _data["os"] = os;
    _data["version"] = version;
    return _data;
  }
}

class Activities18 {
  String? name;
  int? type;
  String? url;
  int? createdAt;
  Timestamps18? timestamps;
  String? applicationId;
  String? details;
  String? state;
  Emoji20? emoji;
  Party18? party;
  Assets18? assets;
  Secrets18? secrets;
  bool? instance;
  String? flags;
  String? id;
  String? syncId;
  Metadata18? metadata;
  String? sessionId;

  Activities18({this.name, this.type, this.url, this.createdAt, this.timestamps, this.applicationId, this.details, this.state, this.emoji, this.party, this.assets, this.secrets, this.instance, this.flags, this.id, this.syncId, this.metadata, this.sessionId});

  Activities18.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    type = json["type"];
    url = json["url"];
    createdAt = json["created_at"];
    timestamps = json["timestamps"] == null ? null : Timestamps18.fromJson(json["timestamps"]);
    applicationId = json["application_id"];
    details = json["details"];
    state = json["state"];
    emoji = json["emoji"] == null ? null : Emoji20.fromJson(json["emoji"]);
    party = json["party"] == null ? null : Party18.fromJson(json["party"]);
    assets = json["assets"] == null ? null : Assets18.fromJson(json["assets"]);
    secrets = json["secrets"] == null ? null : Secrets18.fromJson(json["secrets"]);
    instance = json["instance"];
    flags = json["flags"];
    id = json["id"];
    syncId = json["sync_id"];
    metadata = json["metadata"] == null ? null : Metadata18.fromJson(json["metadata"]);
    sessionId = json["session_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["type"] = type;
    _data["url"] = url;
    _data["created_at"] = createdAt;
    if(timestamps != null) {
      _data["timestamps"] = timestamps?.toJson();
    }
    _data["application_id"] = applicationId;
    _data["details"] = details;
    _data["state"] = state;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    if(party != null) {
      _data["party"] = party?.toJson();
    }
    if(assets != null) {
      _data["assets"] = assets?.toJson();
    }
    if(secrets != null) {
      _data["secrets"] = secrets?.toJson();
    }
    _data["instance"] = instance;
    _data["flags"] = flags;
    _data["id"] = id;
    _data["sync_id"] = syncId;
    if(metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    _data["session_id"] = sessionId;
    return _data;
  }
}

class Metadata18 {
  String? contextUri;
  String? albumId;
  List<String>? artistIds;

  Metadata18({this.contextUri, this.albumId, this.artistIds});

  Metadata18.fromJson(Map<String, dynamic> json) {
    contextUri = json["context_uri"];
    albumId = json["album_id"];
    artistIds = json["artist_ids"] == null ? null : List<String>.from(json["artist_ids"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["context_uri"] = contextUri;
    _data["album_id"] = albumId;
    if(artistIds != null) {
      _data["artist_ids"] = artistIds;
    }
    return _data;
  }
}

class Secrets18 {
  String? join;
  String? spectate;
  String? match;

  Secrets18({this.join, this.spectate, this.match});

  Secrets18.fromJson(Map<String, dynamic> json) {
    join = json["join"];
    spectate = json["spectate"];
    match = json["match"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["join"] = join;
    _data["spectate"] = spectate;
    _data["match"] = match;
    return _data;
  }
}

class Assets18 {
  String? largeImage;
  String? largeText;
  String? smallImage;
  String? smallText;

  Assets18({this.largeImage, this.largeText, this.smallImage, this.smallText});

  Assets18.fromJson(Map<String, dynamic> json) {
    largeImage = json["large_image"];
    largeText = json["large_text"];
    smallImage = json["small_image"];
    smallText = json["small_text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["large_image"] = largeImage;
    _data["large_text"] = largeText;
    _data["small_image"] = smallImage;
    _data["small_text"] = smallText;
    return _data;
  }
}

class Party18 {
  String? id;
  List<int>? size;

  Party18({this.id, this.size});

  Party18.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    size = json["size"] == null ? null : List<int>.from(json["size"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if(size != null) {
      _data["size"] = size;
    }
    return _data;
  }
}

class Emoji20 {
  String? name;
  String? id;
  bool? animated;

  Emoji20({this.name, this.id, this.animated});

  Emoji20.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["id"] = id;
    _data["animated"] = animated;
    return _data;
  }
}

class Timestamps18 {
  int? start;
  int? end;

  Timestamps18({this.start, this.end});

  Timestamps18.fromJson(Map<String, dynamic> json) {
    start = json["start"];
    end = json["end"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }
}

class VoiceStates {
  String? guildId;
  String? guild;
  String? channelId;
  String? channel;
  String? userId;
  User6? user;
  Member1? member;
  String? sessionId;
  String? token;
  bool? deaf;
  bool? mute;
  bool? selfDeaf;
  bool? selfMute;
  bool? selfStream;
  bool? selfVideo;
  bool? suppress;
  String? requestToSpeakTimestamp;
  String? id;

  VoiceStates({this.guildId, this.guild, this.channelId, this.channel, this.userId, this.user, this.member, this.sessionId, this.token, this.deaf, this.mute, this.selfDeaf, this.selfMute, this.selfStream, this.selfVideo, this.suppress, this.requestToSpeakTimestamp, this.id});

  VoiceStates.fromJson(Map<String, dynamic> json) {
    guildId = json["guild_id"];
    guild = json["guild"];
    channelId = json["channel_id"];
    channel = json["channel"];
    userId = json["user_id"];
    user = json["user"] == null ? null : User6.fromJson(json["user"]);
    member = json["member"] == null ? null : Member1.fromJson(json["member"]);
    sessionId = json["session_id"];
    token = json["token"];
    deaf = json["deaf"];
    mute = json["mute"];
    selfDeaf = json["self_deaf"];
    selfMute = json["self_mute"];
    selfStream = json["self_stream"];
    selfVideo = json["self_video"];
    suppress = json["suppress"];
    requestToSpeakTimestamp = json["request_to_speak_timestamp"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["guild_id"] = guildId;
    _data["guild"] = guild;
    _data["channel_id"] = channelId;
    _data["channel"] = channel;
    _data["user_id"] = userId;
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    if(member != null) {
      _data["member"] = member?.toJson();
    }
    _data["session_id"] = sessionId;
    _data["token"] = token;
    _data["deaf"] = deaf;
    _data["mute"] = mute;
    _data["self_deaf"] = selfDeaf;
    _data["self_mute"] = selfMute;
    _data["self_stream"] = selfStream;
    _data["self_video"] = selfVideo;
    _data["suppress"] = suppress;
    _data["request_to_speak_timestamp"] = requestToSpeakTimestamp;
    _data["id"] = id;
    return _data;
  }
}

class Member1 {
  String? index;
  String? id;
  User7? user;
  String? guildId;
  String? guild;
  String? nick;
  List<Roles1>? roles;
  String? joinedAt;
  int? premiumSince;
  bool? deaf;
  bool? mute;
  bool? pending;
  Settings19? settings;
  String? lastMessageId;
  String? joinedBy;
  String? avatar;
  String? banner;
  String? bio;
  List<int>? themeColors;
  String? pronouns;
  String? communicationDisabledUntil;

  Member1({this.index, this.id, this.user, this.guildId, this.guild, this.nick, this.roles, this.joinedAt, this.premiumSince, this.deaf, this.mute, this.pending, this.settings, this.lastMessageId, this.joinedBy, this.avatar, this.banner, this.bio, this.themeColors, this.pronouns, this.communicationDisabledUntil});

  Member1.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    id = json["id"];
    user = json["user"] == null ? null : User7.fromJson(json["user"]);
    guildId = json["guild_id"];
    guild = json["guild"];
    nick = json["nick"];
    roles = json["roles"] == null ? null : (json["roles"] as List).map((e) => Roles1.fromJson(e)).toList();
    joinedAt = json["joined_at"];
    premiumSince = json["premium_since"];
    deaf = json["deaf"];
    mute = json["mute"];
    pending = json["pending"];
    settings = json["settings"] == null ? null : Settings19.fromJson(json["settings"]);
    lastMessageId = json["last_message_id"];
    joinedBy = json["joined_by"];
    avatar = json["avatar"];
    banner = json["banner"];
    bio = json["bio"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    communicationDisabledUntil = json["communication_disabled_until"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["id"] = id;
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    _data["guild_id"] = guildId;
    _data["guild"] = guild;
    _data["nick"] = nick;
    if(roles != null) {
      _data["roles"] = roles?.map((e) => e.toJson()).toList();
    }
    _data["joined_at"] = joinedAt;
    _data["premium_since"] = premiumSince;
    _data["deaf"] = deaf;
    _data["mute"] = mute;
    _data["pending"] = pending;
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["last_message_id"] = lastMessageId;
    _data["joined_by"] = joinedBy;
    _data["avatar"] = avatar;
    _data["banner"] = banner;
    _data["bio"] = bio;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["communication_disabled_until"] = communicationDisabledUntil;
    return _data;
  }
}

class Settings19 {
  ChannelOverrides1? channelOverrides;
  int? messageNotifications;
  bool? mobilePush;
  MuteConfig1? muteConfig;
  bool? muted;
  bool? suppressEveryone;
  bool? suppressRoles;
  int? version;
  String? guildId;
  int? flags;
  bool? muteScheduledEvents;
  bool? hideMutedChannels;
  int? notifyHighlights;

  Settings19({this.channelOverrides, this.messageNotifications, this.mobilePush, this.muteConfig, this.muted, this.suppressEveryone, this.suppressRoles, this.version, this.guildId, this.flags, this.muteScheduledEvents, this.hideMutedChannels, this.notifyHighlights});

  Settings19.fromJson(Map<String, dynamic> json) {
    channelOverrides = json["channel_overrides"] == null ? null : ChannelOverrides1.fromJson(json["channel_overrides"]);
    messageNotifications = json["message_notifications"];
    mobilePush = json["mobile_push"];
    muteConfig = json["mute_config"] == null ? null : MuteConfig1.fromJson(json["mute_config"]);
    muted = json["muted"];
    suppressEveryone = json["suppress_everyone"];
    suppressRoles = json["suppress_roles"];
    version = json["version"];
    guildId = json["guild_id"];
    flags = json["flags"];
    muteScheduledEvents = json["mute_scheduled_events"];
    hideMutedChannels = json["hide_muted_channels"];
    notifyHighlights = json["notify_highlights"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(channelOverrides != null) {
      _data["channel_overrides"] = channelOverrides?.toJson();
    }
    _data["message_notifications"] = messageNotifications;
    _data["mobile_push"] = mobilePush;
    if(muteConfig != null) {
      _data["mute_config"] = muteConfig?.toJson();
    }
    _data["muted"] = muted;
    _data["suppress_everyone"] = suppressEveryone;
    _data["suppress_roles"] = suppressRoles;
    _data["version"] = version;
    _data["guild_id"] = guildId;
    _data["flags"] = flags;
    _data["mute_scheduled_events"] = muteScheduledEvents;
    _data["hide_muted_channels"] = hideMutedChannels;
    _data["notify_highlights"] = notifyHighlights;
    return _data;
  }
}

class MuteConfig1 {
  int? endTime;
  int? selectedTimeWindow;

  MuteConfig1({this.endTime, this.selectedTimeWindow});

  MuteConfig1.fromJson(Map<String, dynamic> json) {
    endTime = json["end_time"];
    selectedTimeWindow = json["selected_time_window"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["end_time"] = endTime;
    _data["selected_time_window"] = selectedTimeWindow;
    return _data;
  }
}

class ChannelOverrides1 {
  ChannelOverrides1();

  ChannelOverrides1.fromJson(Map<String, dynamic> json) {

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};

    return _data;
  }
}

class Roles1 {
  String? guildId;
  String? guild;
  int? color;
  bool? hoist;
  bool? managed;
  bool? mentionable;
  String? name;
  String? permissions;
  int? position;
  String? icon;
  String? unicodeEmoji;
  Tags2? tags;
  String? id;

  Roles1({this.guildId, this.guild, this.color, this.hoist, this.managed, this.mentionable, this.name, this.permissions, this.position, this.icon, this.unicodeEmoji, this.tags, this.id});

  Roles1.fromJson(Map<String, dynamic> json) {
    guildId = json["guild_id"];
    guild = json["guild"];
    color = json["color"];
    hoist = json["hoist"];
    managed = json["managed"];
    mentionable = json["mentionable"];
    name = json["name"];
    permissions = json["permissions"];
    position = json["position"];
    icon = json["icon"];
    unicodeEmoji = json["unicode_emoji"];
    tags = json["tags"] == null ? null : Tags2.fromJson(json["tags"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["guild_id"] = guildId;
    _data["guild"] = guild;
    _data["color"] = color;
    _data["hoist"] = hoist;
    _data["managed"] = managed;
    _data["mentionable"] = mentionable;
    _data["name"] = name;
    _data["permissions"] = permissions;
    _data["position"] = position;
    _data["icon"] = icon;
    _data["unicode_emoji"] = unicodeEmoji;
    if(tags != null) {
      _data["tags"] = tags?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class Tags2 {
  String? botId;
  String? integrationId;
  bool? premiumSubscriber;

  Tags2({this.botId, this.integrationId, this.premiumSubscriber});

  Tags2.fromJson(Map<String, dynamic> json) {
    botId = json["bot_id"];
    integrationId = json["integration_id"];
    premiumSubscriber = json["premium_subscriber"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["bot_id"] = botId;
    _data["integration_id"] = integrationId;
    _data["premium_subscriber"] = premiumSubscriber;
    return _data;
  }
}

class User7 {
  String? username;
  String? discriminator;
  String? avatar;
  int? accentColor;
  String? banner;
  List<int>? themeColors;
  String? pronouns;
  String? phone;
  bool? desktop;
  bool? mobile;
  bool? premium;
  int? premiumType;
  bool? bot;
  String? bio;
  bool? system;
  bool? nsfwAllowed;
  bool? mfaEnabled;
  bool? webauthnEnabled;
  String? totpSecret;
  String? totpLastTicket;
  String? createdAt;
  String? premiumSince;
  bool? verified;
  bool? disabled;
  bool? deleted;
  String? email;
  String? flags;
  int? publicFlags;
  int? purchasedFlags;
  int? premiumUsageFlags;
  String? rights;
  List<Sessions17>? sessions;
  List<Relationships17>? relationships;
  List<ConnectedAccounts17>? connectedAccounts;
  Data17? data;
  List<String>? fingerprints;
  Settings18? settings;
  String? extendedSettings;
  List<SecurityKeys17>? securityKeys;
  String? id;

  User7({this.username, this.discriminator, this.avatar, this.accentColor, this.banner, this.themeColors, this.pronouns, this.phone, this.desktop, this.mobile, this.premium, this.premiumType, this.bot, this.bio, this.system, this.nsfwAllowed, this.mfaEnabled, this.webauthnEnabled, this.totpSecret, this.totpLastTicket, this.createdAt, this.premiumSince, this.verified, this.disabled, this.deleted, this.email, this.flags, this.publicFlags, this.purchasedFlags, this.premiumUsageFlags, this.rights, this.sessions, this.relationships, this.connectedAccounts, this.data, this.fingerprints, this.settings, this.extendedSettings, this.securityKeys, this.id});

  User7.fromJson(Map<String, dynamic> json) {
    username = json["username"];
    discriminator = json["discriminator"];
    avatar = json["avatar"];
    accentColor = json["accent_color"];
    banner = json["banner"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    phone = json["phone"];
    desktop = json["desktop"];
    mobile = json["mobile"];
    premium = json["premium"];
    premiumType = json["premium_type"];
    bot = json["bot"];
    bio = json["bio"];
    system = json["system"];
    nsfwAllowed = json["nsfw_allowed"];
    mfaEnabled = json["mfa_enabled"];
    webauthnEnabled = json["webauthn_enabled"];
    totpSecret = json["totp_secret"];
    totpLastTicket = json["totp_last_ticket"];
    createdAt = json["created_at"];
    premiumSince = json["premium_since"];
    verified = json["verified"];
    disabled = json["disabled"];
    deleted = json["deleted"];
    email = json["email"];
    flags = json["flags"];
    publicFlags = json["public_flags"];
    purchasedFlags = json["purchased_flags"];
    premiumUsageFlags = json["premium_usage_flags"];
    rights = json["rights"];
    sessions = json["sessions"] == null ? null : (json["sessions"] as List).map((e) => Sessions17.fromJson(e)).toList();
    relationships = json["relationships"] == null ? null : (json["relationships"] as List).map((e) => Relationships17.fromJson(e)).toList();
    connectedAccounts = json["connected_accounts"] == null ? null : (json["connected_accounts"] as List).map((e) => ConnectedAccounts17.fromJson(e)).toList();
    data = json["data"] == null ? null : Data17.fromJson(json["data"]);
    fingerprints = json["fingerprints"] == null ? null : List<String>.from(json["fingerprints"]);
    settings = json["settings"] == null ? null : Settings18.fromJson(json["settings"]);
    extendedSettings = json["extended_settings"];
    securityKeys = json["security_keys"] == null ? null : (json["security_keys"] as List).map((e) => SecurityKeys17.fromJson(e)).toList();
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["discriminator"] = discriminator;
    _data["avatar"] = avatar;
    _data["accent_color"] = accentColor;
    _data["banner"] = banner;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["phone"] = phone;
    _data["desktop"] = desktop;
    _data["mobile"] = mobile;
    _data["premium"] = premium;
    _data["premium_type"] = premiumType;
    _data["bot"] = bot;
    _data["bio"] = bio;
    _data["system"] = system;
    _data["nsfw_allowed"] = nsfwAllowed;
    _data["mfa_enabled"] = mfaEnabled;
    _data["webauthn_enabled"] = webauthnEnabled;
    _data["totp_secret"] = totpSecret;
    _data["totp_last_ticket"] = totpLastTicket;
    _data["created_at"] = createdAt;
    _data["premium_since"] = premiumSince;
    _data["verified"] = verified;
    _data["disabled"] = disabled;
    _data["deleted"] = deleted;
    _data["email"] = email;
    _data["flags"] = flags;
    _data["public_flags"] = publicFlags;
    _data["purchased_flags"] = purchasedFlags;
    _data["premium_usage_flags"] = premiumUsageFlags;
    _data["rights"] = rights;
    if(sessions != null) {
      _data["sessions"] = sessions?.map((e) => e.toJson()).toList();
    }
    if(relationships != null) {
      _data["relationships"] = relationships?.map((e) => e.toJson()).toList();
    }
    if(connectedAccounts != null) {
      _data["connected_accounts"] = connectedAccounts?.map((e) => e.toJson()).toList();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    if(fingerprints != null) {
      _data["fingerprints"] = fingerprints;
    }
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["extended_settings"] = extendedSettings;
    if(securityKeys != null) {
      _data["security_keys"] = securityKeys?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    return _data;
  }
}

class SecurityKeys17 {
  String? userId;
  String? user;
  String? keyId;
  String? publicKey;
  int? counter;
  String? name;
  String? id;

  SecurityKeys17({this.userId, this.user, this.keyId, this.publicKey, this.counter, this.name, this.id});

  SecurityKeys17.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    keyId = json["key_id"];
    publicKey = json["public_key"];
    counter = json["counter"];
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["key_id"] = keyId;
    _data["public_key"] = publicKey;
    _data["counter"] = counter;
    _data["name"] = name;
    _data["id"] = id;
    return _data;
  }
}

class Settings18 {
  String? index;
  int? afkTimeout;
  bool? allowAccessibilityDetection;
  bool? animateEmoji;
  int? animateStickers;
  bool? contactSyncEnabled;
  bool? convertEmoticons;
  CustomStatus17? customStatus;
  bool? defaultGuildsRestricted;
  bool? detectPlatformAccounts;
  bool? developerMode;
  bool? disableGamesTab;
  bool? enableTtsCommand;
  int? explicitContentFilter;
  FriendSourceFlags17? friendSourceFlags;
  bool? gatewayConnected;
  bool? gifAutoPlay;
  List<GuildFolders17>? guildFolders;
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

  Settings18({this.index, this.afkTimeout, this.allowAccessibilityDetection, this.animateEmoji, this.animateStickers, this.contactSyncEnabled, this.convertEmoticons, this.customStatus, this.defaultGuildsRestricted, this.detectPlatformAccounts, this.developerMode, this.disableGamesTab, this.enableTtsCommand, this.explicitContentFilter, this.friendSourceFlags, this.gatewayConnected, this.gifAutoPlay, this.guildFolders, this.guildPositions, this.inlineAttachmentMedia, this.inlineEmbedMedia, this.locale, this.messageDisplayCompact, this.nativePhoneIntegrationEnabled, this.renderEmbeds, this.renderReactions, this.restrictedGuilds, this.showCurrentGame, this.status, this.streamNotificationsEnabled, this.theme, this.timezoneOffset});

  Settings18.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    afkTimeout = json["afk_timeout"];
    allowAccessibilityDetection = json["allow_accessibility_detection"];
    animateEmoji = json["animate_emoji"];
    animateStickers = json["animate_stickers"];
    contactSyncEnabled = json["contact_sync_enabled"];
    convertEmoticons = json["convert_emoticons"];
    customStatus = json["custom_status"] == null ? null : CustomStatus17.fromJson(json["custom_status"]);
    defaultGuildsRestricted = json["default_guilds_restricted"];
    detectPlatformAccounts = json["detect_platform_accounts"];
    developerMode = json["developer_mode"];
    disableGamesTab = json["disable_games_tab"];
    enableTtsCommand = json["enable_tts_command"];
    explicitContentFilter = json["explicit_content_filter"];
    friendSourceFlags = json["friend_source_flags"] == null ? null : FriendSourceFlags17.fromJson(json["friend_source_flags"]);
    gatewayConnected = json["gateway_connected"];
    gifAutoPlay = json["gif_auto_play"];
    guildFolders = json["guild_folders"] == null ? null : (json["guild_folders"] as List).map((e) => GuildFolders17.fromJson(e)).toList();
    guildPositions = json["guild_positions"] == null ? null : List<String>.from(json["guild_positions"]);
    inlineAttachmentMedia = json["inline_attachment_media"];
    inlineEmbedMedia = json["inline_embed_media"];
    locale = json["locale"];
    messageDisplayCompact = json["message_display_compact"];
    nativePhoneIntegrationEnabled = json["native_phone_integration_enabled"];
    renderEmbeds = json["render_embeds"];
    renderReactions = json["render_reactions"];
    restrictedGuilds = json["restricted_guilds"] == null ? null : List<String>.from(json["restricted_guilds"]);
    showCurrentGame = json["show_current_game"];
    status = json["status"];
    streamNotificationsEnabled = json["stream_notifications_enabled"];
    theme = json["theme"];
    timezoneOffset = json["timezone_offset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["afk_timeout"] = afkTimeout;
    _data["allow_accessibility_detection"] = allowAccessibilityDetection;
    _data["animate_emoji"] = animateEmoji;
    _data["animate_stickers"] = animateStickers;
    _data["contact_sync_enabled"] = contactSyncEnabled;
    _data["convert_emoticons"] = convertEmoticons;
    if(customStatus != null) {
      _data["custom_status"] = customStatus?.toJson();
    }
    _data["default_guilds_restricted"] = defaultGuildsRestricted;
    _data["detect_platform_accounts"] = detectPlatformAccounts;
    _data["developer_mode"] = developerMode;
    _data["disable_games_tab"] = disableGamesTab;
    _data["enable_tts_command"] = enableTtsCommand;
    _data["explicit_content_filter"] = explicitContentFilter;
    if(friendSourceFlags != null) {
      _data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    _data["gateway_connected"] = gatewayConnected;
    _data["gif_auto_play"] = gifAutoPlay;
    if(guildFolders != null) {
      _data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if(guildPositions != null) {
      _data["guild_positions"] = guildPositions;
    }
    _data["inline_attachment_media"] = inlineAttachmentMedia;
    _data["inline_embed_media"] = inlineEmbedMedia;
    _data["locale"] = locale;
    _data["message_display_compact"] = messageDisplayCompact;
    _data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    _data["render_embeds"] = renderEmbeds;
    _data["render_reactions"] = renderReactions;
    if(restrictedGuilds != null) {
      _data["restricted_guilds"] = restrictedGuilds;
    }
    _data["show_current_game"] = showCurrentGame;
    _data["status"] = status;
    _data["stream_notifications_enabled"] = streamNotificationsEnabled;
    _data["theme"] = theme;
    _data["timezone_offset"] = timezoneOffset;
    return _data;
  }
}

class GuildFolders17 {
  int? color;
  List<String>? guildIds;
  int? id;
  String? name;

  GuildFolders17({this.color, this.guildIds, this.id, this.name});

  GuildFolders17.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    guildIds = json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    if(guildIds != null) {
      _data["guild_ids"] = guildIds;
    }
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class FriendSourceFlags17 {
  bool? all;

  FriendSourceFlags17({this.all});

  FriendSourceFlags17.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["all"] = all;
    return _data;
  }
}

class CustomStatus17 {
  String? emojiId;
  String? emojiName;
  int? expiresAt;
  String? text;

  CustomStatus17({this.emojiId, this.emojiName, this.expiresAt, this.text});

  CustomStatus17.fromJson(Map<String, dynamic> json) {
    emojiId = json["emoji_id"];
    emojiName = json["emoji_name"];
    expiresAt = json["expires_at"];
    text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["emoji_id"] = emojiId;
    _data["emoji_name"] = emojiName;
    _data["expires_at"] = expiresAt;
    _data["text"] = text;
    return _data;
  }
}

class Data17 {
  String? validTokensSince;
  String? hash;

  Data17({this.validTokensSince, this.hash});

  Data17.fromJson(Map<String, dynamic> json) {
    validTokensSince = json["valid_tokens_since"];
    hash = json["hash"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["valid_tokens_since"] = validTokensSince;
    _data["hash"] = hash;
    return _data;
  }
}

class ConnectedAccounts17 {
  String? externalId;
  String? userId;
  String? user;
  bool? friendSync;
  String? name;
  bool? revoked;
  int? showActivity;
  String? type;
  bool? verified;
  int? visibility;
  List<String>? integrations;
  dynamic metadata;
  int? metadataVisibility;
  bool? twoWayLink;
  TokenData17? tokenData;
  String? id;

  ConnectedAccounts17({this.externalId, this.userId, this.user, this.friendSync, this.name, this.revoked, this.showActivity, this.type, this.verified, this.visibility, this.integrations, this.metadata, this.metadataVisibility, this.twoWayLink, this.tokenData, this.id});

  ConnectedAccounts17.fromJson(Map<String, dynamic> json) {
    externalId = json["external_id"];
    userId = json["user_id"];
    user = json["user"];
    friendSync = json["friend_sync"];
    name = json["name"];
    revoked = json["revoked"];
    showActivity = json["show_activity"];
    type = json["type"];
    verified = json["verified"];
    visibility = json["visibility"];
    integrations = json["integrations"] == null ? null : List<String>.from(json["integrations"]);
    metadata = json["metadata_"];
    metadataVisibility = json["metadata_visibility"];
    twoWayLink = json["two_way_link"];
    tokenData = json["token_data"] == null ? null : TokenData17.fromJson(json["token_data"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["external_id"] = externalId;
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["friend_sync"] = friendSync;
    _data["name"] = name;
    _data["revoked"] = revoked;
    _data["show_activity"] = showActivity;
    _data["type"] = type;
    _data["verified"] = verified;
    _data["visibility"] = visibility;
    if(integrations != null) {
      _data["integrations"] = integrations;
    }
    _data["metadata_"] = metadata;
    _data["metadata_visibility"] = metadataVisibility;
    _data["two_way_link"] = twoWayLink;
    if(tokenData != null) {
      _data["token_data"] = tokenData?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class TokenData17 {
  String? accessToken;
  String? tokenType;
  String? scope;
  String? refreshToken;
  int? expiresIn;
  int? expiresAt;
  int? fetchedAt;

  TokenData17({this.accessToken, this.tokenType, this.scope, this.refreshToken, this.expiresIn, this.expiresAt, this.fetchedAt});

  TokenData17.fromJson(Map<String, dynamic> json) {
    accessToken = json["access_token"];
    tokenType = json["token_type"];
    scope = json["scope"];
    refreshToken = json["refresh_token"];
    expiresIn = json["expires_in"];
    expiresAt = json["expires_at"];
    fetchedAt = json["fetched_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    _data["token_type"] = tokenType;
    _data["scope"] = scope;
    _data["refresh_token"] = refreshToken;
    _data["expires_in"] = expiresIn;
    _data["expires_at"] = expiresAt;
    _data["fetched_at"] = fetchedAt;
    return _data;
  }
}

class Relationships17 {
  String? fromId;
  String? from;
  String? toId;
  String? to;
  String? nickname;
  int? type;
  String? id;

  Relationships17({this.fromId, this.from, this.toId, this.to, this.nickname, this.type, this.id});

  Relationships17.fromJson(Map<String, dynamic> json) {
    fromId = json["from_id"];
    from = json["from"];
    toId = json["to_id"];
    to = json["to"];
    nickname = json["nickname"];
    type = json["type"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["from_id"] = fromId;
    _data["from"] = from;
    _data["to_id"] = toId;
    _data["to"] = to;
    _data["nickname"] = nickname;
    _data["type"] = type;
    _data["id"] = id;
    return _data;
  }
}

class Sessions17 {
  String? userId;
  String? user;
  String? sessionId;
  List<Activities17>? activities;
  ClientInfo17? clientInfo;
  String? status;
  String? id;

  Sessions17({this.userId, this.user, this.sessionId, this.activities, this.clientInfo, this.status, this.id});

  Sessions17.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    sessionId = json["session_id"];
    activities = json["activities"] == null ? null : (json["activities"] as List).map((e) => Activities17.fromJson(e)).toList();
    clientInfo = json["client_info"] == null ? null : ClientInfo17.fromJson(json["client_info"]);
    status = json["status"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["session_id"] = sessionId;
    if(activities != null) {
      _data["activities"] = activities?.map((e) => e.toJson()).toList();
    }
    if(clientInfo != null) {
      _data["client_info"] = clientInfo?.toJson();
    }
    _data["status"] = status;
    _data["id"] = id;
    return _data;
  }
}

class ClientInfo17 {
  String? client;
  String? os;
  int? version;

  ClientInfo17({this.client, this.os, this.version});

  ClientInfo17.fromJson(Map<String, dynamic> json) {
    client = json["client"];
    os = json["os"];
    version = json["version"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["client"] = client;
    _data["os"] = os;
    _data["version"] = version;
    return _data;
  }
}

class Activities17 {
  String? name;
  int? type;
  String? url;
  int? createdAt;
  Timestamps17? timestamps;
  String? applicationId;
  String? details;
  String? state;
  Emoji19? emoji;
  Party17? party;
  Assets17? assets;
  Secrets17? secrets;
  bool? instance;
  String? flags;
  String? id;
  String? syncId;
  Metadata17? metadata;
  String? sessionId;

  Activities17({this.name, this.type, this.url, this.createdAt, this.timestamps, this.applicationId, this.details, this.state, this.emoji, this.party, this.assets, this.secrets, this.instance, this.flags, this.id, this.syncId, this.metadata, this.sessionId});

  Activities17.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    type = json["type"];
    url = json["url"];
    createdAt = json["created_at"];
    timestamps = json["timestamps"] == null ? null : Timestamps17.fromJson(json["timestamps"]);
    applicationId = json["application_id"];
    details = json["details"];
    state = json["state"];
    emoji = json["emoji"] == null ? null : Emoji19.fromJson(json["emoji"]);
    party = json["party"] == null ? null : Party17.fromJson(json["party"]);
    assets = json["assets"] == null ? null : Assets17.fromJson(json["assets"]);
    secrets = json["secrets"] == null ? null : Secrets17.fromJson(json["secrets"]);
    instance = json["instance"];
    flags = json["flags"];
    id = json["id"];
    syncId = json["sync_id"];
    metadata = json["metadata"] == null ? null : Metadata17.fromJson(json["metadata"]);
    sessionId = json["session_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["type"] = type;
    _data["url"] = url;
    _data["created_at"] = createdAt;
    if(timestamps != null) {
      _data["timestamps"] = timestamps?.toJson();
    }
    _data["application_id"] = applicationId;
    _data["details"] = details;
    _data["state"] = state;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    if(party != null) {
      _data["party"] = party?.toJson();
    }
    if(assets != null) {
      _data["assets"] = assets?.toJson();
    }
    if(secrets != null) {
      _data["secrets"] = secrets?.toJson();
    }
    _data["instance"] = instance;
    _data["flags"] = flags;
    _data["id"] = id;
    _data["sync_id"] = syncId;
    if(metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    _data["session_id"] = sessionId;
    return _data;
  }
}

class Metadata17 {
  String? contextUri;
  String? albumId;
  List<String>? artistIds;

  Metadata17({this.contextUri, this.albumId, this.artistIds});

  Metadata17.fromJson(Map<String, dynamic> json) {
    contextUri = json["context_uri"];
    albumId = json["album_id"];
    artistIds = json["artist_ids"] == null ? null : List<String>.from(json["artist_ids"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["context_uri"] = contextUri;
    _data["album_id"] = albumId;
    if(artistIds != null) {
      _data["artist_ids"] = artistIds;
    }
    return _data;
  }
}

class Secrets17 {
  String? join;
  String? spectate;
  String? match;

  Secrets17({this.join, this.spectate, this.match});

  Secrets17.fromJson(Map<String, dynamic> json) {
    join = json["join"];
    spectate = json["spectate"];
    match = json["match"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["join"] = join;
    _data["spectate"] = spectate;
    _data["match"] = match;
    return _data;
  }
}

class Assets17 {
  String? largeImage;
  String? largeText;
  String? smallImage;
  String? smallText;

  Assets17({this.largeImage, this.largeText, this.smallImage, this.smallText});

  Assets17.fromJson(Map<String, dynamic> json) {
    largeImage = json["large_image"];
    largeText = json["large_text"];
    smallImage = json["small_image"];
    smallText = json["small_text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["large_image"] = largeImage;
    _data["large_text"] = largeText;
    _data["small_image"] = smallImage;
    _data["small_text"] = smallText;
    return _data;
  }
}

class Party17 {
  String? id;
  List<int>? size;

  Party17({this.id, this.size});

  Party17.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    size = json["size"] == null ? null : List<int>.from(json["size"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if(size != null) {
      _data["size"] = size;
    }
    return _data;
  }
}

class Emoji19 {
  String? name;
  String? id;
  bool? animated;

  Emoji19({this.name, this.id, this.animated});

  Emoji19.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["id"] = id;
    _data["animated"] = animated;
    return _data;
  }
}

class Timestamps17 {
  int? start;
  int? end;

  Timestamps17({this.start, this.end});

  Timestamps17.fromJson(Map<String, dynamic> json) {
    start = json["start"];
    end = json["end"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }
}

class User6 {
  String? username;
  String? discriminator;
  String? avatar;
  int? accentColor;
  String? banner;
  List<int>? themeColors;
  String? pronouns;
  String? phone;
  bool? desktop;
  bool? mobile;
  bool? premium;
  int? premiumType;
  bool? bot;
  String? bio;
  bool? system;
  bool? nsfwAllowed;
  bool? mfaEnabled;
  bool? webauthnEnabled;
  String? totpSecret;
  String? totpLastTicket;
  String? createdAt;
  String? premiumSince;
  bool? verified;
  bool? disabled;
  bool? deleted;
  String? email;
  String? flags;
  int? publicFlags;
  int? purchasedFlags;
  int? premiumUsageFlags;
  String? rights;
  List<Sessions16>? sessions;
  List<Relationships16>? relationships;
  List<ConnectedAccounts16>? connectedAccounts;
  Data16? data;
  List<String>? fingerprints;
  Settings17? settings;
  String? extendedSettings;
  List<SecurityKeys16>? securityKeys;
  String? id;

  User6({this.username, this.discriminator, this.avatar, this.accentColor, this.banner, this.themeColors, this.pronouns, this.phone, this.desktop, this.mobile, this.premium, this.premiumType, this.bot, this.bio, this.system, this.nsfwAllowed, this.mfaEnabled, this.webauthnEnabled, this.totpSecret, this.totpLastTicket, this.createdAt, this.premiumSince, this.verified, this.disabled, this.deleted, this.email, this.flags, this.publicFlags, this.purchasedFlags, this.premiumUsageFlags, this.rights, this.sessions, this.relationships, this.connectedAccounts, this.data, this.fingerprints, this.settings, this.extendedSettings, this.securityKeys, this.id});

  User6.fromJson(Map<String, dynamic> json) {
    username = json["username"];
    discriminator = json["discriminator"];
    avatar = json["avatar"];
    accentColor = json["accent_color"];
    banner = json["banner"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    phone = json["phone"];
    desktop = json["desktop"];
    mobile = json["mobile"];
    premium = json["premium"];
    premiumType = json["premium_type"];
    bot = json["bot"];
    bio = json["bio"];
    system = json["system"];
    nsfwAllowed = json["nsfw_allowed"];
    mfaEnabled = json["mfa_enabled"];
    webauthnEnabled = json["webauthn_enabled"];
    totpSecret = json["totp_secret"];
    totpLastTicket = json["totp_last_ticket"];
    createdAt = json["created_at"];
    premiumSince = json["premium_since"];
    verified = json["verified"];
    disabled = json["disabled"];
    deleted = json["deleted"];
    email = json["email"];
    flags = json["flags"];
    publicFlags = json["public_flags"];
    purchasedFlags = json["purchased_flags"];
    premiumUsageFlags = json["premium_usage_flags"];
    rights = json["rights"];
    sessions = json["sessions"] == null ? null : (json["sessions"] as List).map((e) => Sessions16.fromJson(e)).toList();
    relationships = json["relationships"] == null ? null : (json["relationships"] as List).map((e) => Relationships16.fromJson(e)).toList();
    connectedAccounts = json["connected_accounts"] == null ? null : (json["connected_accounts"] as List).map((e) => ConnectedAccounts16.fromJson(e)).toList();
    data = json["data"] == null ? null : Data16.fromJson(json["data"]);
    fingerprints = json["fingerprints"] == null ? null : List<String>.from(json["fingerprints"]);
    settings = json["settings"] == null ? null : Settings17.fromJson(json["settings"]);
    extendedSettings = json["extended_settings"];
    securityKeys = json["security_keys"] == null ? null : (json["security_keys"] as List).map((e) => SecurityKeys16.fromJson(e)).toList();
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["discriminator"] = discriminator;
    _data["avatar"] = avatar;
    _data["accent_color"] = accentColor;
    _data["banner"] = banner;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["phone"] = phone;
    _data["desktop"] = desktop;
    _data["mobile"] = mobile;
    _data["premium"] = premium;
    _data["premium_type"] = premiumType;
    _data["bot"] = bot;
    _data["bio"] = bio;
    _data["system"] = system;
    _data["nsfw_allowed"] = nsfwAllowed;
    _data["mfa_enabled"] = mfaEnabled;
    _data["webauthn_enabled"] = webauthnEnabled;
    _data["totp_secret"] = totpSecret;
    _data["totp_last_ticket"] = totpLastTicket;
    _data["created_at"] = createdAt;
    _data["premium_since"] = premiumSince;
    _data["verified"] = verified;
    _data["disabled"] = disabled;
    _data["deleted"] = deleted;
    _data["email"] = email;
    _data["flags"] = flags;
    _data["public_flags"] = publicFlags;
    _data["purchased_flags"] = purchasedFlags;
    _data["premium_usage_flags"] = premiumUsageFlags;
    _data["rights"] = rights;
    if(sessions != null) {
      _data["sessions"] = sessions?.map((e) => e.toJson()).toList();
    }
    if(relationships != null) {
      _data["relationships"] = relationships?.map((e) => e.toJson()).toList();
    }
    if(connectedAccounts != null) {
      _data["connected_accounts"] = connectedAccounts?.map((e) => e.toJson()).toList();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    if(fingerprints != null) {
      _data["fingerprints"] = fingerprints;
    }
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["extended_settings"] = extendedSettings;
    if(securityKeys != null) {
      _data["security_keys"] = securityKeys?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    return _data;
  }
}

class SecurityKeys16 {
  String? userId;
  String? user;
  String? keyId;
  String? publicKey;
  int? counter;
  String? name;
  String? id;

  SecurityKeys16({this.userId, this.user, this.keyId, this.publicKey, this.counter, this.name, this.id});

  SecurityKeys16.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    keyId = json["key_id"];
    publicKey = json["public_key"];
    counter = json["counter"];
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["key_id"] = keyId;
    _data["public_key"] = publicKey;
    _data["counter"] = counter;
    _data["name"] = name;
    _data["id"] = id;
    return _data;
  }
}

class Settings17 {
  String? index;
  int? afkTimeout;
  bool? allowAccessibilityDetection;
  bool? animateEmoji;
  int? animateStickers;
  bool? contactSyncEnabled;
  bool? convertEmoticons;
  CustomStatus16? customStatus;
  bool? defaultGuildsRestricted;
  bool? detectPlatformAccounts;
  bool? developerMode;
  bool? disableGamesTab;
  bool? enableTtsCommand;
  int? explicitContentFilter;
  FriendSourceFlags16? friendSourceFlags;
  bool? gatewayConnected;
  bool? gifAutoPlay;
  List<GuildFolders16>? guildFolders;
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

  Settings17({this.index, this.afkTimeout, this.allowAccessibilityDetection, this.animateEmoji, this.animateStickers, this.contactSyncEnabled, this.convertEmoticons, this.customStatus, this.defaultGuildsRestricted, this.detectPlatformAccounts, this.developerMode, this.disableGamesTab, this.enableTtsCommand, this.explicitContentFilter, this.friendSourceFlags, this.gatewayConnected, this.gifAutoPlay, this.guildFolders, this.guildPositions, this.inlineAttachmentMedia, this.inlineEmbedMedia, this.locale, this.messageDisplayCompact, this.nativePhoneIntegrationEnabled, this.renderEmbeds, this.renderReactions, this.restrictedGuilds, this.showCurrentGame, this.status, this.streamNotificationsEnabled, this.theme, this.timezoneOffset});

  Settings17.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    afkTimeout = json["afk_timeout"];
    allowAccessibilityDetection = json["allow_accessibility_detection"];
    animateEmoji = json["animate_emoji"];
    animateStickers = json["animate_stickers"];
    contactSyncEnabled = json["contact_sync_enabled"];
    convertEmoticons = json["convert_emoticons"];
    customStatus = json["custom_status"] == null ? null : CustomStatus16.fromJson(json["custom_status"]);
    defaultGuildsRestricted = json["default_guilds_restricted"];
    detectPlatformAccounts = json["detect_platform_accounts"];
    developerMode = json["developer_mode"];
    disableGamesTab = json["disable_games_tab"];
    enableTtsCommand = json["enable_tts_command"];
    explicitContentFilter = json["explicit_content_filter"];
    friendSourceFlags = json["friend_source_flags"] == null ? null : FriendSourceFlags16.fromJson(json["friend_source_flags"]);
    gatewayConnected = json["gateway_connected"];
    gifAutoPlay = json["gif_auto_play"];
    guildFolders = json["guild_folders"] == null ? null : (json["guild_folders"] as List).map((e) => GuildFolders16.fromJson(e)).toList();
    guildPositions = json["guild_positions"] == null ? null : List<String>.from(json["guild_positions"]);
    inlineAttachmentMedia = json["inline_attachment_media"];
    inlineEmbedMedia = json["inline_embed_media"];
    locale = json["locale"];
    messageDisplayCompact = json["message_display_compact"];
    nativePhoneIntegrationEnabled = json["native_phone_integration_enabled"];
    renderEmbeds = json["render_embeds"];
    renderReactions = json["render_reactions"];
    restrictedGuilds = json["restricted_guilds"] == null ? null : List<String>.from(json["restricted_guilds"]);
    showCurrentGame = json["show_current_game"];
    status = json["status"];
    streamNotificationsEnabled = json["stream_notifications_enabled"];
    theme = json["theme"];
    timezoneOffset = json["timezone_offset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["afk_timeout"] = afkTimeout;
    _data["allow_accessibility_detection"] = allowAccessibilityDetection;
    _data["animate_emoji"] = animateEmoji;
    _data["animate_stickers"] = animateStickers;
    _data["contact_sync_enabled"] = contactSyncEnabled;
    _data["convert_emoticons"] = convertEmoticons;
    if(customStatus != null) {
      _data["custom_status"] = customStatus?.toJson();
    }
    _data["default_guilds_restricted"] = defaultGuildsRestricted;
    _data["detect_platform_accounts"] = detectPlatformAccounts;
    _data["developer_mode"] = developerMode;
    _data["disable_games_tab"] = disableGamesTab;
    _data["enable_tts_command"] = enableTtsCommand;
    _data["explicit_content_filter"] = explicitContentFilter;
    if(friendSourceFlags != null) {
      _data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    _data["gateway_connected"] = gatewayConnected;
    _data["gif_auto_play"] = gifAutoPlay;
    if(guildFolders != null) {
      _data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if(guildPositions != null) {
      _data["guild_positions"] = guildPositions;
    }
    _data["inline_attachment_media"] = inlineAttachmentMedia;
    _data["inline_embed_media"] = inlineEmbedMedia;
    _data["locale"] = locale;
    _data["message_display_compact"] = messageDisplayCompact;
    _data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    _data["render_embeds"] = renderEmbeds;
    _data["render_reactions"] = renderReactions;
    if(restrictedGuilds != null) {
      _data["restricted_guilds"] = restrictedGuilds;
    }
    _data["show_current_game"] = showCurrentGame;
    _data["status"] = status;
    _data["stream_notifications_enabled"] = streamNotificationsEnabled;
    _data["theme"] = theme;
    _data["timezone_offset"] = timezoneOffset;
    return _data;
  }
}

class GuildFolders16 {
  int? color;
  List<String>? guildIds;
  int? id;
  String? name;

  GuildFolders16({this.color, this.guildIds, this.id, this.name});

  GuildFolders16.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    guildIds = json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    if(guildIds != null) {
      _data["guild_ids"] = guildIds;
    }
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class FriendSourceFlags16 {
  bool? all;

  FriendSourceFlags16({this.all});

  FriendSourceFlags16.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["all"] = all;
    return _data;
  }
}

class CustomStatus16 {
  String? emojiId;
  String? emojiName;
  int? expiresAt;
  String? text;

  CustomStatus16({this.emojiId, this.emojiName, this.expiresAt, this.text});

  CustomStatus16.fromJson(Map<String, dynamic> json) {
    emojiId = json["emoji_id"];
    emojiName = json["emoji_name"];
    expiresAt = json["expires_at"];
    text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["emoji_id"] = emojiId;
    _data["emoji_name"] = emojiName;
    _data["expires_at"] = expiresAt;
    _data["text"] = text;
    return _data;
  }
}

class Data16 {
  String? validTokensSince;
  String? hash;

  Data16({this.validTokensSince, this.hash});

  Data16.fromJson(Map<String, dynamic> json) {
    validTokensSince = json["valid_tokens_since"];
    hash = json["hash"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["valid_tokens_since"] = validTokensSince;
    _data["hash"] = hash;
    return _data;
  }
}

class ConnectedAccounts16 {
  String? externalId;
  String? userId;
  String? user;
  bool? friendSync;
  String? name;
  bool? revoked;
  int? showActivity;
  String? type;
  bool? verified;
  int? visibility;
  List<String>? integrations;
  dynamic metadata;
  int? metadataVisibility;
  bool? twoWayLink;
  TokenData16? tokenData;
  String? id;

  ConnectedAccounts16({this.externalId, this.userId, this.user, this.friendSync, this.name, this.revoked, this.showActivity, this.type, this.verified, this.visibility, this.integrations, this.metadata, this.metadataVisibility, this.twoWayLink, this.tokenData, this.id});

  ConnectedAccounts16.fromJson(Map<String, dynamic> json) {
    externalId = json["external_id"];
    userId = json["user_id"];
    user = json["user"];
    friendSync = json["friend_sync"];
    name = json["name"];
    revoked = json["revoked"];
    showActivity = json["show_activity"];
    type = json["type"];
    verified = json["verified"];
    visibility = json["visibility"];
    integrations = json["integrations"] == null ? null : List<String>.from(json["integrations"]);
    metadata = json["metadata_"];
    metadataVisibility = json["metadata_visibility"];
    twoWayLink = json["two_way_link"];
    tokenData = json["token_data"] == null ? null : TokenData16.fromJson(json["token_data"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["external_id"] = externalId;
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["friend_sync"] = friendSync;
    _data["name"] = name;
    _data["revoked"] = revoked;
    _data["show_activity"] = showActivity;
    _data["type"] = type;
    _data["verified"] = verified;
    _data["visibility"] = visibility;
    if(integrations != null) {
      _data["integrations"] = integrations;
    }
    _data["metadata_"] = metadata;
    _data["metadata_visibility"] = metadataVisibility;
    _data["two_way_link"] = twoWayLink;
    if(tokenData != null) {
      _data["token_data"] = tokenData?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class TokenData16 {
  String? accessToken;
  String? tokenType;
  String? scope;
  String? refreshToken;
  int? expiresIn;
  int? expiresAt;
  int? fetchedAt;

  TokenData16({this.accessToken, this.tokenType, this.scope, this.refreshToken, this.expiresIn, this.expiresAt, this.fetchedAt});

  TokenData16.fromJson(Map<String, dynamic> json) {
    accessToken = json["access_token"];
    tokenType = json["token_type"];
    scope = json["scope"];
    refreshToken = json["refresh_token"];
    expiresIn = json["expires_in"];
    expiresAt = json["expires_at"];
    fetchedAt = json["fetched_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    _data["token_type"] = tokenType;
    _data["scope"] = scope;
    _data["refresh_token"] = refreshToken;
    _data["expires_in"] = expiresIn;
    _data["expires_at"] = expiresAt;
    _data["fetched_at"] = fetchedAt;
    return _data;
  }
}

class Relationships16 {
  String? fromId;
  String? from;
  String? toId;
  String? to;
  String? nickname;
  int? type;
  String? id;

  Relationships16({this.fromId, this.from, this.toId, this.to, this.nickname, this.type, this.id});

  Relationships16.fromJson(Map<String, dynamic> json) {
    fromId = json["from_id"];
    from = json["from"];
    toId = json["to_id"];
    to = json["to"];
    nickname = json["nickname"];
    type = json["type"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["from_id"] = fromId;
    _data["from"] = from;
    _data["to_id"] = toId;
    _data["to"] = to;
    _data["nickname"] = nickname;
    _data["type"] = type;
    _data["id"] = id;
    return _data;
  }
}

class Sessions16 {
  String? userId;
  String? user;
  String? sessionId;
  List<Activities16>? activities;
  ClientInfo16? clientInfo;
  String? status;
  String? id;

  Sessions16({this.userId, this.user, this.sessionId, this.activities, this.clientInfo, this.status, this.id});

  Sessions16.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    sessionId = json["session_id"];
    activities = json["activities"] == null ? null : (json["activities"] as List).map((e) => Activities16.fromJson(e)).toList();
    clientInfo = json["client_info"] == null ? null : ClientInfo16.fromJson(json["client_info"]);
    status = json["status"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["session_id"] = sessionId;
    if(activities != null) {
      _data["activities"] = activities?.map((e) => e.toJson()).toList();
    }
    if(clientInfo != null) {
      _data["client_info"] = clientInfo?.toJson();
    }
    _data["status"] = status;
    _data["id"] = id;
    return _data;
  }
}

class ClientInfo16 {
  String? client;
  String? os;
  int? version;

  ClientInfo16({this.client, this.os, this.version});

  ClientInfo16.fromJson(Map<String, dynamic> json) {
    client = json["client"];
    os = json["os"];
    version = json["version"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["client"] = client;
    _data["os"] = os;
    _data["version"] = version;
    return _data;
  }
}

class Activities16 {
  String? name;
  int? type;
  String? url;
  int? createdAt;
  Timestamps16? timestamps;
  String? applicationId;
  String? details;
  String? state;
  Emoji18? emoji;
  Party16? party;
  Assets16? assets;
  Secrets16? secrets;
  bool? instance;
  String? flags;
  String? id;
  String? syncId;
  Metadata16? metadata;
  String? sessionId;

  Activities16({this.name, this.type, this.url, this.createdAt, this.timestamps, this.applicationId, this.details, this.state, this.emoji, this.party, this.assets, this.secrets, this.instance, this.flags, this.id, this.syncId, this.metadata, this.sessionId});

  Activities16.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    type = json["type"];
    url = json["url"];
    createdAt = json["created_at"];
    timestamps = json["timestamps"] == null ? null : Timestamps16.fromJson(json["timestamps"]);
    applicationId = json["application_id"];
    details = json["details"];
    state = json["state"];
    emoji = json["emoji"] == null ? null : Emoji18.fromJson(json["emoji"]);
    party = json["party"] == null ? null : Party16.fromJson(json["party"]);
    assets = json["assets"] == null ? null : Assets16.fromJson(json["assets"]);
    secrets = json["secrets"] == null ? null : Secrets16.fromJson(json["secrets"]);
    instance = json["instance"];
    flags = json["flags"];
    id = json["id"];
    syncId = json["sync_id"];
    metadata = json["metadata"] == null ? null : Metadata16.fromJson(json["metadata"]);
    sessionId = json["session_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["type"] = type;
    _data["url"] = url;
    _data["created_at"] = createdAt;
    if(timestamps != null) {
      _data["timestamps"] = timestamps?.toJson();
    }
    _data["application_id"] = applicationId;
    _data["details"] = details;
    _data["state"] = state;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    if(party != null) {
      _data["party"] = party?.toJson();
    }
    if(assets != null) {
      _data["assets"] = assets?.toJson();
    }
    if(secrets != null) {
      _data["secrets"] = secrets?.toJson();
    }
    _data["instance"] = instance;
    _data["flags"] = flags;
    _data["id"] = id;
    _data["sync_id"] = syncId;
    if(metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    _data["session_id"] = sessionId;
    return _data;
  }
}

class Metadata16 {
  String? contextUri;
  String? albumId;
  List<String>? artistIds;

  Metadata16({this.contextUri, this.albumId, this.artistIds});

  Metadata16.fromJson(Map<String, dynamic> json) {
    contextUri = json["context_uri"];
    albumId = json["album_id"];
    artistIds = json["artist_ids"] == null ? null : List<String>.from(json["artist_ids"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["context_uri"] = contextUri;
    _data["album_id"] = albumId;
    if(artistIds != null) {
      _data["artist_ids"] = artistIds;
    }
    return _data;
  }
}

class Secrets16 {
  String? join;
  String? spectate;
  String? match;

  Secrets16({this.join, this.spectate, this.match});

  Secrets16.fromJson(Map<String, dynamic> json) {
    join = json["join"];
    spectate = json["spectate"];
    match = json["match"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["join"] = join;
    _data["spectate"] = spectate;
    _data["match"] = match;
    return _data;
  }
}

class Assets16 {
  String? largeImage;
  String? largeText;
  String? smallImage;
  String? smallText;

  Assets16({this.largeImage, this.largeText, this.smallImage, this.smallText});

  Assets16.fromJson(Map<String, dynamic> json) {
    largeImage = json["large_image"];
    largeText = json["large_text"];
    smallImage = json["small_image"];
    smallText = json["small_text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["large_image"] = largeImage;
    _data["large_text"] = largeText;
    _data["small_image"] = smallImage;
    _data["small_text"] = smallText;
    return _data;
  }
}

class Party16 {
  String? id;
  List<int>? size;

  Party16({this.id, this.size});

  Party16.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    size = json["size"] == null ? null : List<int>.from(json["size"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if(size != null) {
      _data["size"] = size;
    }
    return _data;
  }
}

class Emoji18 {
  String? name;
  String? id;
  bool? animated;

  Emoji18({this.name, this.id, this.animated});

  Emoji18.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["id"] = id;
    _data["animated"] = animated;
    return _data;
  }
}

class Timestamps16 {
  int? start;
  int? end;

  Timestamps16({this.start, this.end});

  Timestamps16.fromJson(Map<String, dynamic> json) {
    start = json["start"];
    end = json["end"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }
}

class Messages {
  String? channelId;
  String? channel;
  String? guildId;
  String? guild;
  String? authorId;
  Author? author;
  String? memberId;
  Member? member;
  String? webhookId;
  Webhook? webhook;
  String? applicationId;
  Application1? application;
  String? content;
  String? timestamp;
  String? editedTimestamp;
  bool? tts;
  bool? mentionEveryone;
  List<Mentions>? mentions;
  List<MentionRoles>? mentionRoles;
  List<String>? mentionChannels;
  List<StickerItems>? stickerItems;
  List<Attachments>? attachments;
  List<Embeds>? embeds;
  List<Reactions>? reactions;
  String? nonce;
  bool? pinned;
  int? type;
  Activity? activity;
  String? flags;
  MessageReference? messageReference;
  String? referencedMessage;
  Interaction? interaction;
  List<Components>? components;
  String? id;

  Messages({this.channelId, this.channel, this.guildId, this.guild, this.authorId, this.author, this.memberId, this.member, this.webhookId, this.webhook, this.applicationId, this.application, this.content, this.timestamp, this.editedTimestamp, this.tts, this.mentionEveryone, this.mentions, this.mentionRoles, this.mentionChannels, this.stickerItems, this.attachments, this.embeds, this.reactions, this.nonce, this.pinned, this.type, this.activity, this.flags, this.messageReference, this.referencedMessage, this.interaction, this.components, this.id});

  Messages.fromJson(Map<String, dynamic> json) {
    channelId = json["channel_id"];
    channel = json["channel"];
    guildId = json["guild_id"];
    guild = json["guild"];
    authorId = json["author_id"];
    author = json["author"] == null ? null : Author.fromJson(json["author"]);
    memberId = json["member_id"];
    member = json["member"] == null ? null : Member.fromJson(json["member"]);
    webhookId = json["webhook_id"];
    webhook = json["webhook"] == null ? null : Webhook.fromJson(json["webhook"]);
    applicationId = json["application_id"];
    application = json["application"] == null ? null : Application1.fromJson(json["application"]);
    content = json["content"];
    timestamp = json["timestamp"];
    editedTimestamp = json["edited_timestamp"];
    tts = json["tts"];
    mentionEveryone = json["mention_everyone"];
    mentions = json["mentions"] == null ? null : (json["mentions"] as List).map((e) => Mentions.fromJson(e)).toList();
    mentionRoles = json["mention_roles"] == null ? null : (json["mention_roles"] as List).map((e) => MentionRoles.fromJson(e)).toList();
    mentionChannels = json["mention_channels"] == null ? null : List<String>.from(json["mention_channels"]);
    stickerItems = json["sticker_items"] == null ? null : (json["sticker_items"] as List).map((e) => StickerItems.fromJson(e)).toList();
    attachments = json["attachments"] == null ? null : (json["attachments"] as List).map((e) => Attachments.fromJson(e)).toList();
    embeds = json["embeds"] == null ? null : (json["embeds"] as List).map((e) => Embeds.fromJson(e)).toList();
    reactions = json["reactions"] == null ? null : (json["reactions"] as List).map((e) => Reactions.fromJson(e)).toList();
    nonce = json["nonce"];
    pinned = json["pinned"];
    type = json["type"];
    activity = json["activity"] == null ? null : Activity.fromJson(json["activity"]);
    flags = json["flags"];
    messageReference = json["message_reference"] == null ? null : MessageReference.fromJson(json["message_reference"]);
    referencedMessage = json["referenced_message"];
    interaction = json["interaction"] == null ? null : Interaction.fromJson(json["interaction"]);
    components = json["components"] == null ? null : (json["components"] as List).map((e) => Components.fromJson(e)).toList();
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["channel_id"] = channelId;
    _data["channel"] = channel;
    _data["guild_id"] = guildId;
    _data["guild"] = guild;
    _data["author_id"] = authorId;
    if(author != null) {
      _data["author"] = author?.toJson();
    }
    _data["member_id"] = memberId;
    if(member != null) {
      _data["member"] = member?.toJson();
    }
    _data["webhook_id"] = webhookId;
    if(webhook != null) {
      _data["webhook"] = webhook?.toJson();
    }
    _data["application_id"] = applicationId;
    if(application != null) {
      _data["application"] = application?.toJson();
    }
    _data["content"] = content;
    _data["timestamp"] = timestamp;
    _data["edited_timestamp"] = editedTimestamp;
    _data["tts"] = tts;
    _data["mention_everyone"] = mentionEveryone;
    if(mentions != null) {
      _data["mentions"] = mentions?.map((e) => e.toJson()).toList();
    }
    if(mentionRoles != null) {
      _data["mention_roles"] = mentionRoles?.map((e) => e.toJson()).toList();
    }
    if(mentionChannels != null) {
      _data["mention_channels"] = mentionChannels;
    }
    if(stickerItems != null) {
      _data["sticker_items"] = stickerItems?.map((e) => e.toJson()).toList();
    }
    if(attachments != null) {
      _data["attachments"] = attachments?.map((e) => e.toJson()).toList();
    }
    if(embeds != null) {
      _data["embeds"] = embeds?.map((e) => e.toJson()).toList();
    }
    if(reactions != null) {
      _data["reactions"] = reactions?.map((e) => e.toJson()).toList();
    }
    _data["nonce"] = nonce;
    _data["pinned"] = pinned;
    _data["type"] = type;
    if(activity != null) {
      _data["activity"] = activity?.toJson();
    }
    _data["flags"] = flags;
    if(messageReference != null) {
      _data["message_reference"] = messageReference?.toJson();
    }
    _data["referenced_message"] = referencedMessage;
    if(interaction != null) {
      _data["interaction"] = interaction?.toJson();
    }
    if(components != null) {
      _data["components"] = components?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    return _data;
  }
}

class Components {
  int? type;
  int? style;
  String? label;
  Emoji17? emoji;
  String? customId;
  String? url;
  bool? disabled;
  List<String>? components;

  Components({this.type, this.style, this.label, this.emoji, this.customId, this.url, this.disabled, this.components});

  Components.fromJson(Map<String, dynamic> json) {
    type = json["type"];
    style = json["style"];
    label = json["label"];
    emoji = json["emoji"] == null ? null : Emoji17.fromJson(json["emoji"]);
    customId = json["custom_id"];
    url = json["url"];
    disabled = json["disabled"];
    components = json["components"] == null ? null : List<String>.from(json["components"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["type"] = type;
    _data["style"] = style;
    _data["label"] = label;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    _data["custom_id"] = customId;
    _data["url"] = url;
    _data["disabled"] = disabled;
    if(components != null) {
      _data["components"] = components;
    }
    return _data;
  }
}

class Emoji17 {
  String? id;
  String? name;
  bool? animated;

  Emoji17({this.id, this.name, this.animated});

  Emoji17.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["animated"] = animated;
    return _data;
  }
}

class Interaction {
  String? id;
  int? type;
  String? name;
  String? userId;

  Interaction({this.id, this.type, this.name, this.userId});

  Interaction.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    type = json["type"];
    name = json["name"];
    userId = json["user_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["type"] = type;
    _data["name"] = name;
    _data["user_id"] = userId;
    return _data;
  }
}

class MessageReference {
  String? messageId;
  String? channelId;
  String? guildId;

  MessageReference({this.messageId, this.channelId, this.guildId});

  MessageReference.fromJson(Map<String, dynamic> json) {
    messageId = json["message_id"];
    channelId = json["channel_id"];
    guildId = json["guild_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["message_id"] = messageId;
    _data["channel_id"] = channelId;
    _data["guild_id"] = guildId;
    return _data;
  }
}

class Activity {
  int? type;
  String? partyId;

  Activity({this.type, this.partyId});

  Activity.fromJson(Map<String, dynamic> json) {
    type = json["type"];
    partyId = json["party_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["type"] = type;
    _data["party_id"] = partyId;
    return _data;
  }
}

class Reactions {
  int? count;
  Emoji16? emoji;
  List<String>? userIds;

  Reactions({this.count, this.emoji, this.userIds});

  Reactions.fromJson(Map<String, dynamic> json) {
    count = json["count"];
    emoji = json["emoji"] == null ? null : Emoji16.fromJson(json["emoji"]);
    userIds = json["user_ids"] == null ? null : List<String>.from(json["user_ids"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["count"] = count;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    if(userIds != null) {
      _data["user_ids"] = userIds;
    }
    return _data;
  }
}

class Emoji16 {
  String? id;
  String? name;
  bool? animated;

  Emoji16({this.id, this.name, this.animated});

  Emoji16.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["animated"] = animated;
    return _data;
  }
}

class Embeds {
  String? title;
  String? type;
  String? description;
  String? url;
  String? timestamp;
  int? color;
  Footer? footer;
  Image? image;
  Thumbnail? thumbnail;
  Video? video;
  Provider? provider;
  Author1? author;
  List<Fields>? fields;

  Embeds({this.title, this.type, this.description, this.url, this.timestamp, this.color, this.footer, this.image, this.thumbnail, this.video, this.provider, this.author, this.fields});

  Embeds.fromJson(Map<String, dynamic> json) {
    title = json["title"];
    type = json["type"];
    description = json["description"];
    url = json["url"];
    timestamp = json["timestamp"];
    color = json["color"];
    footer = json["footer"] == null ? null : Footer.fromJson(json["footer"]);
    image = json["image"] == null ? null : Image.fromJson(json["image"]);
    thumbnail = json["thumbnail"] == null ? null : Thumbnail.fromJson(json["thumbnail"]);
    video = json["video"] == null ? null : Video.fromJson(json["video"]);
    provider = json["provider"] == null ? null : Provider.fromJson(json["provider"]);
    author = json["author"] == null ? null : Author1.fromJson(json["author"]);
    fields = json["fields"] == null ? null : (json["fields"] as List).map((e) => Fields.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["title"] = title;
    _data["type"] = type;
    _data["description"] = description;
    _data["url"] = url;
    _data["timestamp"] = timestamp;
    _data["color"] = color;
    if(footer != null) {
      _data["footer"] = footer?.toJson();
    }
    if(image != null) {
      _data["image"] = image?.toJson();
    }
    if(thumbnail != null) {
      _data["thumbnail"] = thumbnail?.toJson();
    }
    if(video != null) {
      _data["video"] = video?.toJson();
    }
    if(provider != null) {
      _data["provider"] = provider?.toJson();
    }
    if(author != null) {
      _data["author"] = author?.toJson();
    }
    if(fields != null) {
      _data["fields"] = fields?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Fields {
  String? name;
  String? value;
  bool? inline;

  Fields({this.name, this.value, this.inline});

  Fields.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    value = json["value"];
    inline = json["inline"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["value"] = value;
    _data["inline"] = inline;
    return _data;
  }
}

class Author1 {
  String? name;
  String? url;
  String? iconUrl;
  String? proxyIconUrl;

  Author1({this.name, this.url, this.iconUrl, this.proxyIconUrl});

  Author1.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    url = json["url"];
    iconUrl = json["icon_url"];
    proxyIconUrl = json["proxy_icon_url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["url"] = url;
    _data["icon_url"] = iconUrl;
    _data["proxy_icon_url"] = proxyIconUrl;
    return _data;
  }
}

class Provider {
  String? name;
  String? url;

  Provider({this.name, this.url});

  Provider.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["url"] = url;
    return _data;
  }
}

class Video {
  String? url;
  String? proxyUrl;
  int? height;
  int? width;

  Video({this.url, this.proxyUrl, this.height, this.width});

  Video.fromJson(Map<String, dynamic> json) {
    url = json["url"];
    proxyUrl = json["proxy_url"];
    height = json["height"];
    width = json["width"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["url"] = url;
    _data["proxy_url"] = proxyUrl;
    _data["height"] = height;
    _data["width"] = width;
    return _data;
  }
}

class Thumbnail {
  String? url;
  String? proxyUrl;
  int? height;
  int? width;

  Thumbnail({this.url, this.proxyUrl, this.height, this.width});

  Thumbnail.fromJson(Map<String, dynamic> json) {
    url = json["url"];
    proxyUrl = json["proxy_url"];
    height = json["height"];
    width = json["width"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["url"] = url;
    _data["proxy_url"] = proxyUrl;
    _data["height"] = height;
    _data["width"] = width;
    return _data;
  }
}

class Image {
  String? url;
  String? proxyUrl;
  int? height;
  int? width;

  Image({this.url, this.proxyUrl, this.height, this.width});

  Image.fromJson(Map<String, dynamic> json) {
    url = json["url"];
    proxyUrl = json["proxy_url"];
    height = json["height"];
    width = json["width"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["url"] = url;
    _data["proxy_url"] = proxyUrl;
    _data["height"] = height;
    _data["width"] = width;
    return _data;
  }
}

class Footer {
  String? text;
  String? iconUrl;
  String? proxyIconUrl;

  Footer({this.text, this.iconUrl, this.proxyIconUrl});

  Footer.fromJson(Map<String, dynamic> json) {
    text = json["text"];
    iconUrl = json["icon_url"];
    proxyIconUrl = json["proxy_icon_url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["text"] = text;
    _data["icon_url"] = iconUrl;
    _data["proxy_icon_url"] = proxyIconUrl;
    return _data;
  }
}

class Attachments {
  String? filename;
  int? size;
  String? url;
  String? proxyUrl;
  int? height;
  int? width;
  String? contentType;
  String? messageId;
  String? message;
  String? id;

  Attachments({this.filename, this.size, this.url, this.proxyUrl, this.height, this.width, this.contentType, this.messageId, this.message, this.id});

  Attachments.fromJson(Map<String, dynamic> json) {
    filename = json["filename"];
    size = json["size"];
    url = json["url"];
    proxyUrl = json["proxy_url"];
    height = json["height"];
    width = json["width"];
    contentType = json["content_type"];
    messageId = json["message_id"];
    message = json["message"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["filename"] = filename;
    _data["size"] = size;
    _data["url"] = url;
    _data["proxy_url"] = proxyUrl;
    _data["height"] = height;
    _data["width"] = width;
    _data["content_type"] = contentType;
    _data["message_id"] = messageId;
    _data["message"] = message;
    _data["id"] = id;
    return _data;
  }
}

class StickerItems {
  String? name;
  String? description;
  bool? available;
  String? tags;
  String? packId;
  Pack? pack;
  String? guildId;
  String? guild;
  String? userId;
  User5? user;
  int? type;
  int? formatType;
  String? id;

  StickerItems({this.name, this.description, this.available, this.tags, this.packId, this.pack, this.guildId, this.guild, this.userId, this.user, this.type, this.formatType, this.id});

  StickerItems.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    description = json["description"];
    available = json["available"];
    tags = json["tags"];
    packId = json["pack_id"];
    pack = json["pack"] == null ? null : Pack.fromJson(json["pack"]);
    guildId = json["guild_id"];
    guild = json["guild"];
    userId = json["user_id"];
    user = json["user"] == null ? null : User5.fromJson(json["user"]);
    type = json["type"];
    formatType = json["format_type"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["description"] = description;
    _data["available"] = available;
    _data["tags"] = tags;
    _data["pack_id"] = packId;
    if(pack != null) {
      _data["pack"] = pack?.toJson();
    }
    _data["guild_id"] = guildId;
    _data["guild"] = guild;
    _data["user_id"] = userId;
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    _data["type"] = type;
    _data["format_type"] = formatType;
    _data["id"] = id;
    return _data;
  }
}

class User5 {
  String? username;
  String? discriminator;
  String? avatar;
  int? accentColor;
  String? banner;
  List<int>? themeColors;
  String? pronouns;
  String? phone;
  bool? desktop;
  bool? mobile;
  bool? premium;
  int? premiumType;
  bool? bot;
  String? bio;
  bool? system;
  bool? nsfwAllowed;
  bool? mfaEnabled;
  bool? webauthnEnabled;
  String? totpSecret;
  String? totpLastTicket;
  String? createdAt;
  String? premiumSince;
  bool? verified;
  bool? disabled;
  bool? deleted;
  String? email;
  String? flags;
  int? publicFlags;
  int? purchasedFlags;
  int? premiumUsageFlags;
  String? rights;
  List<Sessions15>? sessions;
  List<Relationships15>? relationships;
  List<ConnectedAccounts15>? connectedAccounts;
  Data15? data;
  List<String>? fingerprints;
  Settings16? settings;
  String? extendedSettings;
  List<SecurityKeys15>? securityKeys;
  String? id;

  User5({this.username, this.discriminator, this.avatar, this.accentColor, this.banner, this.themeColors, this.pronouns, this.phone, this.desktop, this.mobile, this.premium, this.premiumType, this.bot, this.bio, this.system, this.nsfwAllowed, this.mfaEnabled, this.webauthnEnabled, this.totpSecret, this.totpLastTicket, this.createdAt, this.premiumSince, this.verified, this.disabled, this.deleted, this.email, this.flags, this.publicFlags, this.purchasedFlags, this.premiumUsageFlags, this.rights, this.sessions, this.relationships, this.connectedAccounts, this.data, this.fingerprints, this.settings, this.extendedSettings, this.securityKeys, this.id});

  User5.fromJson(Map<String, dynamic> json) {
    username = json["username"];
    discriminator = json["discriminator"];
    avatar = json["avatar"];
    accentColor = json["accent_color"];
    banner = json["banner"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    phone = json["phone"];
    desktop = json["desktop"];
    mobile = json["mobile"];
    premium = json["premium"];
    premiumType = json["premium_type"];
    bot = json["bot"];
    bio = json["bio"];
    system = json["system"];
    nsfwAllowed = json["nsfw_allowed"];
    mfaEnabled = json["mfa_enabled"];
    webauthnEnabled = json["webauthn_enabled"];
    totpSecret = json["totp_secret"];
    totpLastTicket = json["totp_last_ticket"];
    createdAt = json["created_at"];
    premiumSince = json["premium_since"];
    verified = json["verified"];
    disabled = json["disabled"];
    deleted = json["deleted"];
    email = json["email"];
    flags = json["flags"];
    publicFlags = json["public_flags"];
    purchasedFlags = json["purchased_flags"];
    premiumUsageFlags = json["premium_usage_flags"];
    rights = json["rights"];
    sessions = json["sessions"] == null ? null : (json["sessions"] as List).map((e) => Sessions15.fromJson(e)).toList();
    relationships = json["relationships"] == null ? null : (json["relationships"] as List).map((e) => Relationships15.fromJson(e)).toList();
    connectedAccounts = json["connected_accounts"] == null ? null : (json["connected_accounts"] as List).map((e) => ConnectedAccounts15.fromJson(e)).toList();
    data = json["data"] == null ? null : Data15.fromJson(json["data"]);
    fingerprints = json["fingerprints"] == null ? null : List<String>.from(json["fingerprints"]);
    settings = json["settings"] == null ? null : Settings16.fromJson(json["settings"]);
    extendedSettings = json["extended_settings"];
    securityKeys = json["security_keys"] == null ? null : (json["security_keys"] as List).map((e) => SecurityKeys15.fromJson(e)).toList();
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["discriminator"] = discriminator;
    _data["avatar"] = avatar;
    _data["accent_color"] = accentColor;
    _data["banner"] = banner;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["phone"] = phone;
    _data["desktop"] = desktop;
    _data["mobile"] = mobile;
    _data["premium"] = premium;
    _data["premium_type"] = premiumType;
    _data["bot"] = bot;
    _data["bio"] = bio;
    _data["system"] = system;
    _data["nsfw_allowed"] = nsfwAllowed;
    _data["mfa_enabled"] = mfaEnabled;
    _data["webauthn_enabled"] = webauthnEnabled;
    _data["totp_secret"] = totpSecret;
    _data["totp_last_ticket"] = totpLastTicket;
    _data["created_at"] = createdAt;
    _data["premium_since"] = premiumSince;
    _data["verified"] = verified;
    _data["disabled"] = disabled;
    _data["deleted"] = deleted;
    _data["email"] = email;
    _data["flags"] = flags;
    _data["public_flags"] = publicFlags;
    _data["purchased_flags"] = purchasedFlags;
    _data["premium_usage_flags"] = premiumUsageFlags;
    _data["rights"] = rights;
    if(sessions != null) {
      _data["sessions"] = sessions?.map((e) => e.toJson()).toList();
    }
    if(relationships != null) {
      _data["relationships"] = relationships?.map((e) => e.toJson()).toList();
    }
    if(connectedAccounts != null) {
      _data["connected_accounts"] = connectedAccounts?.map((e) => e.toJson()).toList();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    if(fingerprints != null) {
      _data["fingerprints"] = fingerprints;
    }
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["extended_settings"] = extendedSettings;
    if(securityKeys != null) {
      _data["security_keys"] = securityKeys?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    return _data;
  }
}

class SecurityKeys15 {
  String? userId;
  String? user;
  String? keyId;
  String? publicKey;
  int? counter;
  String? name;
  String? id;

  SecurityKeys15({this.userId, this.user, this.keyId, this.publicKey, this.counter, this.name, this.id});

  SecurityKeys15.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    keyId = json["key_id"];
    publicKey = json["public_key"];
    counter = json["counter"];
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["key_id"] = keyId;
    _data["public_key"] = publicKey;
    _data["counter"] = counter;
    _data["name"] = name;
    _data["id"] = id;
    return _data;
  }
}

class Settings16 {
  String? index;
  int? afkTimeout;
  bool? allowAccessibilityDetection;
  bool? animateEmoji;
  int? animateStickers;
  bool? contactSyncEnabled;
  bool? convertEmoticons;
  CustomStatus15? customStatus;
  bool? defaultGuildsRestricted;
  bool? detectPlatformAccounts;
  bool? developerMode;
  bool? disableGamesTab;
  bool? enableTtsCommand;
  int? explicitContentFilter;
  FriendSourceFlags15? friendSourceFlags;
  bool? gatewayConnected;
  bool? gifAutoPlay;
  List<GuildFolders15>? guildFolders;
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

  Settings16({this.index, this.afkTimeout, this.allowAccessibilityDetection, this.animateEmoji, this.animateStickers, this.contactSyncEnabled, this.convertEmoticons, this.customStatus, this.defaultGuildsRestricted, this.detectPlatformAccounts, this.developerMode, this.disableGamesTab, this.enableTtsCommand, this.explicitContentFilter, this.friendSourceFlags, this.gatewayConnected, this.gifAutoPlay, this.guildFolders, this.guildPositions, this.inlineAttachmentMedia, this.inlineEmbedMedia, this.locale, this.messageDisplayCompact, this.nativePhoneIntegrationEnabled, this.renderEmbeds, this.renderReactions, this.restrictedGuilds, this.showCurrentGame, this.status, this.streamNotificationsEnabled, this.theme, this.timezoneOffset});

  Settings16.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    afkTimeout = json["afk_timeout"];
    allowAccessibilityDetection = json["allow_accessibility_detection"];
    animateEmoji = json["animate_emoji"];
    animateStickers = json["animate_stickers"];
    contactSyncEnabled = json["contact_sync_enabled"];
    convertEmoticons = json["convert_emoticons"];
    customStatus = json["custom_status"] == null ? null : CustomStatus15.fromJson(json["custom_status"]);
    defaultGuildsRestricted = json["default_guilds_restricted"];
    detectPlatformAccounts = json["detect_platform_accounts"];
    developerMode = json["developer_mode"];
    disableGamesTab = json["disable_games_tab"];
    enableTtsCommand = json["enable_tts_command"];
    explicitContentFilter = json["explicit_content_filter"];
    friendSourceFlags = json["friend_source_flags"] == null ? null : FriendSourceFlags15.fromJson(json["friend_source_flags"]);
    gatewayConnected = json["gateway_connected"];
    gifAutoPlay = json["gif_auto_play"];
    guildFolders = json["guild_folders"] == null ? null : (json["guild_folders"] as List).map((e) => GuildFolders15.fromJson(e)).toList();
    guildPositions = json["guild_positions"] == null ? null : List<String>.from(json["guild_positions"]);
    inlineAttachmentMedia = json["inline_attachment_media"];
    inlineEmbedMedia = json["inline_embed_media"];
    locale = json["locale"];
    messageDisplayCompact = json["message_display_compact"];
    nativePhoneIntegrationEnabled = json["native_phone_integration_enabled"];
    renderEmbeds = json["render_embeds"];
    renderReactions = json["render_reactions"];
    restrictedGuilds = json["restricted_guilds"] == null ? null : List<String>.from(json["restricted_guilds"]);
    showCurrentGame = json["show_current_game"];
    status = json["status"];
    streamNotificationsEnabled = json["stream_notifications_enabled"];
    theme = json["theme"];
    timezoneOffset = json["timezone_offset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["afk_timeout"] = afkTimeout;
    _data["allow_accessibility_detection"] = allowAccessibilityDetection;
    _data["animate_emoji"] = animateEmoji;
    _data["animate_stickers"] = animateStickers;
    _data["contact_sync_enabled"] = contactSyncEnabled;
    _data["convert_emoticons"] = convertEmoticons;
    if(customStatus != null) {
      _data["custom_status"] = customStatus?.toJson();
    }
    _data["default_guilds_restricted"] = defaultGuildsRestricted;
    _data["detect_platform_accounts"] = detectPlatformAccounts;
    _data["developer_mode"] = developerMode;
    _data["disable_games_tab"] = disableGamesTab;
    _data["enable_tts_command"] = enableTtsCommand;
    _data["explicit_content_filter"] = explicitContentFilter;
    if(friendSourceFlags != null) {
      _data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    _data["gateway_connected"] = gatewayConnected;
    _data["gif_auto_play"] = gifAutoPlay;
    if(guildFolders != null) {
      _data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if(guildPositions != null) {
      _data["guild_positions"] = guildPositions;
    }
    _data["inline_attachment_media"] = inlineAttachmentMedia;
    _data["inline_embed_media"] = inlineEmbedMedia;
    _data["locale"] = locale;
    _data["message_display_compact"] = messageDisplayCompact;
    _data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    _data["render_embeds"] = renderEmbeds;
    _data["render_reactions"] = renderReactions;
    if(restrictedGuilds != null) {
      _data["restricted_guilds"] = restrictedGuilds;
    }
    _data["show_current_game"] = showCurrentGame;
    _data["status"] = status;
    _data["stream_notifications_enabled"] = streamNotificationsEnabled;
    _data["theme"] = theme;
    _data["timezone_offset"] = timezoneOffset;
    return _data;
  }
}

class GuildFolders15 {
  int? color;
  List<String>? guildIds;
  int? id;
  String? name;

  GuildFolders15({this.color, this.guildIds, this.id, this.name});

  GuildFolders15.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    guildIds = json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    if(guildIds != null) {
      _data["guild_ids"] = guildIds;
    }
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class FriendSourceFlags15 {
  bool? all;

  FriendSourceFlags15({this.all});

  FriendSourceFlags15.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["all"] = all;
    return _data;
  }
}

class CustomStatus15 {
  String? emojiId;
  String? emojiName;
  int? expiresAt;
  String? text;

  CustomStatus15({this.emojiId, this.emojiName, this.expiresAt, this.text});

  CustomStatus15.fromJson(Map<String, dynamic> json) {
    emojiId = json["emoji_id"];
    emojiName = json["emoji_name"];
    expiresAt = json["expires_at"];
    text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["emoji_id"] = emojiId;
    _data["emoji_name"] = emojiName;
    _data["expires_at"] = expiresAt;
    _data["text"] = text;
    return _data;
  }
}

class Data15 {
  String? validTokensSince;
  String? hash;

  Data15({this.validTokensSince, this.hash});

  Data15.fromJson(Map<String, dynamic> json) {
    validTokensSince = json["valid_tokens_since"];
    hash = json["hash"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["valid_tokens_since"] = validTokensSince;
    _data["hash"] = hash;
    return _data;
  }
}

class ConnectedAccounts15 {
  String? externalId;
  String? userId;
  String? user;
  bool? friendSync;
  String? name;
  bool? revoked;
  int? showActivity;
  String? type;
  bool? verified;
  int? visibility;
  List<String>? integrations;
  dynamic metadata;
  int? metadataVisibility;
  bool? twoWayLink;
  TokenData15? tokenData;
  String? id;

  ConnectedAccounts15({this.externalId, this.userId, this.user, this.friendSync, this.name, this.revoked, this.showActivity, this.type, this.verified, this.visibility, this.integrations, this.metadata, this.metadataVisibility, this.twoWayLink, this.tokenData, this.id});

  ConnectedAccounts15.fromJson(Map<String, dynamic> json) {
    externalId = json["external_id"];
    userId = json["user_id"];
    user = json["user"];
    friendSync = json["friend_sync"];
    name = json["name"];
    revoked = json["revoked"];
    showActivity = json["show_activity"];
    type = json["type"];
    verified = json["verified"];
    visibility = json["visibility"];
    integrations = json["integrations"] == null ? null : List<String>.from(json["integrations"]);
    metadata = json["metadata_"];
    metadataVisibility = json["metadata_visibility"];
    twoWayLink = json["two_way_link"];
    tokenData = json["token_data"] == null ? null : TokenData15.fromJson(json["token_data"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["external_id"] = externalId;
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["friend_sync"] = friendSync;
    _data["name"] = name;
    _data["revoked"] = revoked;
    _data["show_activity"] = showActivity;
    _data["type"] = type;
    _data["verified"] = verified;
    _data["visibility"] = visibility;
    if(integrations != null) {
      _data["integrations"] = integrations;
    }
    _data["metadata_"] = metadata;
    _data["metadata_visibility"] = metadataVisibility;
    _data["two_way_link"] = twoWayLink;
    if(tokenData != null) {
      _data["token_data"] = tokenData?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class TokenData15 {
  String? accessToken;
  String? tokenType;
  String? scope;
  String? refreshToken;
  int? expiresIn;
  int? expiresAt;
  int? fetchedAt;

  TokenData15({this.accessToken, this.tokenType, this.scope, this.refreshToken, this.expiresIn, this.expiresAt, this.fetchedAt});

  TokenData15.fromJson(Map<String, dynamic> json) {
    accessToken = json["access_token"];
    tokenType = json["token_type"];
    scope = json["scope"];
    refreshToken = json["refresh_token"];
    expiresIn = json["expires_in"];
    expiresAt = json["expires_at"];
    fetchedAt = json["fetched_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    _data["token_type"] = tokenType;
    _data["scope"] = scope;
    _data["refresh_token"] = refreshToken;
    _data["expires_in"] = expiresIn;
    _data["expires_at"] = expiresAt;
    _data["fetched_at"] = fetchedAt;
    return _data;
  }
}

class Relationships15 {
  String? fromId;
  String? from;
  String? toId;
  String? to;
  String? nickname;
  int? type;
  String? id;

  Relationships15({this.fromId, this.from, this.toId, this.to, this.nickname, this.type, this.id});

  Relationships15.fromJson(Map<String, dynamic> json) {
    fromId = json["from_id"];
    from = json["from"];
    toId = json["to_id"];
    to = json["to"];
    nickname = json["nickname"];
    type = json["type"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["from_id"] = fromId;
    _data["from"] = from;
    _data["to_id"] = toId;
    _data["to"] = to;
    _data["nickname"] = nickname;
    _data["type"] = type;
    _data["id"] = id;
    return _data;
  }
}

class Sessions15 {
  String? userId;
  String? user;
  String? sessionId;
  List<Activities15>? activities;
  ClientInfo15? clientInfo;
  String? status;
  String? id;

  Sessions15({this.userId, this.user, this.sessionId, this.activities, this.clientInfo, this.status, this.id});

  Sessions15.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    sessionId = json["session_id"];
    activities = json["activities"] == null ? null : (json["activities"] as List).map((e) => Activities15.fromJson(e)).toList();
    clientInfo = json["client_info"] == null ? null : ClientInfo15.fromJson(json["client_info"]);
    status = json["status"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["session_id"] = sessionId;
    if(activities != null) {
      _data["activities"] = activities?.map((e) => e.toJson()).toList();
    }
    if(clientInfo != null) {
      _data["client_info"] = clientInfo?.toJson();
    }
    _data["status"] = status;
    _data["id"] = id;
    return _data;
  }
}

class ClientInfo15 {
  String? client;
  String? os;
  int? version;

  ClientInfo15({this.client, this.os, this.version});

  ClientInfo15.fromJson(Map<String, dynamic> json) {
    client = json["client"];
    os = json["os"];
    version = json["version"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["client"] = client;
    _data["os"] = os;
    _data["version"] = version;
    return _data;
  }
}

class Activities15 {
  String? name;
  int? type;
  String? url;
  int? createdAt;
  Timestamps15? timestamps;
  String? applicationId;
  String? details;
  String? state;
  Emoji15? emoji;
  Party15? party;
  Assets15? assets;
  Secrets15? secrets;
  bool? instance;
  String? flags;
  String? id;
  String? syncId;
  Metadata15? metadata;
  String? sessionId;

  Activities15({this.name, this.type, this.url, this.createdAt, this.timestamps, this.applicationId, this.details, this.state, this.emoji, this.party, this.assets, this.secrets, this.instance, this.flags, this.id, this.syncId, this.metadata, this.sessionId});

  Activities15.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    type = json["type"];
    url = json["url"];
    createdAt = json["created_at"];
    timestamps = json["timestamps"] == null ? null : Timestamps15.fromJson(json["timestamps"]);
    applicationId = json["application_id"];
    details = json["details"];
    state = json["state"];
    emoji = json["emoji"] == null ? null : Emoji15.fromJson(json["emoji"]);
    party = json["party"] == null ? null : Party15.fromJson(json["party"]);
    assets = json["assets"] == null ? null : Assets15.fromJson(json["assets"]);
    secrets = json["secrets"] == null ? null : Secrets15.fromJson(json["secrets"]);
    instance = json["instance"];
    flags = json["flags"];
    id = json["id"];
    syncId = json["sync_id"];
    metadata = json["metadata"] == null ? null : Metadata15.fromJson(json["metadata"]);
    sessionId = json["session_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["type"] = type;
    _data["url"] = url;
    _data["created_at"] = createdAt;
    if(timestamps != null) {
      _data["timestamps"] = timestamps?.toJson();
    }
    _data["application_id"] = applicationId;
    _data["details"] = details;
    _data["state"] = state;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    if(party != null) {
      _data["party"] = party?.toJson();
    }
    if(assets != null) {
      _data["assets"] = assets?.toJson();
    }
    if(secrets != null) {
      _data["secrets"] = secrets?.toJson();
    }
    _data["instance"] = instance;
    _data["flags"] = flags;
    _data["id"] = id;
    _data["sync_id"] = syncId;
    if(metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    _data["session_id"] = sessionId;
    return _data;
  }
}

class Metadata15 {
  String? contextUri;
  String? albumId;
  List<String>? artistIds;

  Metadata15({this.contextUri, this.albumId, this.artistIds});

  Metadata15.fromJson(Map<String, dynamic> json) {
    contextUri = json["context_uri"];
    albumId = json["album_id"];
    artistIds = json["artist_ids"] == null ? null : List<String>.from(json["artist_ids"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["context_uri"] = contextUri;
    _data["album_id"] = albumId;
    if(artistIds != null) {
      _data["artist_ids"] = artistIds;
    }
    return _data;
  }
}

class Secrets15 {
  String? join;
  String? spectate;
  String? match;

  Secrets15({this.join, this.spectate, this.match});

  Secrets15.fromJson(Map<String, dynamic> json) {
    join = json["join"];
    spectate = json["spectate"];
    match = json["match"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["join"] = join;
    _data["spectate"] = spectate;
    _data["match"] = match;
    return _data;
  }
}

class Assets15 {
  String? largeImage;
  String? largeText;
  String? smallImage;
  String? smallText;

  Assets15({this.largeImage, this.largeText, this.smallImage, this.smallText});

  Assets15.fromJson(Map<String, dynamic> json) {
    largeImage = json["large_image"];
    largeText = json["large_text"];
    smallImage = json["small_image"];
    smallText = json["small_text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["large_image"] = largeImage;
    _data["large_text"] = largeText;
    _data["small_image"] = smallImage;
    _data["small_text"] = smallText;
    return _data;
  }
}

class Party15 {
  String? id;
  List<int>? size;

  Party15({this.id, this.size});

  Party15.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    size = json["size"] == null ? null : List<int>.from(json["size"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if(size != null) {
      _data["size"] = size;
    }
    return _data;
  }
}

class Emoji15 {
  String? name;
  String? id;
  bool? animated;

  Emoji15({this.name, this.id, this.animated});

  Emoji15.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["id"] = id;
    _data["animated"] = animated;
    return _data;
  }
}

class Timestamps15 {
  int? start;
  int? end;

  Timestamps15({this.start, this.end});

  Timestamps15.fromJson(Map<String, dynamic> json) {
    start = json["start"];
    end = json["end"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }
}

class Pack {
  String? name;
  String? description;
  String? bannerAssetId;
  List<String>? stickers;
  String? coverStickerId;
  String? coverSticker;
  String? id;

  Pack({this.name, this.description, this.bannerAssetId, this.stickers, this.coverStickerId, this.coverSticker, this.id});

  Pack.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    description = json["description"];
    bannerAssetId = json["banner_asset_id"];
    stickers = json["stickers"] == null ? null : List<String>.from(json["stickers"]);
    coverStickerId = json["cover_sticker_id"];
    coverSticker = json["cover_sticker"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["description"] = description;
    _data["banner_asset_id"] = bannerAssetId;
    if(stickers != null) {
      _data["stickers"] = stickers;
    }
    _data["cover_sticker_id"] = coverStickerId;
    _data["cover_sticker"] = coverSticker;
    _data["id"] = id;
    return _data;
  }
}

class MentionRoles {
  String? guildId;
  String? guild;
  int? color;
  bool? hoist;
  bool? managed;
  bool? mentionable;
  String? name;
  String? permissions;
  int? position;
  String? icon;
  String? unicodeEmoji;
  Tags1? tags;
  String? id;

  MentionRoles({this.guildId, this.guild, this.color, this.hoist, this.managed, this.mentionable, this.name, this.permissions, this.position, this.icon, this.unicodeEmoji, this.tags, this.id});

  MentionRoles.fromJson(Map<String, dynamic> json) {
    guildId = json["guild_id"];
    guild = json["guild"];
    color = json["color"];
    hoist = json["hoist"];
    managed = json["managed"];
    mentionable = json["mentionable"];
    name = json["name"];
    permissions = json["permissions"];
    position = json["position"];
    icon = json["icon"];
    unicodeEmoji = json["unicode_emoji"];
    tags = json["tags"] == null ? null : Tags1.fromJson(json["tags"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["guild_id"] = guildId;
    _data["guild"] = guild;
    _data["color"] = color;
    _data["hoist"] = hoist;
    _data["managed"] = managed;
    _data["mentionable"] = mentionable;
    _data["name"] = name;
    _data["permissions"] = permissions;
    _data["position"] = position;
    _data["icon"] = icon;
    _data["unicode_emoji"] = unicodeEmoji;
    if(tags != null) {
      _data["tags"] = tags?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class Tags1 {
  String? botId;
  String? integrationId;
  bool? premiumSubscriber;

  Tags1({this.botId, this.integrationId, this.premiumSubscriber});

  Tags1.fromJson(Map<String, dynamic> json) {
    botId = json["bot_id"];
    integrationId = json["integration_id"];
    premiumSubscriber = json["premium_subscriber"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["bot_id"] = botId;
    _data["integration_id"] = integrationId;
    _data["premium_subscriber"] = premiumSubscriber;
    return _data;
  }
}

class Mentions {
  String? username;
  String? discriminator;
  String? avatar;
  int? accentColor;
  String? banner;
  List<int>? themeColors;
  String? pronouns;
  String? phone;
  bool? desktop;
  bool? mobile;
  bool? premium;
  int? premiumType;
  bool? bot;
  String? bio;
  bool? system;
  bool? nsfwAllowed;
  bool? mfaEnabled;
  bool? webauthnEnabled;
  String? totpSecret;
  String? totpLastTicket;
  String? createdAt;
  String? premiumSince;
  bool? verified;
  bool? disabled;
  bool? deleted;
  String? email;
  String? flags;
  int? publicFlags;
  int? purchasedFlags;
  int? premiumUsageFlags;
  String? rights;
  List<Sessions14>? sessions;
  List<Relationships14>? relationships;
  List<ConnectedAccounts14>? connectedAccounts;
  Data14? data;
  List<String>? fingerprints;
  Settings15? settings;
  String? extendedSettings;
  List<SecurityKeys14>? securityKeys;
  String? id;

  Mentions({this.username, this.discriminator, this.avatar, this.accentColor, this.banner, this.themeColors, this.pronouns, this.phone, this.desktop, this.mobile, this.premium, this.premiumType, this.bot, this.bio, this.system, this.nsfwAllowed, this.mfaEnabled, this.webauthnEnabled, this.totpSecret, this.totpLastTicket, this.createdAt, this.premiumSince, this.verified, this.disabled, this.deleted, this.email, this.flags, this.publicFlags, this.purchasedFlags, this.premiumUsageFlags, this.rights, this.sessions, this.relationships, this.connectedAccounts, this.data, this.fingerprints, this.settings, this.extendedSettings, this.securityKeys, this.id});

  Mentions.fromJson(Map<String, dynamic> json) {
    username = json["username"];
    discriminator = json["discriminator"];
    avatar = json["avatar"];
    accentColor = json["accent_color"];
    banner = json["banner"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    phone = json["phone"];
    desktop = json["desktop"];
    mobile = json["mobile"];
    premium = json["premium"];
    premiumType = json["premium_type"];
    bot = json["bot"];
    bio = json["bio"];
    system = json["system"];
    nsfwAllowed = json["nsfw_allowed"];
    mfaEnabled = json["mfa_enabled"];
    webauthnEnabled = json["webauthn_enabled"];
    totpSecret = json["totp_secret"];
    totpLastTicket = json["totp_last_ticket"];
    createdAt = json["created_at"];
    premiumSince = json["premium_since"];
    verified = json["verified"];
    disabled = json["disabled"];
    deleted = json["deleted"];
    email = json["email"];
    flags = json["flags"];
    publicFlags = json["public_flags"];
    purchasedFlags = json["purchased_flags"];
    premiumUsageFlags = json["premium_usage_flags"];
    rights = json["rights"];
    sessions = json["sessions"] == null ? null : (json["sessions"] as List).map((e) => Sessions14.fromJson(e)).toList();
    relationships = json["relationships"] == null ? null : (json["relationships"] as List).map((e) => Relationships14.fromJson(e)).toList();
    connectedAccounts = json["connected_accounts"] == null ? null : (json["connected_accounts"] as List).map((e) => ConnectedAccounts14.fromJson(e)).toList();
    data = json["data"] == null ? null : Data14.fromJson(json["data"]);
    fingerprints = json["fingerprints"] == null ? null : List<String>.from(json["fingerprints"]);
    settings = json["settings"] == null ? null : Settings15.fromJson(json["settings"]);
    extendedSettings = json["extended_settings"];
    securityKeys = json["security_keys"] == null ? null : (json["security_keys"] as List).map((e) => SecurityKeys14.fromJson(e)).toList();
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["discriminator"] = discriminator;
    _data["avatar"] = avatar;
    _data["accent_color"] = accentColor;
    _data["banner"] = banner;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["phone"] = phone;
    _data["desktop"] = desktop;
    _data["mobile"] = mobile;
    _data["premium"] = premium;
    _data["premium_type"] = premiumType;
    _data["bot"] = bot;
    _data["bio"] = bio;
    _data["system"] = system;
    _data["nsfw_allowed"] = nsfwAllowed;
    _data["mfa_enabled"] = mfaEnabled;
    _data["webauthn_enabled"] = webauthnEnabled;
    _data["totp_secret"] = totpSecret;
    _data["totp_last_ticket"] = totpLastTicket;
    _data["created_at"] = createdAt;
    _data["premium_since"] = premiumSince;
    _data["verified"] = verified;
    _data["disabled"] = disabled;
    _data["deleted"] = deleted;
    _data["email"] = email;
    _data["flags"] = flags;
    _data["public_flags"] = publicFlags;
    _data["purchased_flags"] = purchasedFlags;
    _data["premium_usage_flags"] = premiumUsageFlags;
    _data["rights"] = rights;
    if(sessions != null) {
      _data["sessions"] = sessions?.map((e) => e.toJson()).toList();
    }
    if(relationships != null) {
      _data["relationships"] = relationships?.map((e) => e.toJson()).toList();
    }
    if(connectedAccounts != null) {
      _data["connected_accounts"] = connectedAccounts?.map((e) => e.toJson()).toList();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    if(fingerprints != null) {
      _data["fingerprints"] = fingerprints;
    }
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["extended_settings"] = extendedSettings;
    if(securityKeys != null) {
      _data["security_keys"] = securityKeys?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    return _data;
  }
}

class SecurityKeys14 {
  String? userId;
  String? user;
  String? keyId;
  String? publicKey;
  int? counter;
  String? name;
  String? id;

  SecurityKeys14({this.userId, this.user, this.keyId, this.publicKey, this.counter, this.name, this.id});

  SecurityKeys14.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    keyId = json["key_id"];
    publicKey = json["public_key"];
    counter = json["counter"];
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["key_id"] = keyId;
    _data["public_key"] = publicKey;
    _data["counter"] = counter;
    _data["name"] = name;
    _data["id"] = id;
    return _data;
  }
}

class Settings15 {
  String? index;
  int? afkTimeout;
  bool? allowAccessibilityDetection;
  bool? animateEmoji;
  int? animateStickers;
  bool? contactSyncEnabled;
  bool? convertEmoticons;
  CustomStatus14? customStatus;
  bool? defaultGuildsRestricted;
  bool? detectPlatformAccounts;
  bool? developerMode;
  bool? disableGamesTab;
  bool? enableTtsCommand;
  int? explicitContentFilter;
  FriendSourceFlags14? friendSourceFlags;
  bool? gatewayConnected;
  bool? gifAutoPlay;
  List<GuildFolders14>? guildFolders;
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

  Settings15({this.index, this.afkTimeout, this.allowAccessibilityDetection, this.animateEmoji, this.animateStickers, this.contactSyncEnabled, this.convertEmoticons, this.customStatus, this.defaultGuildsRestricted, this.detectPlatformAccounts, this.developerMode, this.disableGamesTab, this.enableTtsCommand, this.explicitContentFilter, this.friendSourceFlags, this.gatewayConnected, this.gifAutoPlay, this.guildFolders, this.guildPositions, this.inlineAttachmentMedia, this.inlineEmbedMedia, this.locale, this.messageDisplayCompact, this.nativePhoneIntegrationEnabled, this.renderEmbeds, this.renderReactions, this.restrictedGuilds, this.showCurrentGame, this.status, this.streamNotificationsEnabled, this.theme, this.timezoneOffset});

  Settings15.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    afkTimeout = json["afk_timeout"];
    allowAccessibilityDetection = json["allow_accessibility_detection"];
    animateEmoji = json["animate_emoji"];
    animateStickers = json["animate_stickers"];
    contactSyncEnabled = json["contact_sync_enabled"];
    convertEmoticons = json["convert_emoticons"];
    customStatus = json["custom_status"] == null ? null : CustomStatus14.fromJson(json["custom_status"]);
    defaultGuildsRestricted = json["default_guilds_restricted"];
    detectPlatformAccounts = json["detect_platform_accounts"];
    developerMode = json["developer_mode"];
    disableGamesTab = json["disable_games_tab"];
    enableTtsCommand = json["enable_tts_command"];
    explicitContentFilter = json["explicit_content_filter"];
    friendSourceFlags = json["friend_source_flags"] == null ? null : FriendSourceFlags14.fromJson(json["friend_source_flags"]);
    gatewayConnected = json["gateway_connected"];
    gifAutoPlay = json["gif_auto_play"];
    guildFolders = json["guild_folders"] == null ? null : (json["guild_folders"] as List).map((e) => GuildFolders14.fromJson(e)).toList();
    guildPositions = json["guild_positions"] == null ? null : List<String>.from(json["guild_positions"]);
    inlineAttachmentMedia = json["inline_attachment_media"];
    inlineEmbedMedia = json["inline_embed_media"];
    locale = json["locale"];
    messageDisplayCompact = json["message_display_compact"];
    nativePhoneIntegrationEnabled = json["native_phone_integration_enabled"];
    renderEmbeds = json["render_embeds"];
    renderReactions = json["render_reactions"];
    restrictedGuilds = json["restricted_guilds"] == null ? null : List<String>.from(json["restricted_guilds"]);
    showCurrentGame = json["show_current_game"];
    status = json["status"];
    streamNotificationsEnabled = json["stream_notifications_enabled"];
    theme = json["theme"];
    timezoneOffset = json["timezone_offset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["afk_timeout"] = afkTimeout;
    _data["allow_accessibility_detection"] = allowAccessibilityDetection;
    _data["animate_emoji"] = animateEmoji;
    _data["animate_stickers"] = animateStickers;
    _data["contact_sync_enabled"] = contactSyncEnabled;
    _data["convert_emoticons"] = convertEmoticons;
    if(customStatus != null) {
      _data["custom_status"] = customStatus?.toJson();
    }
    _data["default_guilds_restricted"] = defaultGuildsRestricted;
    _data["detect_platform_accounts"] = detectPlatformAccounts;
    _data["developer_mode"] = developerMode;
    _data["disable_games_tab"] = disableGamesTab;
    _data["enable_tts_command"] = enableTtsCommand;
    _data["explicit_content_filter"] = explicitContentFilter;
    if(friendSourceFlags != null) {
      _data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    _data["gateway_connected"] = gatewayConnected;
    _data["gif_auto_play"] = gifAutoPlay;
    if(guildFolders != null) {
      _data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if(guildPositions != null) {
      _data["guild_positions"] = guildPositions;
    }
    _data["inline_attachment_media"] = inlineAttachmentMedia;
    _data["inline_embed_media"] = inlineEmbedMedia;
    _data["locale"] = locale;
    _data["message_display_compact"] = messageDisplayCompact;
    _data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    _data["render_embeds"] = renderEmbeds;
    _data["render_reactions"] = renderReactions;
    if(restrictedGuilds != null) {
      _data["restricted_guilds"] = restrictedGuilds;
    }
    _data["show_current_game"] = showCurrentGame;
    _data["status"] = status;
    _data["stream_notifications_enabled"] = streamNotificationsEnabled;
    _data["theme"] = theme;
    _data["timezone_offset"] = timezoneOffset;
    return _data;
  }
}

class GuildFolders14 {
  int? color;
  List<String>? guildIds;
  int? id;
  String? name;

  GuildFolders14({this.color, this.guildIds, this.id, this.name});

  GuildFolders14.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    guildIds = json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    if(guildIds != null) {
      _data["guild_ids"] = guildIds;
    }
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class FriendSourceFlags14 {
  bool? all;

  FriendSourceFlags14({this.all});

  FriendSourceFlags14.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["all"] = all;
    return _data;
  }
}

class CustomStatus14 {
  String? emojiId;
  String? emojiName;
  int? expiresAt;
  String? text;

  CustomStatus14({this.emojiId, this.emojiName, this.expiresAt, this.text});

  CustomStatus14.fromJson(Map<String, dynamic> json) {
    emojiId = json["emoji_id"];
    emojiName = json["emoji_name"];
    expiresAt = json["expires_at"];
    text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["emoji_id"] = emojiId;
    _data["emoji_name"] = emojiName;
    _data["expires_at"] = expiresAt;
    _data["text"] = text;
    return _data;
  }
}

class Data14 {
  String? validTokensSince;
  String? hash;

  Data14({this.validTokensSince, this.hash});

  Data14.fromJson(Map<String, dynamic> json) {
    validTokensSince = json["valid_tokens_since"];
    hash = json["hash"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["valid_tokens_since"] = validTokensSince;
    _data["hash"] = hash;
    return _data;
  }
}

class ConnectedAccounts14 {
  String? externalId;
  String? userId;
  String? user;
  bool? friendSync;
  String? name;
  bool? revoked;
  int? showActivity;
  String? type;
  bool? verified;
  int? visibility;
  List<String>? integrations;
  dynamic metadata;
  int? metadataVisibility;
  bool? twoWayLink;
  TokenData14? tokenData;
  String? id;

  ConnectedAccounts14({this.externalId, this.userId, this.user, this.friendSync, this.name, this.revoked, this.showActivity, this.type, this.verified, this.visibility, this.integrations, this.metadata, this.metadataVisibility, this.twoWayLink, this.tokenData, this.id});

  ConnectedAccounts14.fromJson(Map<String, dynamic> json) {
    externalId = json["external_id"];
    userId = json["user_id"];
    user = json["user"];
    friendSync = json["friend_sync"];
    name = json["name"];
    revoked = json["revoked"];
    showActivity = json["show_activity"];
    type = json["type"];
    verified = json["verified"];
    visibility = json["visibility"];
    integrations = json["integrations"] == null ? null : List<String>.from(json["integrations"]);
    metadata = json["metadata_"];
    metadataVisibility = json["metadata_visibility"];
    twoWayLink = json["two_way_link"];
    tokenData = json["token_data"] == null ? null : TokenData14.fromJson(json["token_data"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["external_id"] = externalId;
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["friend_sync"] = friendSync;
    _data["name"] = name;
    _data["revoked"] = revoked;
    _data["show_activity"] = showActivity;
    _data["type"] = type;
    _data["verified"] = verified;
    _data["visibility"] = visibility;
    if(integrations != null) {
      _data["integrations"] = integrations;
    }
    _data["metadata_"] = metadata;
    _data["metadata_visibility"] = metadataVisibility;
    _data["two_way_link"] = twoWayLink;
    if(tokenData != null) {
      _data["token_data"] = tokenData?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class TokenData14 {
  String? accessToken;
  String? tokenType;
  String? scope;
  String? refreshToken;
  int? expiresIn;
  int? expiresAt;
  int? fetchedAt;

  TokenData14({this.accessToken, this.tokenType, this.scope, this.refreshToken, this.expiresIn, this.expiresAt, this.fetchedAt});

  TokenData14.fromJson(Map<String, dynamic> json) {
    accessToken = json["access_token"];
    tokenType = json["token_type"];
    scope = json["scope"];
    refreshToken = json["refresh_token"];
    expiresIn = json["expires_in"];
    expiresAt = json["expires_at"];
    fetchedAt = json["fetched_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    _data["token_type"] = tokenType;
    _data["scope"] = scope;
    _data["refresh_token"] = refreshToken;
    _data["expires_in"] = expiresIn;
    _data["expires_at"] = expiresAt;
    _data["fetched_at"] = fetchedAt;
    return _data;
  }
}

class Relationships14 {
  String? fromId;
  String? from;
  String? toId;
  String? to;
  String? nickname;
  int? type;
  String? id;

  Relationships14({this.fromId, this.from, this.toId, this.to, this.nickname, this.type, this.id});

  Relationships14.fromJson(Map<String, dynamic> json) {
    fromId = json["from_id"];
    from = json["from"];
    toId = json["to_id"];
    to = json["to"];
    nickname = json["nickname"];
    type = json["type"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["from_id"] = fromId;
    _data["from"] = from;
    _data["to_id"] = toId;
    _data["to"] = to;
    _data["nickname"] = nickname;
    _data["type"] = type;
    _data["id"] = id;
    return _data;
  }
}

class Sessions14 {
  String? userId;
  String? user;
  String? sessionId;
  List<Activities14>? activities;
  ClientInfo14? clientInfo;
  String? status;
  String? id;

  Sessions14({this.userId, this.user, this.sessionId, this.activities, this.clientInfo, this.status, this.id});

  Sessions14.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    sessionId = json["session_id"];
    activities = json["activities"] == null ? null : (json["activities"] as List).map((e) => Activities14.fromJson(e)).toList();
    clientInfo = json["client_info"] == null ? null : ClientInfo14.fromJson(json["client_info"]);
    status = json["status"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["session_id"] = sessionId;
    if(activities != null) {
      _data["activities"] = activities?.map((e) => e.toJson()).toList();
    }
    if(clientInfo != null) {
      _data["client_info"] = clientInfo?.toJson();
    }
    _data["status"] = status;
    _data["id"] = id;
    return _data;
  }
}

class ClientInfo14 {
  String? client;
  String? os;
  int? version;

  ClientInfo14({this.client, this.os, this.version});

  ClientInfo14.fromJson(Map<String, dynamic> json) {
    client = json["client"];
    os = json["os"];
    version = json["version"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["client"] = client;
    _data["os"] = os;
    _data["version"] = version;
    return _data;
  }
}

class Activities14 {
  String? name;
  int? type;
  String? url;
  int? createdAt;
  Timestamps14? timestamps;
  String? applicationId;
  String? details;
  String? state;
  Emoji14? emoji;
  Party14? party;
  Assets14? assets;
  Secrets14? secrets;
  bool? instance;
  String? flags;
  String? id;
  String? syncId;
  Metadata14? metadata;
  String? sessionId;

  Activities14({this.name, this.type, this.url, this.createdAt, this.timestamps, this.applicationId, this.details, this.state, this.emoji, this.party, this.assets, this.secrets, this.instance, this.flags, this.id, this.syncId, this.metadata, this.sessionId});

  Activities14.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    type = json["type"];
    url = json["url"];
    createdAt = json["created_at"];
    timestamps = json["timestamps"] == null ? null : Timestamps14.fromJson(json["timestamps"]);
    applicationId = json["application_id"];
    details = json["details"];
    state = json["state"];
    emoji = json["emoji"] == null ? null : Emoji14.fromJson(json["emoji"]);
    party = json["party"] == null ? null : Party14.fromJson(json["party"]);
    assets = json["assets"] == null ? null : Assets14.fromJson(json["assets"]);
    secrets = json["secrets"] == null ? null : Secrets14.fromJson(json["secrets"]);
    instance = json["instance"];
    flags = json["flags"];
    id = json["id"];
    syncId = json["sync_id"];
    metadata = json["metadata"] == null ? null : Metadata14.fromJson(json["metadata"]);
    sessionId = json["session_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["type"] = type;
    _data["url"] = url;
    _data["created_at"] = createdAt;
    if(timestamps != null) {
      _data["timestamps"] = timestamps?.toJson();
    }
    _data["application_id"] = applicationId;
    _data["details"] = details;
    _data["state"] = state;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    if(party != null) {
      _data["party"] = party?.toJson();
    }
    if(assets != null) {
      _data["assets"] = assets?.toJson();
    }
    if(secrets != null) {
      _data["secrets"] = secrets?.toJson();
    }
    _data["instance"] = instance;
    _data["flags"] = flags;
    _data["id"] = id;
    _data["sync_id"] = syncId;
    if(metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    _data["session_id"] = sessionId;
    return _data;
  }
}

class Metadata14 {
  String? contextUri;
  String? albumId;
  List<String>? artistIds;

  Metadata14({this.contextUri, this.albumId, this.artistIds});

  Metadata14.fromJson(Map<String, dynamic> json) {
    contextUri = json["context_uri"];
    albumId = json["album_id"];
    artistIds = json["artist_ids"] == null ? null : List<String>.from(json["artist_ids"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["context_uri"] = contextUri;
    _data["album_id"] = albumId;
    if(artistIds != null) {
      _data["artist_ids"] = artistIds;
    }
    return _data;
  }
}

class Secrets14 {
  String? join;
  String? spectate;
  String? match;

  Secrets14({this.join, this.spectate, this.match});

  Secrets14.fromJson(Map<String, dynamic> json) {
    join = json["join"];
    spectate = json["spectate"];
    match = json["match"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["join"] = join;
    _data["spectate"] = spectate;
    _data["match"] = match;
    return _data;
  }
}

class Assets14 {
  String? largeImage;
  String? largeText;
  String? smallImage;
  String? smallText;

  Assets14({this.largeImage, this.largeText, this.smallImage, this.smallText});

  Assets14.fromJson(Map<String, dynamic> json) {
    largeImage = json["large_image"];
    largeText = json["large_text"];
    smallImage = json["small_image"];
    smallText = json["small_text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["large_image"] = largeImage;
    _data["large_text"] = largeText;
    _data["small_image"] = smallImage;
    _data["small_text"] = smallText;
    return _data;
  }
}

class Party14 {
  String? id;
  List<int>? size;

  Party14({this.id, this.size});

  Party14.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    size = json["size"] == null ? null : List<int>.from(json["size"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if(size != null) {
      _data["size"] = size;
    }
    return _data;
  }
}

class Emoji14 {
  String? name;
  String? id;
  bool? animated;

  Emoji14({this.name, this.id, this.animated});

  Emoji14.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["id"] = id;
    _data["animated"] = animated;
    return _data;
  }
}

class Timestamps14 {
  int? start;
  int? end;

  Timestamps14({this.start, this.end});

  Timestamps14.fromJson(Map<String, dynamic> json) {
    start = json["start"];
    end = json["end"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }
}

class Application1 {
  String? name;
  String? icon;
  String? description;
  String? summary;
  Type1? type;
  bool? hook;
  bool? botPublic;
  bool? botRequireCodeGrant;
  String? verifyKey;
  Owner2? owner;
  int? flags;
  List<String>? redirectUris;
  int? rpcApplicationState;
  int? storeApplicationState;
  int? verificationState;
  String? interactionsEndpointUrl;
  bool? integrationPublic;
  bool? integrationRequireCodeGrant;
  int? discoverabilityState;
  int? discoveryEligibilityFlags;
  Bot1? bot;
  List<String>? tags;
  String? coverImage;
  InstallParams1? installParams;
  String? termsOfServiceUrl;
  String? privacyPolicyUrl;
  Team1? team;
  String? id;

  Application1({this.name, this.icon, this.description, this.summary, this.type, this.hook, this.botPublic, this.botRequireCodeGrant, this.verifyKey, this.owner, this.flags, this.redirectUris, this.rpcApplicationState, this.storeApplicationState, this.verificationState, this.interactionsEndpointUrl, this.integrationPublic, this.integrationRequireCodeGrant, this.discoverabilityState, this.discoveryEligibilityFlags, this.bot, this.tags, this.coverImage, this.installParams, this.termsOfServiceUrl, this.privacyPolicyUrl, this.team, this.id});

  Application1.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    icon = json["icon"];
    description = json["description"];
    summary = json["summary"];
    type = json["type"] == null ? null : Type1.fromJson(json["type"]);
    hook = json["hook"];
    botPublic = json["bot_public"];
    botRequireCodeGrant = json["bot_require_code_grant"];
    verifyKey = json["verify_key"];
    owner = json["owner"] == null ? null : Owner2.fromJson(json["owner"]);
    flags = json["flags"];
    redirectUris = json["redirect_uris"] == null ? null : List<String>.from(json["redirect_uris"]);
    rpcApplicationState = json["rpc_application_state"];
    storeApplicationState = json["store_application_state"];
    verificationState = json["verification_state"];
    interactionsEndpointUrl = json["interactions_endpoint_url"];
    integrationPublic = json["integration_public"];
    integrationRequireCodeGrant = json["integration_require_code_grant"];
    discoverabilityState = json["discoverability_state"];
    discoveryEligibilityFlags = json["discovery_eligibility_flags"];
    bot = json["bot"] == null ? null : Bot1.fromJson(json["bot"]);
    tags = json["tags"] == null ? null : List<String>.from(json["tags"]);
    coverImage = json["cover_image"];
    installParams = json["install_params"] == null ? null : InstallParams1.fromJson(json["install_params"]);
    termsOfServiceUrl = json["terms_of_service_url"];
    privacyPolicyUrl = json["privacy_policy_url"];
    team = json["team"] == null ? null : Team1.fromJson(json["team"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["icon"] = icon;
    _data["description"] = description;
    _data["summary"] = summary;
    if(type != null) {
      _data["type"] = type?.toJson();
    }
    _data["hook"] = hook;
    _data["bot_public"] = botPublic;
    _data["bot_require_code_grant"] = botRequireCodeGrant;
    _data["verify_key"] = verifyKey;
    if(owner != null) {
      _data["owner"] = owner?.toJson();
    }
    _data["flags"] = flags;
    if(redirectUris != null) {
      _data["redirect_uris"] = redirectUris;
    }
    _data["rpc_application_state"] = rpcApplicationState;
    _data["store_application_state"] = storeApplicationState;
    _data["verification_state"] = verificationState;
    _data["interactions_endpoint_url"] = interactionsEndpointUrl;
    _data["integration_public"] = integrationPublic;
    _data["integration_require_code_grant"] = integrationRequireCodeGrant;
    _data["discoverability_state"] = discoverabilityState;
    _data["discovery_eligibility_flags"] = discoveryEligibilityFlags;
    if(bot != null) {
      _data["bot"] = bot?.toJson();
    }
    if(tags != null) {
      _data["tags"] = tags;
    }
    _data["cover_image"] = coverImage;
    if(installParams != null) {
      _data["install_params"] = installParams?.toJson();
    }
    _data["terms_of_service_url"] = termsOfServiceUrl;
    _data["privacy_policy_url"] = privacyPolicyUrl;
    if(team != null) {
      _data["team"] = team?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class Team1 {
  String? icon;
  List<Members1>? members;
  String? name;
  String? ownerUserId;
  OwnerUser1? ownerUser;
  String? id;

  Team1({this.icon, this.members, this.name, this.ownerUserId, this.ownerUser, this.id});

  Team1.fromJson(Map<String, dynamic> json) {
    icon = json["icon"];
    members = json["members"] == null ? null : (json["members"] as List).map((e) => Members1.fromJson(e)).toList();
    name = json["name"];
    ownerUserId = json["owner_user_id"];
    ownerUser = json["owner_user"] == null ? null : OwnerUser1.fromJson(json["owner_user"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["icon"] = icon;
    if(members != null) {
      _data["members"] = members?.map((e) => e.toJson()).toList();
    }
    _data["name"] = name;
    _data["owner_user_id"] = ownerUserId;
    if(ownerUser != null) {
      _data["owner_user"] = ownerUser?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class OwnerUser1 {
  String? username;
  String? discriminator;
  String? avatar;
  int? accentColor;
  String? banner;
  List<int>? themeColors;
  String? pronouns;
  String? phone;
  bool? desktop;
  bool? mobile;
  bool? premium;
  int? premiumType;
  bool? bot;
  String? bio;
  bool? system;
  bool? nsfwAllowed;
  bool? mfaEnabled;
  bool? webauthnEnabled;
  String? totpSecret;
  String? totpLastTicket;
  String? createdAt;
  String? premiumSince;
  bool? verified;
  bool? disabled;
  bool? deleted;
  String? email;
  String? flags;
  int? publicFlags;
  int? purchasedFlags;
  int? premiumUsageFlags;
  String? rights;
  List<Sessions13>? sessions;
  List<Relationships13>? relationships;
  List<ConnectedAccounts13>? connectedAccounts;
  Data13? data;
  List<String>? fingerprints;
  Settings14? settings;
  String? extendedSettings;
  List<SecurityKeys13>? securityKeys;
  String? id;

  OwnerUser1({this.username, this.discriminator, this.avatar, this.accentColor, this.banner, this.themeColors, this.pronouns, this.phone, this.desktop, this.mobile, this.premium, this.premiumType, this.bot, this.bio, this.system, this.nsfwAllowed, this.mfaEnabled, this.webauthnEnabled, this.totpSecret, this.totpLastTicket, this.createdAt, this.premiumSince, this.verified, this.disabled, this.deleted, this.email, this.flags, this.publicFlags, this.purchasedFlags, this.premiumUsageFlags, this.rights, this.sessions, this.relationships, this.connectedAccounts, this.data, this.fingerprints, this.settings, this.extendedSettings, this.securityKeys, this.id});

  OwnerUser1.fromJson(Map<String, dynamic> json) {
    username = json["username"];
    discriminator = json["discriminator"];
    avatar = json["avatar"];
    accentColor = json["accent_color"];
    banner = json["banner"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    phone = json["phone"];
    desktop = json["desktop"];
    mobile = json["mobile"];
    premium = json["premium"];
    premiumType = json["premium_type"];
    bot = json["bot"];
    bio = json["bio"];
    system = json["system"];
    nsfwAllowed = json["nsfw_allowed"];
    mfaEnabled = json["mfa_enabled"];
    webauthnEnabled = json["webauthn_enabled"];
    totpSecret = json["totp_secret"];
    totpLastTicket = json["totp_last_ticket"];
    createdAt = json["created_at"];
    premiumSince = json["premium_since"];
    verified = json["verified"];
    disabled = json["disabled"];
    deleted = json["deleted"];
    email = json["email"];
    flags = json["flags"];
    publicFlags = json["public_flags"];
    purchasedFlags = json["purchased_flags"];
    premiumUsageFlags = json["premium_usage_flags"];
    rights = json["rights"];
    sessions = json["sessions"] == null ? null : (json["sessions"] as List).map((e) => Sessions13.fromJson(e)).toList();
    relationships = json["relationships"] == null ? null : (json["relationships"] as List).map((e) => Relationships13.fromJson(e)).toList();
    connectedAccounts = json["connected_accounts"] == null ? null : (json["connected_accounts"] as List).map((e) => ConnectedAccounts13.fromJson(e)).toList();
    data = json["data"] == null ? null : Data13.fromJson(json["data"]);
    fingerprints = json["fingerprints"] == null ? null : List<String>.from(json["fingerprints"]);
    settings = json["settings"] == null ? null : Settings14.fromJson(json["settings"]);
    extendedSettings = json["extended_settings"];
    securityKeys = json["security_keys"] == null ? null : (json["security_keys"] as List).map((e) => SecurityKeys13.fromJson(e)).toList();
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["discriminator"] = discriminator;
    _data["avatar"] = avatar;
    _data["accent_color"] = accentColor;
    _data["banner"] = banner;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["phone"] = phone;
    _data["desktop"] = desktop;
    _data["mobile"] = mobile;
    _data["premium"] = premium;
    _data["premium_type"] = premiumType;
    _data["bot"] = bot;
    _data["bio"] = bio;
    _data["system"] = system;
    _data["nsfw_allowed"] = nsfwAllowed;
    _data["mfa_enabled"] = mfaEnabled;
    _data["webauthn_enabled"] = webauthnEnabled;
    _data["totp_secret"] = totpSecret;
    _data["totp_last_ticket"] = totpLastTicket;
    _data["created_at"] = createdAt;
    _data["premium_since"] = premiumSince;
    _data["verified"] = verified;
    _data["disabled"] = disabled;
    _data["deleted"] = deleted;
    _data["email"] = email;
    _data["flags"] = flags;
    _data["public_flags"] = publicFlags;
    _data["purchased_flags"] = purchasedFlags;
    _data["premium_usage_flags"] = premiumUsageFlags;
    _data["rights"] = rights;
    if(sessions != null) {
      _data["sessions"] = sessions?.map((e) => e.toJson()).toList();
    }
    if(relationships != null) {
      _data["relationships"] = relationships?.map((e) => e.toJson()).toList();
    }
    if(connectedAccounts != null) {
      _data["connected_accounts"] = connectedAccounts?.map((e) => e.toJson()).toList();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    if(fingerprints != null) {
      _data["fingerprints"] = fingerprints;
    }
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["extended_settings"] = extendedSettings;
    if(securityKeys != null) {
      _data["security_keys"] = securityKeys?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    return _data;
  }
}

class SecurityKeys13 {
  String? userId;
  String? user;
  String? keyId;
  String? publicKey;
  int? counter;
  String? name;
  String? id;

  SecurityKeys13({this.userId, this.user, this.keyId, this.publicKey, this.counter, this.name, this.id});

  SecurityKeys13.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    keyId = json["key_id"];
    publicKey = json["public_key"];
    counter = json["counter"];
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["key_id"] = keyId;
    _data["public_key"] = publicKey;
    _data["counter"] = counter;
    _data["name"] = name;
    _data["id"] = id;
    return _data;
  }
}

class Settings14 {
  String? index;
  int? afkTimeout;
  bool? allowAccessibilityDetection;
  bool? animateEmoji;
  int? animateStickers;
  bool? contactSyncEnabled;
  bool? convertEmoticons;
  CustomStatus13? customStatus;
  bool? defaultGuildsRestricted;
  bool? detectPlatformAccounts;
  bool? developerMode;
  bool? disableGamesTab;
  bool? enableTtsCommand;
  int? explicitContentFilter;
  FriendSourceFlags13? friendSourceFlags;
  bool? gatewayConnected;
  bool? gifAutoPlay;
  List<GuildFolders13>? guildFolders;
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

  Settings14({this.index, this.afkTimeout, this.allowAccessibilityDetection, this.animateEmoji, this.animateStickers, this.contactSyncEnabled, this.convertEmoticons, this.customStatus, this.defaultGuildsRestricted, this.detectPlatformAccounts, this.developerMode, this.disableGamesTab, this.enableTtsCommand, this.explicitContentFilter, this.friendSourceFlags, this.gatewayConnected, this.gifAutoPlay, this.guildFolders, this.guildPositions, this.inlineAttachmentMedia, this.inlineEmbedMedia, this.locale, this.messageDisplayCompact, this.nativePhoneIntegrationEnabled, this.renderEmbeds, this.renderReactions, this.restrictedGuilds, this.showCurrentGame, this.status, this.streamNotificationsEnabled, this.theme, this.timezoneOffset});

  Settings14.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    afkTimeout = json["afk_timeout"];
    allowAccessibilityDetection = json["allow_accessibility_detection"];
    animateEmoji = json["animate_emoji"];
    animateStickers = json["animate_stickers"];
    contactSyncEnabled = json["contact_sync_enabled"];
    convertEmoticons = json["convert_emoticons"];
    customStatus = json["custom_status"] == null ? null : CustomStatus13.fromJson(json["custom_status"]);
    defaultGuildsRestricted = json["default_guilds_restricted"];
    detectPlatformAccounts = json["detect_platform_accounts"];
    developerMode = json["developer_mode"];
    disableGamesTab = json["disable_games_tab"];
    enableTtsCommand = json["enable_tts_command"];
    explicitContentFilter = json["explicit_content_filter"];
    friendSourceFlags = json["friend_source_flags"] == null ? null : FriendSourceFlags13.fromJson(json["friend_source_flags"]);
    gatewayConnected = json["gateway_connected"];
    gifAutoPlay = json["gif_auto_play"];
    guildFolders = json["guild_folders"] == null ? null : (json["guild_folders"] as List).map((e) => GuildFolders13.fromJson(e)).toList();
    guildPositions = json["guild_positions"] == null ? null : List<String>.from(json["guild_positions"]);
    inlineAttachmentMedia = json["inline_attachment_media"];
    inlineEmbedMedia = json["inline_embed_media"];
    locale = json["locale"];
    messageDisplayCompact = json["message_display_compact"];
    nativePhoneIntegrationEnabled = json["native_phone_integration_enabled"];
    renderEmbeds = json["render_embeds"];
    renderReactions = json["render_reactions"];
    restrictedGuilds = json["restricted_guilds"] == null ? null : List<String>.from(json["restricted_guilds"]);
    showCurrentGame = json["show_current_game"];
    status = json["status"];
    streamNotificationsEnabled = json["stream_notifications_enabled"];
    theme = json["theme"];
    timezoneOffset = json["timezone_offset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["afk_timeout"] = afkTimeout;
    _data["allow_accessibility_detection"] = allowAccessibilityDetection;
    _data["animate_emoji"] = animateEmoji;
    _data["animate_stickers"] = animateStickers;
    _data["contact_sync_enabled"] = contactSyncEnabled;
    _data["convert_emoticons"] = convertEmoticons;
    if(customStatus != null) {
      _data["custom_status"] = customStatus?.toJson();
    }
    _data["default_guilds_restricted"] = defaultGuildsRestricted;
    _data["detect_platform_accounts"] = detectPlatformAccounts;
    _data["developer_mode"] = developerMode;
    _data["disable_games_tab"] = disableGamesTab;
    _data["enable_tts_command"] = enableTtsCommand;
    _data["explicit_content_filter"] = explicitContentFilter;
    if(friendSourceFlags != null) {
      _data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    _data["gateway_connected"] = gatewayConnected;
    _data["gif_auto_play"] = gifAutoPlay;
    if(guildFolders != null) {
      _data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if(guildPositions != null) {
      _data["guild_positions"] = guildPositions;
    }
    _data["inline_attachment_media"] = inlineAttachmentMedia;
    _data["inline_embed_media"] = inlineEmbedMedia;
    _data["locale"] = locale;
    _data["message_display_compact"] = messageDisplayCompact;
    _data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    _data["render_embeds"] = renderEmbeds;
    _data["render_reactions"] = renderReactions;
    if(restrictedGuilds != null) {
      _data["restricted_guilds"] = restrictedGuilds;
    }
    _data["show_current_game"] = showCurrentGame;
    _data["status"] = status;
    _data["stream_notifications_enabled"] = streamNotificationsEnabled;
    _data["theme"] = theme;
    _data["timezone_offset"] = timezoneOffset;
    return _data;
  }
}

class GuildFolders13 {
  int? color;
  List<String>? guildIds;
  int? id;
  String? name;

  GuildFolders13({this.color, this.guildIds, this.id, this.name});

  GuildFolders13.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    guildIds = json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    if(guildIds != null) {
      _data["guild_ids"] = guildIds;
    }
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class FriendSourceFlags13 {
  bool? all;

  FriendSourceFlags13({this.all});

  FriendSourceFlags13.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["all"] = all;
    return _data;
  }
}

class CustomStatus13 {
  String? emojiId;
  String? emojiName;
  int? expiresAt;
  String? text;

  CustomStatus13({this.emojiId, this.emojiName, this.expiresAt, this.text});

  CustomStatus13.fromJson(Map<String, dynamic> json) {
    emojiId = json["emoji_id"];
    emojiName = json["emoji_name"];
    expiresAt = json["expires_at"];
    text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["emoji_id"] = emojiId;
    _data["emoji_name"] = emojiName;
    _data["expires_at"] = expiresAt;
    _data["text"] = text;
    return _data;
  }
}

class Data13 {
  String? validTokensSince;
  String? hash;

  Data13({this.validTokensSince, this.hash});

  Data13.fromJson(Map<String, dynamic> json) {
    validTokensSince = json["valid_tokens_since"];
    hash = json["hash"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["valid_tokens_since"] = validTokensSince;
    _data["hash"] = hash;
    return _data;
  }
}

class ConnectedAccounts13 {
  String? externalId;
  String? userId;
  String? user;
  bool? friendSync;
  String? name;
  bool? revoked;
  int? showActivity;
  String? type;
  bool? verified;
  int? visibility;
  List<String>? integrations;
  dynamic metadata;
  int? metadataVisibility;
  bool? twoWayLink;
  TokenData13? tokenData;
  String? id;

  ConnectedAccounts13({this.externalId, this.userId, this.user, this.friendSync, this.name, this.revoked, this.showActivity, this.type, this.verified, this.visibility, this.integrations, this.metadata, this.metadataVisibility, this.twoWayLink, this.tokenData, this.id});

  ConnectedAccounts13.fromJson(Map<String, dynamic> json) {
    externalId = json["external_id"];
    userId = json["user_id"];
    user = json["user"];
    friendSync = json["friend_sync"];
    name = json["name"];
    revoked = json["revoked"];
    showActivity = json["show_activity"];
    type = json["type"];
    verified = json["verified"];
    visibility = json["visibility"];
    integrations = json["integrations"] == null ? null : List<String>.from(json["integrations"]);
    metadata = json["metadata_"];
    metadataVisibility = json["metadata_visibility"];
    twoWayLink = json["two_way_link"];
    tokenData = json["token_data"] == null ? null : TokenData13.fromJson(json["token_data"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["external_id"] = externalId;
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["friend_sync"] = friendSync;
    _data["name"] = name;
    _data["revoked"] = revoked;
    _data["show_activity"] = showActivity;
    _data["type"] = type;
    _data["verified"] = verified;
    _data["visibility"] = visibility;
    if(integrations != null) {
      _data["integrations"] = integrations;
    }
    _data["metadata_"] = metadata;
    _data["metadata_visibility"] = metadataVisibility;
    _data["two_way_link"] = twoWayLink;
    if(tokenData != null) {
      _data["token_data"] = tokenData?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class TokenData13 {
  String? accessToken;
  String? tokenType;
  String? scope;
  String? refreshToken;
  int? expiresIn;
  int? expiresAt;
  int? fetchedAt;

  TokenData13({this.accessToken, this.tokenType, this.scope, this.refreshToken, this.expiresIn, this.expiresAt, this.fetchedAt});

  TokenData13.fromJson(Map<String, dynamic> json) {
    accessToken = json["access_token"];
    tokenType = json["token_type"];
    scope = json["scope"];
    refreshToken = json["refresh_token"];
    expiresIn = json["expires_in"];
    expiresAt = json["expires_at"];
    fetchedAt = json["fetched_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    _data["token_type"] = tokenType;
    _data["scope"] = scope;
    _data["refresh_token"] = refreshToken;
    _data["expires_in"] = expiresIn;
    _data["expires_at"] = expiresAt;
    _data["fetched_at"] = fetchedAt;
    return _data;
  }
}

class Relationships13 {
  String? fromId;
  String? from;
  String? toId;
  String? to;
  String? nickname;
  int? type;
  String? id;

  Relationships13({this.fromId, this.from, this.toId, this.to, this.nickname, this.type, this.id});

  Relationships13.fromJson(Map<String, dynamic> json) {
    fromId = json["from_id"];
    from = json["from"];
    toId = json["to_id"];
    to = json["to"];
    nickname = json["nickname"];
    type = json["type"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["from_id"] = fromId;
    _data["from"] = from;
    _data["to_id"] = toId;
    _data["to"] = to;
    _data["nickname"] = nickname;
    _data["type"] = type;
    _data["id"] = id;
    return _data;
  }
}

class Sessions13 {
  String? userId;
  String? user;
  String? sessionId;
  List<Activities13>? activities;
  ClientInfo13? clientInfo;
  String? status;
  String? id;

  Sessions13({this.userId, this.user, this.sessionId, this.activities, this.clientInfo, this.status, this.id});

  Sessions13.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    sessionId = json["session_id"];
    activities = json["activities"] == null ? null : (json["activities"] as List).map((e) => Activities13.fromJson(e)).toList();
    clientInfo = json["client_info"] == null ? null : ClientInfo13.fromJson(json["client_info"]);
    status = json["status"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["session_id"] = sessionId;
    if(activities != null) {
      _data["activities"] = activities?.map((e) => e.toJson()).toList();
    }
    if(clientInfo != null) {
      _data["client_info"] = clientInfo?.toJson();
    }
    _data["status"] = status;
    _data["id"] = id;
    return _data;
  }
}

class ClientInfo13 {
  String? client;
  String? os;
  int? version;

  ClientInfo13({this.client, this.os, this.version});

  ClientInfo13.fromJson(Map<String, dynamic> json) {
    client = json["client"];
    os = json["os"];
    version = json["version"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["client"] = client;
    _data["os"] = os;
    _data["version"] = version;
    return _data;
  }
}

class Activities13 {
  String? name;
  int? type;
  String? url;
  int? createdAt;
  Timestamps13? timestamps;
  String? applicationId;
  String? details;
  String? state;
  Emoji13? emoji;
  Party13? party;
  Assets13? assets;
  Secrets13? secrets;
  bool? instance;
  String? flags;
  String? id;
  String? syncId;
  Metadata13? metadata;
  String? sessionId;

  Activities13({this.name, this.type, this.url, this.createdAt, this.timestamps, this.applicationId, this.details, this.state, this.emoji, this.party, this.assets, this.secrets, this.instance, this.flags, this.id, this.syncId, this.metadata, this.sessionId});

  Activities13.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    type = json["type"];
    url = json["url"];
    createdAt = json["created_at"];
    timestamps = json["timestamps"] == null ? null : Timestamps13.fromJson(json["timestamps"]);
    applicationId = json["application_id"];
    details = json["details"];
    state = json["state"];
    emoji = json["emoji"] == null ? null : Emoji13.fromJson(json["emoji"]);
    party = json["party"] == null ? null : Party13.fromJson(json["party"]);
    assets = json["assets"] == null ? null : Assets13.fromJson(json["assets"]);
    secrets = json["secrets"] == null ? null : Secrets13.fromJson(json["secrets"]);
    instance = json["instance"];
    flags = json["flags"];
    id = json["id"];
    syncId = json["sync_id"];
    metadata = json["metadata"] == null ? null : Metadata13.fromJson(json["metadata"]);
    sessionId = json["session_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["type"] = type;
    _data["url"] = url;
    _data["created_at"] = createdAt;
    if(timestamps != null) {
      _data["timestamps"] = timestamps?.toJson();
    }
    _data["application_id"] = applicationId;
    _data["details"] = details;
    _data["state"] = state;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    if(party != null) {
      _data["party"] = party?.toJson();
    }
    if(assets != null) {
      _data["assets"] = assets?.toJson();
    }
    if(secrets != null) {
      _data["secrets"] = secrets?.toJson();
    }
    _data["instance"] = instance;
    _data["flags"] = flags;
    _data["id"] = id;
    _data["sync_id"] = syncId;
    if(metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    _data["session_id"] = sessionId;
    return _data;
  }
}

class Metadata13 {
  String? contextUri;
  String? albumId;
  List<String>? artistIds;

  Metadata13({this.contextUri, this.albumId, this.artistIds});

  Metadata13.fromJson(Map<String, dynamic> json) {
    contextUri = json["context_uri"];
    albumId = json["album_id"];
    artistIds = json["artist_ids"] == null ? null : List<String>.from(json["artist_ids"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["context_uri"] = contextUri;
    _data["album_id"] = albumId;
    if(artistIds != null) {
      _data["artist_ids"] = artistIds;
    }
    return _data;
  }
}

class Secrets13 {
  String? join;
  String? spectate;
  String? match;

  Secrets13({this.join, this.spectate, this.match});

  Secrets13.fromJson(Map<String, dynamic> json) {
    join = json["join"];
    spectate = json["spectate"];
    match = json["match"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["join"] = join;
    _data["spectate"] = spectate;
    _data["match"] = match;
    return _data;
  }
}

class Assets13 {
  String? largeImage;
  String? largeText;
  String? smallImage;
  String? smallText;

  Assets13({this.largeImage, this.largeText, this.smallImage, this.smallText});

  Assets13.fromJson(Map<String, dynamic> json) {
    largeImage = json["large_image"];
    largeText = json["large_text"];
    smallImage = json["small_image"];
    smallText = json["small_text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["large_image"] = largeImage;
    _data["large_text"] = largeText;
    _data["small_image"] = smallImage;
    _data["small_text"] = smallText;
    return _data;
  }
}

class Party13 {
  String? id;
  List<int>? size;

  Party13({this.id, this.size});

  Party13.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    size = json["size"] == null ? null : List<int>.from(json["size"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if(size != null) {
      _data["size"] = size;
    }
    return _data;
  }
}

class Emoji13 {
  String? name;
  String? id;
  bool? animated;

  Emoji13({this.name, this.id, this.animated});

  Emoji13.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["id"] = id;
    _data["animated"] = animated;
    return _data;
  }
}

class Timestamps13 {
  int? start;
  int? end;

  Timestamps13({this.start, this.end});

  Timestamps13.fromJson(Map<String, dynamic> json) {
    start = json["start"];
    end = json["end"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }
}

class Members1 {
  int? membershipState;
  List<String>? permissions;
  String? teamId;
  String? team;
  String? userId;
  User4? user;
  String? id;

  Members1({this.membershipState, this.permissions, this.teamId, this.team, this.userId, this.user, this.id});

  Members1.fromJson(Map<String, dynamic> json) {
    membershipState = json["membership_state"];
    permissions = json["permissions"] == null ? null : List<String>.from(json["permissions"]);
    teamId = json["team_id"];
    team = json["team"];
    userId = json["user_id"];
    user = json["user"] == null ? null : User4.fromJson(json["user"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["membership_state"] = membershipState;
    if(permissions != null) {
      _data["permissions"] = permissions;
    }
    _data["team_id"] = teamId;
    _data["team"] = team;
    _data["user_id"] = userId;
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class User4 {
  String? username;
  String? discriminator;
  String? avatar;
  int? accentColor;
  String? banner;
  List<int>? themeColors;
  String? pronouns;
  String? phone;
  bool? desktop;
  bool? mobile;
  bool? premium;
  int? premiumType;
  bool? bot;
  String? bio;
  bool? system;
  bool? nsfwAllowed;
  bool? mfaEnabled;
  bool? webauthnEnabled;
  String? totpSecret;
  String? totpLastTicket;
  String? createdAt;
  String? premiumSince;
  bool? verified;
  bool? disabled;
  bool? deleted;
  String? email;
  String? flags;
  int? publicFlags;
  int? purchasedFlags;
  int? premiumUsageFlags;
  String? rights;
  List<Sessions12>? sessions;
  List<Relationships12>? relationships;
  List<ConnectedAccounts12>? connectedAccounts;
  Data12? data;
  List<String>? fingerprints;
  Settings13? settings;
  String? extendedSettings;
  List<SecurityKeys12>? securityKeys;
  String? id;

  User4({this.username, this.discriminator, this.avatar, this.accentColor, this.banner, this.themeColors, this.pronouns, this.phone, this.desktop, this.mobile, this.premium, this.premiumType, this.bot, this.bio, this.system, this.nsfwAllowed, this.mfaEnabled, this.webauthnEnabled, this.totpSecret, this.totpLastTicket, this.createdAt, this.premiumSince, this.verified, this.disabled, this.deleted, this.email, this.flags, this.publicFlags, this.purchasedFlags, this.premiumUsageFlags, this.rights, this.sessions, this.relationships, this.connectedAccounts, this.data, this.fingerprints, this.settings, this.extendedSettings, this.securityKeys, this.id});

  User4.fromJson(Map<String, dynamic> json) {
    username = json["username"];
    discriminator = json["discriminator"];
    avatar = json["avatar"];
    accentColor = json["accent_color"];
    banner = json["banner"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    phone = json["phone"];
    desktop = json["desktop"];
    mobile = json["mobile"];
    premium = json["premium"];
    premiumType = json["premium_type"];
    bot = json["bot"];
    bio = json["bio"];
    system = json["system"];
    nsfwAllowed = json["nsfw_allowed"];
    mfaEnabled = json["mfa_enabled"];
    webauthnEnabled = json["webauthn_enabled"];
    totpSecret = json["totp_secret"];
    totpLastTicket = json["totp_last_ticket"];
    createdAt = json["created_at"];
    premiumSince = json["premium_since"];
    verified = json["verified"];
    disabled = json["disabled"];
    deleted = json["deleted"];
    email = json["email"];
    flags = json["flags"];
    publicFlags = json["public_flags"];
    purchasedFlags = json["purchased_flags"];
    premiumUsageFlags = json["premium_usage_flags"];
    rights = json["rights"];
    sessions = json["sessions"] == null ? null : (json["sessions"] as List).map((e) => Sessions12.fromJson(e)).toList();
    relationships = json["relationships"] == null ? null : (json["relationships"] as List).map((e) => Relationships12.fromJson(e)).toList();
    connectedAccounts = json["connected_accounts"] == null ? null : (json["connected_accounts"] as List).map((e) => ConnectedAccounts12.fromJson(e)).toList();
    data = json["data"] == null ? null : Data12.fromJson(json["data"]);
    fingerprints = json["fingerprints"] == null ? null : List<String>.from(json["fingerprints"]);
    settings = json["settings"] == null ? null : Settings13.fromJson(json["settings"]);
    extendedSettings = json["extended_settings"];
    securityKeys = json["security_keys"] == null ? null : (json["security_keys"] as List).map((e) => SecurityKeys12.fromJson(e)).toList();
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["discriminator"] = discriminator;
    _data["avatar"] = avatar;
    _data["accent_color"] = accentColor;
    _data["banner"] = banner;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["phone"] = phone;
    _data["desktop"] = desktop;
    _data["mobile"] = mobile;
    _data["premium"] = premium;
    _data["premium_type"] = premiumType;
    _data["bot"] = bot;
    _data["bio"] = bio;
    _data["system"] = system;
    _data["nsfw_allowed"] = nsfwAllowed;
    _data["mfa_enabled"] = mfaEnabled;
    _data["webauthn_enabled"] = webauthnEnabled;
    _data["totp_secret"] = totpSecret;
    _data["totp_last_ticket"] = totpLastTicket;
    _data["created_at"] = createdAt;
    _data["premium_since"] = premiumSince;
    _data["verified"] = verified;
    _data["disabled"] = disabled;
    _data["deleted"] = deleted;
    _data["email"] = email;
    _data["flags"] = flags;
    _data["public_flags"] = publicFlags;
    _data["purchased_flags"] = purchasedFlags;
    _data["premium_usage_flags"] = premiumUsageFlags;
    _data["rights"] = rights;
    if(sessions != null) {
      _data["sessions"] = sessions?.map((e) => e.toJson()).toList();
    }
    if(relationships != null) {
      _data["relationships"] = relationships?.map((e) => e.toJson()).toList();
    }
    if(connectedAccounts != null) {
      _data["connected_accounts"] = connectedAccounts?.map((e) => e.toJson()).toList();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    if(fingerprints != null) {
      _data["fingerprints"] = fingerprints;
    }
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["extended_settings"] = extendedSettings;
    if(securityKeys != null) {
      _data["security_keys"] = securityKeys?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    return _data;
  }
}

class SecurityKeys12 {
  String? userId;
  String? user;
  String? keyId;
  String? publicKey;
  int? counter;
  String? name;
  String? id;

  SecurityKeys12({this.userId, this.user, this.keyId, this.publicKey, this.counter, this.name, this.id});

  SecurityKeys12.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    keyId = json["key_id"];
    publicKey = json["public_key"];
    counter = json["counter"];
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["key_id"] = keyId;
    _data["public_key"] = publicKey;
    _data["counter"] = counter;
    _data["name"] = name;
    _data["id"] = id;
    return _data;
  }
}

class Settings13 {
  String? index;
  int? afkTimeout;
  bool? allowAccessibilityDetection;
  bool? animateEmoji;
  int? animateStickers;
  bool? contactSyncEnabled;
  bool? convertEmoticons;
  CustomStatus12? customStatus;
  bool? defaultGuildsRestricted;
  bool? detectPlatformAccounts;
  bool? developerMode;
  bool? disableGamesTab;
  bool? enableTtsCommand;
  int? explicitContentFilter;
  FriendSourceFlags12? friendSourceFlags;
  bool? gatewayConnected;
  bool? gifAutoPlay;
  List<GuildFolders12>? guildFolders;
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

  Settings13({this.index, this.afkTimeout, this.allowAccessibilityDetection, this.animateEmoji, this.animateStickers, this.contactSyncEnabled, this.convertEmoticons, this.customStatus, this.defaultGuildsRestricted, this.detectPlatformAccounts, this.developerMode, this.disableGamesTab, this.enableTtsCommand, this.explicitContentFilter, this.friendSourceFlags, this.gatewayConnected, this.gifAutoPlay, this.guildFolders, this.guildPositions, this.inlineAttachmentMedia, this.inlineEmbedMedia, this.locale, this.messageDisplayCompact, this.nativePhoneIntegrationEnabled, this.renderEmbeds, this.renderReactions, this.restrictedGuilds, this.showCurrentGame, this.status, this.streamNotificationsEnabled, this.theme, this.timezoneOffset});

  Settings13.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    afkTimeout = json["afk_timeout"];
    allowAccessibilityDetection = json["allow_accessibility_detection"];
    animateEmoji = json["animate_emoji"];
    animateStickers = json["animate_stickers"];
    contactSyncEnabled = json["contact_sync_enabled"];
    convertEmoticons = json["convert_emoticons"];
    customStatus = json["custom_status"] == null ? null : CustomStatus12.fromJson(json["custom_status"]);
    defaultGuildsRestricted = json["default_guilds_restricted"];
    detectPlatformAccounts = json["detect_platform_accounts"];
    developerMode = json["developer_mode"];
    disableGamesTab = json["disable_games_tab"];
    enableTtsCommand = json["enable_tts_command"];
    explicitContentFilter = json["explicit_content_filter"];
    friendSourceFlags = json["friend_source_flags"] == null ? null : FriendSourceFlags12.fromJson(json["friend_source_flags"]);
    gatewayConnected = json["gateway_connected"];
    gifAutoPlay = json["gif_auto_play"];
    guildFolders = json["guild_folders"] == null ? null : (json["guild_folders"] as List).map((e) => GuildFolders12.fromJson(e)).toList();
    guildPositions = json["guild_positions"] == null ? null : List<String>.from(json["guild_positions"]);
    inlineAttachmentMedia = json["inline_attachment_media"];
    inlineEmbedMedia = json["inline_embed_media"];
    locale = json["locale"];
    messageDisplayCompact = json["message_display_compact"];
    nativePhoneIntegrationEnabled = json["native_phone_integration_enabled"];
    renderEmbeds = json["render_embeds"];
    renderReactions = json["render_reactions"];
    restrictedGuilds = json["restricted_guilds"] == null ? null : List<String>.from(json["restricted_guilds"]);
    showCurrentGame = json["show_current_game"];
    status = json["status"];
    streamNotificationsEnabled = json["stream_notifications_enabled"];
    theme = json["theme"];
    timezoneOffset = json["timezone_offset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["afk_timeout"] = afkTimeout;
    _data["allow_accessibility_detection"] = allowAccessibilityDetection;
    _data["animate_emoji"] = animateEmoji;
    _data["animate_stickers"] = animateStickers;
    _data["contact_sync_enabled"] = contactSyncEnabled;
    _data["convert_emoticons"] = convertEmoticons;
    if(customStatus != null) {
      _data["custom_status"] = customStatus?.toJson();
    }
    _data["default_guilds_restricted"] = defaultGuildsRestricted;
    _data["detect_platform_accounts"] = detectPlatformAccounts;
    _data["developer_mode"] = developerMode;
    _data["disable_games_tab"] = disableGamesTab;
    _data["enable_tts_command"] = enableTtsCommand;
    _data["explicit_content_filter"] = explicitContentFilter;
    if(friendSourceFlags != null) {
      _data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    _data["gateway_connected"] = gatewayConnected;
    _data["gif_auto_play"] = gifAutoPlay;
    if(guildFolders != null) {
      _data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if(guildPositions != null) {
      _data["guild_positions"] = guildPositions;
    }
    _data["inline_attachment_media"] = inlineAttachmentMedia;
    _data["inline_embed_media"] = inlineEmbedMedia;
    _data["locale"] = locale;
    _data["message_display_compact"] = messageDisplayCompact;
    _data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    _data["render_embeds"] = renderEmbeds;
    _data["render_reactions"] = renderReactions;
    if(restrictedGuilds != null) {
      _data["restricted_guilds"] = restrictedGuilds;
    }
    _data["show_current_game"] = showCurrentGame;
    _data["status"] = status;
    _data["stream_notifications_enabled"] = streamNotificationsEnabled;
    _data["theme"] = theme;
    _data["timezone_offset"] = timezoneOffset;
    return _data;
  }
}

class GuildFolders12 {
  int? color;
  List<String>? guildIds;
  int? id;
  String? name;

  GuildFolders12({this.color, this.guildIds, this.id, this.name});

  GuildFolders12.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    guildIds = json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    if(guildIds != null) {
      _data["guild_ids"] = guildIds;
    }
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class FriendSourceFlags12 {
  bool? all;

  FriendSourceFlags12({this.all});

  FriendSourceFlags12.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["all"] = all;
    return _data;
  }
}

class CustomStatus12 {
  String? emojiId;
  String? emojiName;
  int? expiresAt;
  String? text;

  CustomStatus12({this.emojiId, this.emojiName, this.expiresAt, this.text});

  CustomStatus12.fromJson(Map<String, dynamic> json) {
    emojiId = json["emoji_id"];
    emojiName = json["emoji_name"];
    expiresAt = json["expires_at"];
    text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["emoji_id"] = emojiId;
    _data["emoji_name"] = emojiName;
    _data["expires_at"] = expiresAt;
    _data["text"] = text;
    return _data;
  }
}

class Data12 {
  String? validTokensSince;
  String? hash;

  Data12({this.validTokensSince, this.hash});

  Data12.fromJson(Map<String, dynamic> json) {
    validTokensSince = json["valid_tokens_since"];
    hash = json["hash"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["valid_tokens_since"] = validTokensSince;
    _data["hash"] = hash;
    return _data;
  }
}

class ConnectedAccounts12 {
  String? externalId;
  String? userId;
  String? user;
  bool? friendSync;
  String? name;
  bool? revoked;
  int? showActivity;
  String? type;
  bool? verified;
  int? visibility;
  List<String>? integrations;
  dynamic metadata;
  int? metadataVisibility;
  bool? twoWayLink;
  TokenData12? tokenData;
  String? id;

  ConnectedAccounts12({this.externalId, this.userId, this.user, this.friendSync, this.name, this.revoked, this.showActivity, this.type, this.verified, this.visibility, this.integrations, this.metadata, this.metadataVisibility, this.twoWayLink, this.tokenData, this.id});

  ConnectedAccounts12.fromJson(Map<String, dynamic> json) {
    externalId = json["external_id"];
    userId = json["user_id"];
    user = json["user"];
    friendSync = json["friend_sync"];
    name = json["name"];
    revoked = json["revoked"];
    showActivity = json["show_activity"];
    type = json["type"];
    verified = json["verified"];
    visibility = json["visibility"];
    integrations = json["integrations"] == null ? null : List<String>.from(json["integrations"]);
    metadata = json["metadata_"];
    metadataVisibility = json["metadata_visibility"];
    twoWayLink = json["two_way_link"];
    tokenData = json["token_data"] == null ? null : TokenData12.fromJson(json["token_data"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["external_id"] = externalId;
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["friend_sync"] = friendSync;
    _data["name"] = name;
    _data["revoked"] = revoked;
    _data["show_activity"] = showActivity;
    _data["type"] = type;
    _data["verified"] = verified;
    _data["visibility"] = visibility;
    if(integrations != null) {
      _data["integrations"] = integrations;
    }
    _data["metadata_"] = metadata;
    _data["metadata_visibility"] = metadataVisibility;
    _data["two_way_link"] = twoWayLink;
    if(tokenData != null) {
      _data["token_data"] = tokenData?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class TokenData12 {
  String? accessToken;
  String? tokenType;
  String? scope;
  String? refreshToken;
  int? expiresIn;
  int? expiresAt;
  int? fetchedAt;

  TokenData12({this.accessToken, this.tokenType, this.scope, this.refreshToken, this.expiresIn, this.expiresAt, this.fetchedAt});

  TokenData12.fromJson(Map<String, dynamic> json) {
    accessToken = json["access_token"];
    tokenType = json["token_type"];
    scope = json["scope"];
    refreshToken = json["refresh_token"];
    expiresIn = json["expires_in"];
    expiresAt = json["expires_at"];
    fetchedAt = json["fetched_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    _data["token_type"] = tokenType;
    _data["scope"] = scope;
    _data["refresh_token"] = refreshToken;
    _data["expires_in"] = expiresIn;
    _data["expires_at"] = expiresAt;
    _data["fetched_at"] = fetchedAt;
    return _data;
  }
}

class Relationships12 {
  String? fromId;
  String? from;
  String? toId;
  String? to;
  String? nickname;
  int? type;
  String? id;

  Relationships12({this.fromId, this.from, this.toId, this.to, this.nickname, this.type, this.id});

  Relationships12.fromJson(Map<String, dynamic> json) {
    fromId = json["from_id"];
    from = json["from"];
    toId = json["to_id"];
    to = json["to"];
    nickname = json["nickname"];
    type = json["type"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["from_id"] = fromId;
    _data["from"] = from;
    _data["to_id"] = toId;
    _data["to"] = to;
    _data["nickname"] = nickname;
    _data["type"] = type;
    _data["id"] = id;
    return _data;
  }
}

class Sessions12 {
  String? userId;
  String? user;
  String? sessionId;
  List<Activities12>? activities;
  ClientInfo12? clientInfo;
  String? status;
  String? id;

  Sessions12({this.userId, this.user, this.sessionId, this.activities, this.clientInfo, this.status, this.id});

  Sessions12.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    sessionId = json["session_id"];
    activities = json["activities"] == null ? null : (json["activities"] as List).map((e) => Activities12.fromJson(e)).toList();
    clientInfo = json["client_info"] == null ? null : ClientInfo12.fromJson(json["client_info"]);
    status = json["status"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["session_id"] = sessionId;
    if(activities != null) {
      _data["activities"] = activities?.map((e) => e.toJson()).toList();
    }
    if(clientInfo != null) {
      _data["client_info"] = clientInfo?.toJson();
    }
    _data["status"] = status;
    _data["id"] = id;
    return _data;
  }
}

class ClientInfo12 {
  String? client;
  String? os;
  int? version;

  ClientInfo12({this.client, this.os, this.version});

  ClientInfo12.fromJson(Map<String, dynamic> json) {
    client = json["client"];
    os = json["os"];
    version = json["version"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["client"] = client;
    _data["os"] = os;
    _data["version"] = version;
    return _data;
  }
}

class Activities12 {
  String? name;
  int? type;
  String? url;
  int? createdAt;
  Timestamps12? timestamps;
  String? applicationId;
  String? details;
  String? state;
  Emoji12? emoji;
  Party12? party;
  Assets12? assets;
  Secrets12? secrets;
  bool? instance;
  String? flags;
  String? id;
  String? syncId;
  Metadata12? metadata;
  String? sessionId;

  Activities12({this.name, this.type, this.url, this.createdAt, this.timestamps, this.applicationId, this.details, this.state, this.emoji, this.party, this.assets, this.secrets, this.instance, this.flags, this.id, this.syncId, this.metadata, this.sessionId});

  Activities12.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    type = json["type"];
    url = json["url"];
    createdAt = json["created_at"];
    timestamps = json["timestamps"] == null ? null : Timestamps12.fromJson(json["timestamps"]);
    applicationId = json["application_id"];
    details = json["details"];
    state = json["state"];
    emoji = json["emoji"] == null ? null : Emoji12.fromJson(json["emoji"]);
    party = json["party"] == null ? null : Party12.fromJson(json["party"]);
    assets = json["assets"] == null ? null : Assets12.fromJson(json["assets"]);
    secrets = json["secrets"] == null ? null : Secrets12.fromJson(json["secrets"]);
    instance = json["instance"];
    flags = json["flags"];
    id = json["id"];
    syncId = json["sync_id"];
    metadata = json["metadata"] == null ? null : Metadata12.fromJson(json["metadata"]);
    sessionId = json["session_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["type"] = type;
    _data["url"] = url;
    _data["created_at"] = createdAt;
    if(timestamps != null) {
      _data["timestamps"] = timestamps?.toJson();
    }
    _data["application_id"] = applicationId;
    _data["details"] = details;
    _data["state"] = state;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    if(party != null) {
      _data["party"] = party?.toJson();
    }
    if(assets != null) {
      _data["assets"] = assets?.toJson();
    }
    if(secrets != null) {
      _data["secrets"] = secrets?.toJson();
    }
    _data["instance"] = instance;
    _data["flags"] = flags;
    _data["id"] = id;
    _data["sync_id"] = syncId;
    if(metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    _data["session_id"] = sessionId;
    return _data;
  }
}

class Metadata12 {
  String? contextUri;
  String? albumId;
  List<String>? artistIds;

  Metadata12({this.contextUri, this.albumId, this.artistIds});

  Metadata12.fromJson(Map<String, dynamic> json) {
    contextUri = json["context_uri"];
    albumId = json["album_id"];
    artistIds = json["artist_ids"] == null ? null : List<String>.from(json["artist_ids"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["context_uri"] = contextUri;
    _data["album_id"] = albumId;
    if(artistIds != null) {
      _data["artist_ids"] = artistIds;
    }
    return _data;
  }
}

class Secrets12 {
  String? join;
  String? spectate;
  String? match;

  Secrets12({this.join, this.spectate, this.match});

  Secrets12.fromJson(Map<String, dynamic> json) {
    join = json["join"];
    spectate = json["spectate"];
    match = json["match"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["join"] = join;
    _data["spectate"] = spectate;
    _data["match"] = match;
    return _data;
  }
}

class Assets12 {
  String? largeImage;
  String? largeText;
  String? smallImage;
  String? smallText;

  Assets12({this.largeImage, this.largeText, this.smallImage, this.smallText});

  Assets12.fromJson(Map<String, dynamic> json) {
    largeImage = json["large_image"];
    largeText = json["large_text"];
    smallImage = json["small_image"];
    smallText = json["small_text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["large_image"] = largeImage;
    _data["large_text"] = largeText;
    _data["small_image"] = smallImage;
    _data["small_text"] = smallText;
    return _data;
  }
}

class Party12 {
  String? id;
  List<int>? size;

  Party12({this.id, this.size});

  Party12.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    size = json["size"] == null ? null : List<int>.from(json["size"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if(size != null) {
      _data["size"] = size;
    }
    return _data;
  }
}

class Emoji12 {
  String? name;
  String? id;
  bool? animated;

  Emoji12({this.name, this.id, this.animated});

  Emoji12.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["id"] = id;
    _data["animated"] = animated;
    return _data;
  }
}

class Timestamps12 {
  int? start;
  int? end;

  Timestamps12({this.start, this.end});

  Timestamps12.fromJson(Map<String, dynamic> json) {
    start = json["start"];
    end = json["end"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }
}

class InstallParams1 {
  List<String>? scopes;
  String? permissions;

  InstallParams1({this.scopes, this.permissions});

  InstallParams1.fromJson(Map<String, dynamic> json) {
    scopes = json["scopes"] == null ? null : List<String>.from(json["scopes"]);
    permissions = json["permissions"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(scopes != null) {
      _data["scopes"] = scopes;
    }
    _data["permissions"] = permissions;
    return _data;
  }
}

class Bot1 {
  String? username;
  String? discriminator;
  String? avatar;
  int? accentColor;
  String? banner;
  List<int>? themeColors;
  String? pronouns;
  String? phone;
  bool? desktop;
  bool? mobile;
  bool? premium;
  int? premiumType;
  bool? bot;
  String? bio;
  bool? system;
  bool? nsfwAllowed;
  bool? mfaEnabled;
  bool? webauthnEnabled;
  String? totpSecret;
  String? totpLastTicket;
  String? createdAt;
  String? premiumSince;
  bool? verified;
  bool? disabled;
  bool? deleted;
  String? email;
  String? flags;
  int? publicFlags;
  int? purchasedFlags;
  int? premiumUsageFlags;
  String? rights;
  List<Sessions11>? sessions;
  List<Relationships11>? relationships;
  List<ConnectedAccounts11>? connectedAccounts;
  Data11? data;
  List<String>? fingerprints;
  Settings12? settings;
  String? extendedSettings;
  List<SecurityKeys11>? securityKeys;
  String? id;

  Bot1({this.username, this.discriminator, this.avatar, this.accentColor, this.banner, this.themeColors, this.pronouns, this.phone, this.desktop, this.mobile, this.premium, this.premiumType, this.bot, this.bio, this.system, this.nsfwAllowed, this.mfaEnabled, this.webauthnEnabled, this.totpSecret, this.totpLastTicket, this.createdAt, this.premiumSince, this.verified, this.disabled, this.deleted, this.email, this.flags, this.publicFlags, this.purchasedFlags, this.premiumUsageFlags, this.rights, this.sessions, this.relationships, this.connectedAccounts, this.data, this.fingerprints, this.settings, this.extendedSettings, this.securityKeys, this.id});

  Bot1.fromJson(Map<String, dynamic> json) {
    username = json["username"];
    discriminator = json["discriminator"];
    avatar = json["avatar"];
    accentColor = json["accent_color"];
    banner = json["banner"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    phone = json["phone"];
    desktop = json["desktop"];
    mobile = json["mobile"];
    premium = json["premium"];
    premiumType = json["premium_type"];
    bot = json["bot"];
    bio = json["bio"];
    system = json["system"];
    nsfwAllowed = json["nsfw_allowed"];
    mfaEnabled = json["mfa_enabled"];
    webauthnEnabled = json["webauthn_enabled"];
    totpSecret = json["totp_secret"];
    totpLastTicket = json["totp_last_ticket"];
    createdAt = json["created_at"];
    premiumSince = json["premium_since"];
    verified = json["verified"];
    disabled = json["disabled"];
    deleted = json["deleted"];
    email = json["email"];
    flags = json["flags"];
    publicFlags = json["public_flags"];
    purchasedFlags = json["purchased_flags"];
    premiumUsageFlags = json["premium_usage_flags"];
    rights = json["rights"];
    sessions = json["sessions"] == null ? null : (json["sessions"] as List).map((e) => Sessions11.fromJson(e)).toList();
    relationships = json["relationships"] == null ? null : (json["relationships"] as List).map((e) => Relationships11.fromJson(e)).toList();
    connectedAccounts = json["connected_accounts"] == null ? null : (json["connected_accounts"] as List).map((e) => ConnectedAccounts11.fromJson(e)).toList();
    data = json["data"] == null ? null : Data11.fromJson(json["data"]);
    fingerprints = json["fingerprints"] == null ? null : List<String>.from(json["fingerprints"]);
    settings = json["settings"] == null ? null : Settings12.fromJson(json["settings"]);
    extendedSettings = json["extended_settings"];
    securityKeys = json["security_keys"] == null ? null : (json["security_keys"] as List).map((e) => SecurityKeys11.fromJson(e)).toList();
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["discriminator"] = discriminator;
    _data["avatar"] = avatar;
    _data["accent_color"] = accentColor;
    _data["banner"] = banner;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["phone"] = phone;
    _data["desktop"] = desktop;
    _data["mobile"] = mobile;
    _data["premium"] = premium;
    _data["premium_type"] = premiumType;
    _data["bot"] = bot;
    _data["bio"] = bio;
    _data["system"] = system;
    _data["nsfw_allowed"] = nsfwAllowed;
    _data["mfa_enabled"] = mfaEnabled;
    _data["webauthn_enabled"] = webauthnEnabled;
    _data["totp_secret"] = totpSecret;
    _data["totp_last_ticket"] = totpLastTicket;
    _data["created_at"] = createdAt;
    _data["premium_since"] = premiumSince;
    _data["verified"] = verified;
    _data["disabled"] = disabled;
    _data["deleted"] = deleted;
    _data["email"] = email;
    _data["flags"] = flags;
    _data["public_flags"] = publicFlags;
    _data["purchased_flags"] = purchasedFlags;
    _data["premium_usage_flags"] = premiumUsageFlags;
    _data["rights"] = rights;
    if(sessions != null) {
      _data["sessions"] = sessions?.map((e) => e.toJson()).toList();
    }
    if(relationships != null) {
      _data["relationships"] = relationships?.map((e) => e.toJson()).toList();
    }
    if(connectedAccounts != null) {
      _data["connected_accounts"] = connectedAccounts?.map((e) => e.toJson()).toList();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    if(fingerprints != null) {
      _data["fingerprints"] = fingerprints;
    }
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["extended_settings"] = extendedSettings;
    if(securityKeys != null) {
      _data["security_keys"] = securityKeys?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    return _data;
  }
}

class SecurityKeys11 {
  String? userId;
  String? user;
  String? keyId;
  String? publicKey;
  int? counter;
  String? name;
  String? id;

  SecurityKeys11({this.userId, this.user, this.keyId, this.publicKey, this.counter, this.name, this.id});

  SecurityKeys11.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    keyId = json["key_id"];
    publicKey = json["public_key"];
    counter = json["counter"];
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["key_id"] = keyId;
    _data["public_key"] = publicKey;
    _data["counter"] = counter;
    _data["name"] = name;
    _data["id"] = id;
    return _data;
  }
}

class Settings12 {
  String? index;
  int? afkTimeout;
  bool? allowAccessibilityDetection;
  bool? animateEmoji;
  int? animateStickers;
  bool? contactSyncEnabled;
  bool? convertEmoticons;
  CustomStatus11? customStatus;
  bool? defaultGuildsRestricted;
  bool? detectPlatformAccounts;
  bool? developerMode;
  bool? disableGamesTab;
  bool? enableTtsCommand;
  int? explicitContentFilter;
  FriendSourceFlags11? friendSourceFlags;
  bool? gatewayConnected;
  bool? gifAutoPlay;
  List<GuildFolders11>? guildFolders;
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

  Settings12({this.index, this.afkTimeout, this.allowAccessibilityDetection, this.animateEmoji, this.animateStickers, this.contactSyncEnabled, this.convertEmoticons, this.customStatus, this.defaultGuildsRestricted, this.detectPlatformAccounts, this.developerMode, this.disableGamesTab, this.enableTtsCommand, this.explicitContentFilter, this.friendSourceFlags, this.gatewayConnected, this.gifAutoPlay, this.guildFolders, this.guildPositions, this.inlineAttachmentMedia, this.inlineEmbedMedia, this.locale, this.messageDisplayCompact, this.nativePhoneIntegrationEnabled, this.renderEmbeds, this.renderReactions, this.restrictedGuilds, this.showCurrentGame, this.status, this.streamNotificationsEnabled, this.theme, this.timezoneOffset});

  Settings12.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    afkTimeout = json["afk_timeout"];
    allowAccessibilityDetection = json["allow_accessibility_detection"];
    animateEmoji = json["animate_emoji"];
    animateStickers = json["animate_stickers"];
    contactSyncEnabled = json["contact_sync_enabled"];
    convertEmoticons = json["convert_emoticons"];
    customStatus = json["custom_status"] == null ? null : CustomStatus11.fromJson(json["custom_status"]);
    defaultGuildsRestricted = json["default_guilds_restricted"];
    detectPlatformAccounts = json["detect_platform_accounts"];
    developerMode = json["developer_mode"];
    disableGamesTab = json["disable_games_tab"];
    enableTtsCommand = json["enable_tts_command"];
    explicitContentFilter = json["explicit_content_filter"];
    friendSourceFlags = json["friend_source_flags"] == null ? null : FriendSourceFlags11.fromJson(json["friend_source_flags"]);
    gatewayConnected = json["gateway_connected"];
    gifAutoPlay = json["gif_auto_play"];
    guildFolders = json["guild_folders"] == null ? null : (json["guild_folders"] as List).map((e) => GuildFolders11.fromJson(e)).toList();
    guildPositions = json["guild_positions"] == null ? null : List<String>.from(json["guild_positions"]);
    inlineAttachmentMedia = json["inline_attachment_media"];
    inlineEmbedMedia = json["inline_embed_media"];
    locale = json["locale"];
    messageDisplayCompact = json["message_display_compact"];
    nativePhoneIntegrationEnabled = json["native_phone_integration_enabled"];
    renderEmbeds = json["render_embeds"];
    renderReactions = json["render_reactions"];
    restrictedGuilds = json["restricted_guilds"] == null ? null : List<String>.from(json["restricted_guilds"]);
    showCurrentGame = json["show_current_game"];
    status = json["status"];
    streamNotificationsEnabled = json["stream_notifications_enabled"];
    theme = json["theme"];
    timezoneOffset = json["timezone_offset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["afk_timeout"] = afkTimeout;
    _data["allow_accessibility_detection"] = allowAccessibilityDetection;
    _data["animate_emoji"] = animateEmoji;
    _data["animate_stickers"] = animateStickers;
    _data["contact_sync_enabled"] = contactSyncEnabled;
    _data["convert_emoticons"] = convertEmoticons;
    if(customStatus != null) {
      _data["custom_status"] = customStatus?.toJson();
    }
    _data["default_guilds_restricted"] = defaultGuildsRestricted;
    _data["detect_platform_accounts"] = detectPlatformAccounts;
    _data["developer_mode"] = developerMode;
    _data["disable_games_tab"] = disableGamesTab;
    _data["enable_tts_command"] = enableTtsCommand;
    _data["explicit_content_filter"] = explicitContentFilter;
    if(friendSourceFlags != null) {
      _data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    _data["gateway_connected"] = gatewayConnected;
    _data["gif_auto_play"] = gifAutoPlay;
    if(guildFolders != null) {
      _data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if(guildPositions != null) {
      _data["guild_positions"] = guildPositions;
    }
    _data["inline_attachment_media"] = inlineAttachmentMedia;
    _data["inline_embed_media"] = inlineEmbedMedia;
    _data["locale"] = locale;
    _data["message_display_compact"] = messageDisplayCompact;
    _data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    _data["render_embeds"] = renderEmbeds;
    _data["render_reactions"] = renderReactions;
    if(restrictedGuilds != null) {
      _data["restricted_guilds"] = restrictedGuilds;
    }
    _data["show_current_game"] = showCurrentGame;
    _data["status"] = status;
    _data["stream_notifications_enabled"] = streamNotificationsEnabled;
    _data["theme"] = theme;
    _data["timezone_offset"] = timezoneOffset;
    return _data;
  }
}

class GuildFolders11 {
  int? color;
  List<String>? guildIds;
  int? id;
  String? name;

  GuildFolders11({this.color, this.guildIds, this.id, this.name});

  GuildFolders11.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    guildIds = json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    if(guildIds != null) {
      _data["guild_ids"] = guildIds;
    }
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class FriendSourceFlags11 {
  bool? all;

  FriendSourceFlags11({this.all});

  FriendSourceFlags11.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["all"] = all;
    return _data;
  }
}

class CustomStatus11 {
  String? emojiId;
  String? emojiName;
  int? expiresAt;
  String? text;

  CustomStatus11({this.emojiId, this.emojiName, this.expiresAt, this.text});

  CustomStatus11.fromJson(Map<String, dynamic> json) {
    emojiId = json["emoji_id"];
    emojiName = json["emoji_name"];
    expiresAt = json["expires_at"];
    text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["emoji_id"] = emojiId;
    _data["emoji_name"] = emojiName;
    _data["expires_at"] = expiresAt;
    _data["text"] = text;
    return _data;
  }
}

class Data11 {
  String? validTokensSince;
  String? hash;

  Data11({this.validTokensSince, this.hash});

  Data11.fromJson(Map<String, dynamic> json) {
    validTokensSince = json["valid_tokens_since"];
    hash = json["hash"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["valid_tokens_since"] = validTokensSince;
    _data["hash"] = hash;
    return _data;
  }
}

class ConnectedAccounts11 {
  String? externalId;
  String? userId;
  String? user;
  bool? friendSync;
  String? name;
  bool? revoked;
  int? showActivity;
  String? type;
  bool? verified;
  int? visibility;
  List<String>? integrations;
  dynamic metadata;
  int? metadataVisibility;
  bool? twoWayLink;
  TokenData11? tokenData;
  String? id;

  ConnectedAccounts11({this.externalId, this.userId, this.user, this.friendSync, this.name, this.revoked, this.showActivity, this.type, this.verified, this.visibility, this.integrations, this.metadata, this.metadataVisibility, this.twoWayLink, this.tokenData, this.id});

  ConnectedAccounts11.fromJson(Map<String, dynamic> json) {
    externalId = json["external_id"];
    userId = json["user_id"];
    user = json["user"];
    friendSync = json["friend_sync"];
    name = json["name"];
    revoked = json["revoked"];
    showActivity = json["show_activity"];
    type = json["type"];
    verified = json["verified"];
    visibility = json["visibility"];
    integrations = json["integrations"] == null ? null : List<String>.from(json["integrations"]);
    metadata = json["metadata_"];
    metadataVisibility = json["metadata_visibility"];
    twoWayLink = json["two_way_link"];
    tokenData = json["token_data"] == null ? null : TokenData11.fromJson(json["token_data"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["external_id"] = externalId;
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["friend_sync"] = friendSync;
    _data["name"] = name;
    _data["revoked"] = revoked;
    _data["show_activity"] = showActivity;
    _data["type"] = type;
    _data["verified"] = verified;
    _data["visibility"] = visibility;
    if(integrations != null) {
      _data["integrations"] = integrations;
    }
    _data["metadata_"] = metadata;
    _data["metadata_visibility"] = metadataVisibility;
    _data["two_way_link"] = twoWayLink;
    if(tokenData != null) {
      _data["token_data"] = tokenData?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class TokenData11 {
  String? accessToken;
  String? tokenType;
  String? scope;
  String? refreshToken;
  int? expiresIn;
  int? expiresAt;
  int? fetchedAt;

  TokenData11({this.accessToken, this.tokenType, this.scope, this.refreshToken, this.expiresIn, this.expiresAt, this.fetchedAt});

  TokenData11.fromJson(Map<String, dynamic> json) {
    accessToken = json["access_token"];
    tokenType = json["token_type"];
    scope = json["scope"];
    refreshToken = json["refresh_token"];
    expiresIn = json["expires_in"];
    expiresAt = json["expires_at"];
    fetchedAt = json["fetched_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    _data["token_type"] = tokenType;
    _data["scope"] = scope;
    _data["refresh_token"] = refreshToken;
    _data["expires_in"] = expiresIn;
    _data["expires_at"] = expiresAt;
    _data["fetched_at"] = fetchedAt;
    return _data;
  }
}

class Relationships11 {
  String? fromId;
  String? from;
  String? toId;
  String? to;
  String? nickname;
  int? type;
  String? id;

  Relationships11({this.fromId, this.from, this.toId, this.to, this.nickname, this.type, this.id});

  Relationships11.fromJson(Map<String, dynamic> json) {
    fromId = json["from_id"];
    from = json["from"];
    toId = json["to_id"];
    to = json["to"];
    nickname = json["nickname"];
    type = json["type"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["from_id"] = fromId;
    _data["from"] = from;
    _data["to_id"] = toId;
    _data["to"] = to;
    _data["nickname"] = nickname;
    _data["type"] = type;
    _data["id"] = id;
    return _data;
  }
}

class Sessions11 {
  String? userId;
  String? user;
  String? sessionId;
  List<Activities11>? activities;
  ClientInfo11? clientInfo;
  String? status;
  String? id;

  Sessions11({this.userId, this.user, this.sessionId, this.activities, this.clientInfo, this.status, this.id});

  Sessions11.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    sessionId = json["session_id"];
    activities = json["activities"] == null ? null : (json["activities"] as List).map((e) => Activities11.fromJson(e)).toList();
    clientInfo = json["client_info"] == null ? null : ClientInfo11.fromJson(json["client_info"]);
    status = json["status"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["session_id"] = sessionId;
    if(activities != null) {
      _data["activities"] = activities?.map((e) => e.toJson()).toList();
    }
    if(clientInfo != null) {
      _data["client_info"] = clientInfo?.toJson();
    }
    _data["status"] = status;
    _data["id"] = id;
    return _data;
  }
}

class ClientInfo11 {
  String? client;
  String? os;
  int? version;

  ClientInfo11({this.client, this.os, this.version});

  ClientInfo11.fromJson(Map<String, dynamic> json) {
    client = json["client"];
    os = json["os"];
    version = json["version"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["client"] = client;
    _data["os"] = os;
    _data["version"] = version;
    return _data;
  }
}

class Activities11 {
  String? name;
  int? type;
  String? url;
  int? createdAt;
  Timestamps11? timestamps;
  String? applicationId;
  String? details;
  String? state;
  Emoji11? emoji;
  Party11? party;
  Assets11? assets;
  Secrets11? secrets;
  bool? instance;
  String? flags;
  String? id;
  String? syncId;
  Metadata11? metadata;
  String? sessionId;

  Activities11({this.name, this.type, this.url, this.createdAt, this.timestamps, this.applicationId, this.details, this.state, this.emoji, this.party, this.assets, this.secrets, this.instance, this.flags, this.id, this.syncId, this.metadata, this.sessionId});

  Activities11.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    type = json["type"];
    url = json["url"];
    createdAt = json["created_at"];
    timestamps = json["timestamps"] == null ? null : Timestamps11.fromJson(json["timestamps"]);
    applicationId = json["application_id"];
    details = json["details"];
    state = json["state"];
    emoji = json["emoji"] == null ? null : Emoji11.fromJson(json["emoji"]);
    party = json["party"] == null ? null : Party11.fromJson(json["party"]);
    assets = json["assets"] == null ? null : Assets11.fromJson(json["assets"]);
    secrets = json["secrets"] == null ? null : Secrets11.fromJson(json["secrets"]);
    instance = json["instance"];
    flags = json["flags"];
    id = json["id"];
    syncId = json["sync_id"];
    metadata = json["metadata"] == null ? null : Metadata11.fromJson(json["metadata"]);
    sessionId = json["session_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["type"] = type;
    _data["url"] = url;
    _data["created_at"] = createdAt;
    if(timestamps != null) {
      _data["timestamps"] = timestamps?.toJson();
    }
    _data["application_id"] = applicationId;
    _data["details"] = details;
    _data["state"] = state;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    if(party != null) {
      _data["party"] = party?.toJson();
    }
    if(assets != null) {
      _data["assets"] = assets?.toJson();
    }
    if(secrets != null) {
      _data["secrets"] = secrets?.toJson();
    }
    _data["instance"] = instance;
    _data["flags"] = flags;
    _data["id"] = id;
    _data["sync_id"] = syncId;
    if(metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    _data["session_id"] = sessionId;
    return _data;
  }
}

class Metadata11 {
  String? contextUri;
  String? albumId;
  List<String>? artistIds;

  Metadata11({this.contextUri, this.albumId, this.artistIds});

  Metadata11.fromJson(Map<String, dynamic> json) {
    contextUri = json["context_uri"];
    albumId = json["album_id"];
    artistIds = json["artist_ids"] == null ? null : List<String>.from(json["artist_ids"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["context_uri"] = contextUri;
    _data["album_id"] = albumId;
    if(artistIds != null) {
      _data["artist_ids"] = artistIds;
    }
    return _data;
  }
}

class Secrets11 {
  String? join;
  String? spectate;
  String? match;

  Secrets11({this.join, this.spectate, this.match});

  Secrets11.fromJson(Map<String, dynamic> json) {
    join = json["join"];
    spectate = json["spectate"];
    match = json["match"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["join"] = join;
    _data["spectate"] = spectate;
    _data["match"] = match;
    return _data;
  }
}

class Assets11 {
  String? largeImage;
  String? largeText;
  String? smallImage;
  String? smallText;

  Assets11({this.largeImage, this.largeText, this.smallImage, this.smallText});

  Assets11.fromJson(Map<String, dynamic> json) {
    largeImage = json["large_image"];
    largeText = json["large_text"];
    smallImage = json["small_image"];
    smallText = json["small_text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["large_image"] = largeImage;
    _data["large_text"] = largeText;
    _data["small_image"] = smallImage;
    _data["small_text"] = smallText;
    return _data;
  }
}

class Party11 {
  String? id;
  List<int>? size;

  Party11({this.id, this.size});

  Party11.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    size = json["size"] == null ? null : List<int>.from(json["size"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if(size != null) {
      _data["size"] = size;
    }
    return _data;
  }
}

class Emoji11 {
  String? name;
  String? id;
  bool? animated;

  Emoji11({this.name, this.id, this.animated});

  Emoji11.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["id"] = id;
    _data["animated"] = animated;
    return _data;
  }
}

class Timestamps11 {
  int? start;
  int? end;

  Timestamps11({this.start, this.end});

  Timestamps11.fromJson(Map<String, dynamic> json) {
    start = json["start"];
    end = json["end"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }
}

class Owner2 {
  String? username;
  String? discriminator;
  String? avatar;
  int? accentColor;
  String? banner;
  List<int>? themeColors;
  String? pronouns;
  String? phone;
  bool? desktop;
  bool? mobile;
  bool? premium;
  int? premiumType;
  bool? bot;
  String? bio;
  bool? system;
  bool? nsfwAllowed;
  bool? mfaEnabled;
  bool? webauthnEnabled;
  String? totpSecret;
  String? totpLastTicket;
  String? createdAt;
  String? premiumSince;
  bool? verified;
  bool? disabled;
  bool? deleted;
  String? email;
  String? flags;
  int? publicFlags;
  int? purchasedFlags;
  int? premiumUsageFlags;
  String? rights;
  List<Sessions10>? sessions;
  List<Relationships10>? relationships;
  List<ConnectedAccounts10>? connectedAccounts;
  Data10? data;
  List<String>? fingerprints;
  Settings11? settings;
  String? extendedSettings;
  List<SecurityKeys10>? securityKeys;
  String? id;

  Owner2({this.username, this.discriminator, this.avatar, this.accentColor, this.banner, this.themeColors, this.pronouns, this.phone, this.desktop, this.mobile, this.premium, this.premiumType, this.bot, this.bio, this.system, this.nsfwAllowed, this.mfaEnabled, this.webauthnEnabled, this.totpSecret, this.totpLastTicket, this.createdAt, this.premiumSince, this.verified, this.disabled, this.deleted, this.email, this.flags, this.publicFlags, this.purchasedFlags, this.premiumUsageFlags, this.rights, this.sessions, this.relationships, this.connectedAccounts, this.data, this.fingerprints, this.settings, this.extendedSettings, this.securityKeys, this.id});

  Owner2.fromJson(Map<String, dynamic> json) {
    username = json["username"];
    discriminator = json["discriminator"];
    avatar = json["avatar"];
    accentColor = json["accent_color"];
    banner = json["banner"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    phone = json["phone"];
    desktop = json["desktop"];
    mobile = json["mobile"];
    premium = json["premium"];
    premiumType = json["premium_type"];
    bot = json["bot"];
    bio = json["bio"];
    system = json["system"];
    nsfwAllowed = json["nsfw_allowed"];
    mfaEnabled = json["mfa_enabled"];
    webauthnEnabled = json["webauthn_enabled"];
    totpSecret = json["totp_secret"];
    totpLastTicket = json["totp_last_ticket"];
    createdAt = json["created_at"];
    premiumSince = json["premium_since"];
    verified = json["verified"];
    disabled = json["disabled"];
    deleted = json["deleted"];
    email = json["email"];
    flags = json["flags"];
    publicFlags = json["public_flags"];
    purchasedFlags = json["purchased_flags"];
    premiumUsageFlags = json["premium_usage_flags"];
    rights = json["rights"];
    sessions = json["sessions"] == null ? null : (json["sessions"] as List).map((e) => Sessions10.fromJson(e)).toList();
    relationships = json["relationships"] == null ? null : (json["relationships"] as List).map((e) => Relationships10.fromJson(e)).toList();
    connectedAccounts = json["connected_accounts"] == null ? null : (json["connected_accounts"] as List).map((e) => ConnectedAccounts10.fromJson(e)).toList();
    data = json["data"] == null ? null : Data10.fromJson(json["data"]);
    fingerprints = json["fingerprints"] == null ? null : List<String>.from(json["fingerprints"]);
    settings = json["settings"] == null ? null : Settings11.fromJson(json["settings"]);
    extendedSettings = json["extended_settings"];
    securityKeys = json["security_keys"] == null ? null : (json["security_keys"] as List).map((e) => SecurityKeys10.fromJson(e)).toList();
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["discriminator"] = discriminator;
    _data["avatar"] = avatar;
    _data["accent_color"] = accentColor;
    _data["banner"] = banner;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["phone"] = phone;
    _data["desktop"] = desktop;
    _data["mobile"] = mobile;
    _data["premium"] = premium;
    _data["premium_type"] = premiumType;
    _data["bot"] = bot;
    _data["bio"] = bio;
    _data["system"] = system;
    _data["nsfw_allowed"] = nsfwAllowed;
    _data["mfa_enabled"] = mfaEnabled;
    _data["webauthn_enabled"] = webauthnEnabled;
    _data["totp_secret"] = totpSecret;
    _data["totp_last_ticket"] = totpLastTicket;
    _data["created_at"] = createdAt;
    _data["premium_since"] = premiumSince;
    _data["verified"] = verified;
    _data["disabled"] = disabled;
    _data["deleted"] = deleted;
    _data["email"] = email;
    _data["flags"] = flags;
    _data["public_flags"] = publicFlags;
    _data["purchased_flags"] = purchasedFlags;
    _data["premium_usage_flags"] = premiumUsageFlags;
    _data["rights"] = rights;
    if(sessions != null) {
      _data["sessions"] = sessions?.map((e) => e.toJson()).toList();
    }
    if(relationships != null) {
      _data["relationships"] = relationships?.map((e) => e.toJson()).toList();
    }
    if(connectedAccounts != null) {
      _data["connected_accounts"] = connectedAccounts?.map((e) => e.toJson()).toList();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    if(fingerprints != null) {
      _data["fingerprints"] = fingerprints;
    }
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["extended_settings"] = extendedSettings;
    if(securityKeys != null) {
      _data["security_keys"] = securityKeys?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    return _data;
  }
}

class SecurityKeys10 {
  String? userId;
  String? user;
  String? keyId;
  String? publicKey;
  int? counter;
  String? name;
  String? id;

  SecurityKeys10({this.userId, this.user, this.keyId, this.publicKey, this.counter, this.name, this.id});

  SecurityKeys10.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    keyId = json["key_id"];
    publicKey = json["public_key"];
    counter = json["counter"];
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["key_id"] = keyId;
    _data["public_key"] = publicKey;
    _data["counter"] = counter;
    _data["name"] = name;
    _data["id"] = id;
    return _data;
  }
}

class Settings11 {
  String? index;
  int? afkTimeout;
  bool? allowAccessibilityDetection;
  bool? animateEmoji;
  int? animateStickers;
  bool? contactSyncEnabled;
  bool? convertEmoticons;
  CustomStatus10? customStatus;
  bool? defaultGuildsRestricted;
  bool? detectPlatformAccounts;
  bool? developerMode;
  bool? disableGamesTab;
  bool? enableTtsCommand;
  int? explicitContentFilter;
  FriendSourceFlags10? friendSourceFlags;
  bool? gatewayConnected;
  bool? gifAutoPlay;
  List<GuildFolders10>? guildFolders;
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

  Settings11({this.index, this.afkTimeout, this.allowAccessibilityDetection, this.animateEmoji, this.animateStickers, this.contactSyncEnabled, this.convertEmoticons, this.customStatus, this.defaultGuildsRestricted, this.detectPlatformAccounts, this.developerMode, this.disableGamesTab, this.enableTtsCommand, this.explicitContentFilter, this.friendSourceFlags, this.gatewayConnected, this.gifAutoPlay, this.guildFolders, this.guildPositions, this.inlineAttachmentMedia, this.inlineEmbedMedia, this.locale, this.messageDisplayCompact, this.nativePhoneIntegrationEnabled, this.renderEmbeds, this.renderReactions, this.restrictedGuilds, this.showCurrentGame, this.status, this.streamNotificationsEnabled, this.theme, this.timezoneOffset});

  Settings11.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    afkTimeout = json["afk_timeout"];
    allowAccessibilityDetection = json["allow_accessibility_detection"];
    animateEmoji = json["animate_emoji"];
    animateStickers = json["animate_stickers"];
    contactSyncEnabled = json["contact_sync_enabled"];
    convertEmoticons = json["convert_emoticons"];
    customStatus = json["custom_status"] == null ? null : CustomStatus10.fromJson(json["custom_status"]);
    defaultGuildsRestricted = json["default_guilds_restricted"];
    detectPlatformAccounts = json["detect_platform_accounts"];
    developerMode = json["developer_mode"];
    disableGamesTab = json["disable_games_tab"];
    enableTtsCommand = json["enable_tts_command"];
    explicitContentFilter = json["explicit_content_filter"];
    friendSourceFlags = json["friend_source_flags"] == null ? null : FriendSourceFlags10.fromJson(json["friend_source_flags"]);
    gatewayConnected = json["gateway_connected"];
    gifAutoPlay = json["gif_auto_play"];
    guildFolders = json["guild_folders"] == null ? null : (json["guild_folders"] as List).map((e) => GuildFolders10.fromJson(e)).toList();
    guildPositions = json["guild_positions"] == null ? null : List<String>.from(json["guild_positions"]);
    inlineAttachmentMedia = json["inline_attachment_media"];
    inlineEmbedMedia = json["inline_embed_media"];
    locale = json["locale"];
    messageDisplayCompact = json["message_display_compact"];
    nativePhoneIntegrationEnabled = json["native_phone_integration_enabled"];
    renderEmbeds = json["render_embeds"];
    renderReactions = json["render_reactions"];
    restrictedGuilds = json["restricted_guilds"] == null ? null : List<String>.from(json["restricted_guilds"]);
    showCurrentGame = json["show_current_game"];
    status = json["status"];
    streamNotificationsEnabled = json["stream_notifications_enabled"];
    theme = json["theme"];
    timezoneOffset = json["timezone_offset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["afk_timeout"] = afkTimeout;
    _data["allow_accessibility_detection"] = allowAccessibilityDetection;
    _data["animate_emoji"] = animateEmoji;
    _data["animate_stickers"] = animateStickers;
    _data["contact_sync_enabled"] = contactSyncEnabled;
    _data["convert_emoticons"] = convertEmoticons;
    if(customStatus != null) {
      _data["custom_status"] = customStatus?.toJson();
    }
    _data["default_guilds_restricted"] = defaultGuildsRestricted;
    _data["detect_platform_accounts"] = detectPlatformAccounts;
    _data["developer_mode"] = developerMode;
    _data["disable_games_tab"] = disableGamesTab;
    _data["enable_tts_command"] = enableTtsCommand;
    _data["explicit_content_filter"] = explicitContentFilter;
    if(friendSourceFlags != null) {
      _data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    _data["gateway_connected"] = gatewayConnected;
    _data["gif_auto_play"] = gifAutoPlay;
    if(guildFolders != null) {
      _data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if(guildPositions != null) {
      _data["guild_positions"] = guildPositions;
    }
    _data["inline_attachment_media"] = inlineAttachmentMedia;
    _data["inline_embed_media"] = inlineEmbedMedia;
    _data["locale"] = locale;
    _data["message_display_compact"] = messageDisplayCompact;
    _data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    _data["render_embeds"] = renderEmbeds;
    _data["render_reactions"] = renderReactions;
    if(restrictedGuilds != null) {
      _data["restricted_guilds"] = restrictedGuilds;
    }
    _data["show_current_game"] = showCurrentGame;
    _data["status"] = status;
    _data["stream_notifications_enabled"] = streamNotificationsEnabled;
    _data["theme"] = theme;
    _data["timezone_offset"] = timezoneOffset;
    return _data;
  }
}

class GuildFolders10 {
  int? color;
  List<String>? guildIds;
  int? id;
  String? name;

  GuildFolders10({this.color, this.guildIds, this.id, this.name});

  GuildFolders10.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    guildIds = json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    if(guildIds != null) {
      _data["guild_ids"] = guildIds;
    }
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class FriendSourceFlags10 {
  bool? all;

  FriendSourceFlags10({this.all});

  FriendSourceFlags10.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["all"] = all;
    return _data;
  }
}

class CustomStatus10 {
  String? emojiId;
  String? emojiName;
  int? expiresAt;
  String? text;

  CustomStatus10({this.emojiId, this.emojiName, this.expiresAt, this.text});

  CustomStatus10.fromJson(Map<String, dynamic> json) {
    emojiId = json["emoji_id"];
    emojiName = json["emoji_name"];
    expiresAt = json["expires_at"];
    text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["emoji_id"] = emojiId;
    _data["emoji_name"] = emojiName;
    _data["expires_at"] = expiresAt;
    _data["text"] = text;
    return _data;
  }
}

class Data10 {
  String? validTokensSince;
  String? hash;

  Data10({this.validTokensSince, this.hash});

  Data10.fromJson(Map<String, dynamic> json) {
    validTokensSince = json["valid_tokens_since"];
    hash = json["hash"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["valid_tokens_since"] = validTokensSince;
    _data["hash"] = hash;
    return _data;
  }
}

class ConnectedAccounts10 {
  String? externalId;
  String? userId;
  String? user;
  bool? friendSync;
  String? name;
  bool? revoked;
  int? showActivity;
  String? type;
  bool? verified;
  int? visibility;
  List<String>? integrations;
  dynamic metadata;
  int? metadataVisibility;
  bool? twoWayLink;
  TokenData10? tokenData;
  String? id;

  ConnectedAccounts10({this.externalId, this.userId, this.user, this.friendSync, this.name, this.revoked, this.showActivity, this.type, this.verified, this.visibility, this.integrations, this.metadata, this.metadataVisibility, this.twoWayLink, this.tokenData, this.id});

  ConnectedAccounts10.fromJson(Map<String, dynamic> json) {
    externalId = json["external_id"];
    userId = json["user_id"];
    user = json["user"];
    friendSync = json["friend_sync"];
    name = json["name"];
    revoked = json["revoked"];
    showActivity = json["show_activity"];
    type = json["type"];
    verified = json["verified"];
    visibility = json["visibility"];
    integrations = json["integrations"] == null ? null : List<String>.from(json["integrations"]);
    metadata = json["metadata_"];
    metadataVisibility = json["metadata_visibility"];
    twoWayLink = json["two_way_link"];
    tokenData = json["token_data"] == null ? null : TokenData10.fromJson(json["token_data"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["external_id"] = externalId;
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["friend_sync"] = friendSync;
    _data["name"] = name;
    _data["revoked"] = revoked;
    _data["show_activity"] = showActivity;
    _data["type"] = type;
    _data["verified"] = verified;
    _data["visibility"] = visibility;
    if(integrations != null) {
      _data["integrations"] = integrations;
    }
    _data["metadata_"] = metadata;
    _data["metadata_visibility"] = metadataVisibility;
    _data["two_way_link"] = twoWayLink;
    if(tokenData != null) {
      _data["token_data"] = tokenData?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class TokenData10 {
  String? accessToken;
  String? tokenType;
  String? scope;
  String? refreshToken;
  int? expiresIn;
  int? expiresAt;
  int? fetchedAt;

  TokenData10({this.accessToken, this.tokenType, this.scope, this.refreshToken, this.expiresIn, this.expiresAt, this.fetchedAt});

  TokenData10.fromJson(Map<String, dynamic> json) {
    accessToken = json["access_token"];
    tokenType = json["token_type"];
    scope = json["scope"];
    refreshToken = json["refresh_token"];
    expiresIn = json["expires_in"];
    expiresAt = json["expires_at"];
    fetchedAt = json["fetched_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    _data["token_type"] = tokenType;
    _data["scope"] = scope;
    _data["refresh_token"] = refreshToken;
    _data["expires_in"] = expiresIn;
    _data["expires_at"] = expiresAt;
    _data["fetched_at"] = fetchedAt;
    return _data;
  }
}

class Relationships10 {
  String? fromId;
  String? from;
  String? toId;
  String? to;
  String? nickname;
  int? type;
  String? id;

  Relationships10({this.fromId, this.from, this.toId, this.to, this.nickname, this.type, this.id});

  Relationships10.fromJson(Map<String, dynamic> json) {
    fromId = json["from_id"];
    from = json["from"];
    toId = json["to_id"];
    to = json["to"];
    nickname = json["nickname"];
    type = json["type"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["from_id"] = fromId;
    _data["from"] = from;
    _data["to_id"] = toId;
    _data["to"] = to;
    _data["nickname"] = nickname;
    _data["type"] = type;
    _data["id"] = id;
    return _data;
  }
}

class Sessions10 {
  String? userId;
  String? user;
  String? sessionId;
  List<Activities10>? activities;
  ClientInfo10? clientInfo;
  String? status;
  String? id;

  Sessions10({this.userId, this.user, this.sessionId, this.activities, this.clientInfo, this.status, this.id});

  Sessions10.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    sessionId = json["session_id"];
    activities = json["activities"] == null ? null : (json["activities"] as List).map((e) => Activities10.fromJson(e)).toList();
    clientInfo = json["client_info"] == null ? null : ClientInfo10.fromJson(json["client_info"]);
    status = json["status"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["session_id"] = sessionId;
    if(activities != null) {
      _data["activities"] = activities?.map((e) => e.toJson()).toList();
    }
    if(clientInfo != null) {
      _data["client_info"] = clientInfo?.toJson();
    }
    _data["status"] = status;
    _data["id"] = id;
    return _data;
  }
}

class ClientInfo10 {
  String? client;
  String? os;
  int? version;

  ClientInfo10({this.client, this.os, this.version});

  ClientInfo10.fromJson(Map<String, dynamic> json) {
    client = json["client"];
    os = json["os"];
    version = json["version"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["client"] = client;
    _data["os"] = os;
    _data["version"] = version;
    return _data;
  }
}

class Activities10 {
  String? name;
  int? type;
  String? url;
  int? createdAt;
  Timestamps10? timestamps;
  String? applicationId;
  String? details;
  String? state;
  Emoji10? emoji;
  Party10? party;
  Assets10? assets;
  Secrets10? secrets;
  bool? instance;
  String? flags;
  String? id;
  String? syncId;
  Metadata10? metadata;
  String? sessionId;

  Activities10({this.name, this.type, this.url, this.createdAt, this.timestamps, this.applicationId, this.details, this.state, this.emoji, this.party, this.assets, this.secrets, this.instance, this.flags, this.id, this.syncId, this.metadata, this.sessionId});

  Activities10.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    type = json["type"];
    url = json["url"];
    createdAt = json["created_at"];
    timestamps = json["timestamps"] == null ? null : Timestamps10.fromJson(json["timestamps"]);
    applicationId = json["application_id"];
    details = json["details"];
    state = json["state"];
    emoji = json["emoji"] == null ? null : Emoji10.fromJson(json["emoji"]);
    party = json["party"] == null ? null : Party10.fromJson(json["party"]);
    assets = json["assets"] == null ? null : Assets10.fromJson(json["assets"]);
    secrets = json["secrets"] == null ? null : Secrets10.fromJson(json["secrets"]);
    instance = json["instance"];
    flags = json["flags"];
    id = json["id"];
    syncId = json["sync_id"];
    metadata = json["metadata"] == null ? null : Metadata10.fromJson(json["metadata"]);
    sessionId = json["session_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["type"] = type;
    _data["url"] = url;
    _data["created_at"] = createdAt;
    if(timestamps != null) {
      _data["timestamps"] = timestamps?.toJson();
    }
    _data["application_id"] = applicationId;
    _data["details"] = details;
    _data["state"] = state;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    if(party != null) {
      _data["party"] = party?.toJson();
    }
    if(assets != null) {
      _data["assets"] = assets?.toJson();
    }
    if(secrets != null) {
      _data["secrets"] = secrets?.toJson();
    }
    _data["instance"] = instance;
    _data["flags"] = flags;
    _data["id"] = id;
    _data["sync_id"] = syncId;
    if(metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    _data["session_id"] = sessionId;
    return _data;
  }
}

class Metadata10 {
  String? contextUri;
  String? albumId;
  List<String>? artistIds;

  Metadata10({this.contextUri, this.albumId, this.artistIds});

  Metadata10.fromJson(Map<String, dynamic> json) {
    contextUri = json["context_uri"];
    albumId = json["album_id"];
    artistIds = json["artist_ids"] == null ? null : List<String>.from(json["artist_ids"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["context_uri"] = contextUri;
    _data["album_id"] = albumId;
    if(artistIds != null) {
      _data["artist_ids"] = artistIds;
    }
    return _data;
  }
}

class Secrets10 {
  String? join;
  String? spectate;
  String? match;

  Secrets10({this.join, this.spectate, this.match});

  Secrets10.fromJson(Map<String, dynamic> json) {
    join = json["join"];
    spectate = json["spectate"];
    match = json["match"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["join"] = join;
    _data["spectate"] = spectate;
    _data["match"] = match;
    return _data;
  }
}

class Assets10 {
  String? largeImage;
  String? largeText;
  String? smallImage;
  String? smallText;

  Assets10({this.largeImage, this.largeText, this.smallImage, this.smallText});

  Assets10.fromJson(Map<String, dynamic> json) {
    largeImage = json["large_image"];
    largeText = json["large_text"];
    smallImage = json["small_image"];
    smallText = json["small_text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["large_image"] = largeImage;
    _data["large_text"] = largeText;
    _data["small_image"] = smallImage;
    _data["small_text"] = smallText;
    return _data;
  }
}

class Party10 {
  String? id;
  List<int>? size;

  Party10({this.id, this.size});

  Party10.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    size = json["size"] == null ? null : List<int>.from(json["size"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if(size != null) {
      _data["size"] = size;
    }
    return _data;
  }
}

class Emoji10 {
  String? name;
  String? id;
  bool? animated;

  Emoji10({this.name, this.id, this.animated});

  Emoji10.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["id"] = id;
    _data["animated"] = animated;
    return _data;
  }
}

class Timestamps10 {
  int? start;
  int? end;

  Timestamps10({this.start, this.end});

  Timestamps10.fromJson(Map<String, dynamic> json) {
    start = json["start"];
    end = json["end"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }
}

class Type1 {
  Type1();

  Type1.fromJson(Map<String, dynamic> json) {

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};

    return _data;
  }
}

class Webhook {
  int? type;
  String? name;
  String? avatar;
  String? token;
  String? guildId;
  String? guild;
  String? channelId;
  String? channel;
  String? applicationId;
  Application? application;
  String? userId;
  User3? user;
  String? sourceGuildId;
  String? sourceGuild;
  String? id;

  Webhook({this.type, this.name, this.avatar, this.token, this.guildId, this.guild, this.channelId, this.channel, this.applicationId, this.application, this.userId, this.user, this.sourceGuildId, this.sourceGuild, this.id});

  Webhook.fromJson(Map<String, dynamic> json) {
    type = json["type"];
    name = json["name"];
    avatar = json["avatar"];
    token = json["token"];
    guildId = json["guild_id"];
    guild = json["guild"];
    channelId = json["channel_id"];
    channel = json["channel"];
    applicationId = json["application_id"];
    application = json["application"] == null ? null : Application.fromJson(json["application"]);
    userId = json["user_id"];
    user = json["user"] == null ? null : User3.fromJson(json["user"]);
    sourceGuildId = json["source_guild_id"];
    sourceGuild = json["source_guild"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["type"] = type;
    _data["name"] = name;
    _data["avatar"] = avatar;
    _data["token"] = token;
    _data["guild_id"] = guildId;
    _data["guild"] = guild;
    _data["channel_id"] = channelId;
    _data["channel"] = channel;
    _data["application_id"] = applicationId;
    if(application != null) {
      _data["application"] = application?.toJson();
    }
    _data["user_id"] = userId;
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    _data["source_guild_id"] = sourceGuildId;
    _data["source_guild"] = sourceGuild;
    _data["id"] = id;
    return _data;
  }
}

class User3 {
  String? username;
  String? discriminator;
  String? avatar;
  int? accentColor;
  String? banner;
  List<int>? themeColors;
  String? pronouns;
  String? phone;
  bool? desktop;
  bool? mobile;
  bool? premium;
  int? premiumType;
  bool? bot;
  String? bio;
  bool? system;
  bool? nsfwAllowed;
  bool? mfaEnabled;
  bool? webauthnEnabled;
  String? totpSecret;
  String? totpLastTicket;
  String? createdAt;
  String? premiumSince;
  bool? verified;
  bool? disabled;
  bool? deleted;
  String? email;
  String? flags;
  int? publicFlags;
  int? purchasedFlags;
  int? premiumUsageFlags;
  String? rights;
  List<Sessions9>? sessions;
  List<Relationships9>? relationships;
  List<ConnectedAccounts9>? connectedAccounts;
  Data9? data;
  List<String>? fingerprints;
  Settings10? settings;
  String? extendedSettings;
  List<SecurityKeys9>? securityKeys;
  String? id;

  User3({this.username, this.discriminator, this.avatar, this.accentColor, this.banner, this.themeColors, this.pronouns, this.phone, this.desktop, this.mobile, this.premium, this.premiumType, this.bot, this.bio, this.system, this.nsfwAllowed, this.mfaEnabled, this.webauthnEnabled, this.totpSecret, this.totpLastTicket, this.createdAt, this.premiumSince, this.verified, this.disabled, this.deleted, this.email, this.flags, this.publicFlags, this.purchasedFlags, this.premiumUsageFlags, this.rights, this.sessions, this.relationships, this.connectedAccounts, this.data, this.fingerprints, this.settings, this.extendedSettings, this.securityKeys, this.id});

  User3.fromJson(Map<String, dynamic> json) {
    username = json["username"];
    discriminator = json["discriminator"];
    avatar = json["avatar"];
    accentColor = json["accent_color"];
    banner = json["banner"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    phone = json["phone"];
    desktop = json["desktop"];
    mobile = json["mobile"];
    premium = json["premium"];
    premiumType = json["premium_type"];
    bot = json["bot"];
    bio = json["bio"];
    system = json["system"];
    nsfwAllowed = json["nsfw_allowed"];
    mfaEnabled = json["mfa_enabled"];
    webauthnEnabled = json["webauthn_enabled"];
    totpSecret = json["totp_secret"];
    totpLastTicket = json["totp_last_ticket"];
    createdAt = json["created_at"];
    premiumSince = json["premium_since"];
    verified = json["verified"];
    disabled = json["disabled"];
    deleted = json["deleted"];
    email = json["email"];
    flags = json["flags"];
    publicFlags = json["public_flags"];
    purchasedFlags = json["purchased_flags"];
    premiumUsageFlags = json["premium_usage_flags"];
    rights = json["rights"];
    sessions = json["sessions"] == null ? null : (json["sessions"] as List).map((e) => Sessions9.fromJson(e)).toList();
    relationships = json["relationships"] == null ? null : (json["relationships"] as List).map((e) => Relationships9.fromJson(e)).toList();
    connectedAccounts = json["connected_accounts"] == null ? null : (json["connected_accounts"] as List).map((e) => ConnectedAccounts9.fromJson(e)).toList();
    data = json["data"] == null ? null : Data9.fromJson(json["data"]);
    fingerprints = json["fingerprints"] == null ? null : List<String>.from(json["fingerprints"]);
    settings = json["settings"] == null ? null : Settings10.fromJson(json["settings"]);
    extendedSettings = json["extended_settings"];
    securityKeys = json["security_keys"] == null ? null : (json["security_keys"] as List).map((e) => SecurityKeys9.fromJson(e)).toList();
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["discriminator"] = discriminator;
    _data["avatar"] = avatar;
    _data["accent_color"] = accentColor;
    _data["banner"] = banner;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["phone"] = phone;
    _data["desktop"] = desktop;
    _data["mobile"] = mobile;
    _data["premium"] = premium;
    _data["premium_type"] = premiumType;
    _data["bot"] = bot;
    _data["bio"] = bio;
    _data["system"] = system;
    _data["nsfw_allowed"] = nsfwAllowed;
    _data["mfa_enabled"] = mfaEnabled;
    _data["webauthn_enabled"] = webauthnEnabled;
    _data["totp_secret"] = totpSecret;
    _data["totp_last_ticket"] = totpLastTicket;
    _data["created_at"] = createdAt;
    _data["premium_since"] = premiumSince;
    _data["verified"] = verified;
    _data["disabled"] = disabled;
    _data["deleted"] = deleted;
    _data["email"] = email;
    _data["flags"] = flags;
    _data["public_flags"] = publicFlags;
    _data["purchased_flags"] = purchasedFlags;
    _data["premium_usage_flags"] = premiumUsageFlags;
    _data["rights"] = rights;
    if(sessions != null) {
      _data["sessions"] = sessions?.map((e) => e.toJson()).toList();
    }
    if(relationships != null) {
      _data["relationships"] = relationships?.map((e) => e.toJson()).toList();
    }
    if(connectedAccounts != null) {
      _data["connected_accounts"] = connectedAccounts?.map((e) => e.toJson()).toList();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    if(fingerprints != null) {
      _data["fingerprints"] = fingerprints;
    }
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["extended_settings"] = extendedSettings;
    if(securityKeys != null) {
      _data["security_keys"] = securityKeys?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    return _data;
  }
}

class SecurityKeys9 {
  String? userId;
  String? user;
  String? keyId;
  String? publicKey;
  int? counter;
  String? name;
  String? id;

  SecurityKeys9({this.userId, this.user, this.keyId, this.publicKey, this.counter, this.name, this.id});

  SecurityKeys9.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    keyId = json["key_id"];
    publicKey = json["public_key"];
    counter = json["counter"];
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["key_id"] = keyId;
    _data["public_key"] = publicKey;
    _data["counter"] = counter;
    _data["name"] = name;
    _data["id"] = id;
    return _data;
  }
}

class Settings10 {
  String? index;
  int? afkTimeout;
  bool? allowAccessibilityDetection;
  bool? animateEmoji;
  int? animateStickers;
  bool? contactSyncEnabled;
  bool? convertEmoticons;
  CustomStatus9? customStatus;
  bool? defaultGuildsRestricted;
  bool? detectPlatformAccounts;
  bool? developerMode;
  bool? disableGamesTab;
  bool? enableTtsCommand;
  int? explicitContentFilter;
  FriendSourceFlags9? friendSourceFlags;
  bool? gatewayConnected;
  bool? gifAutoPlay;
  List<GuildFolders9>? guildFolders;
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

  Settings10({this.index, this.afkTimeout, this.allowAccessibilityDetection, this.animateEmoji, this.animateStickers, this.contactSyncEnabled, this.convertEmoticons, this.customStatus, this.defaultGuildsRestricted, this.detectPlatformAccounts, this.developerMode, this.disableGamesTab, this.enableTtsCommand, this.explicitContentFilter, this.friendSourceFlags, this.gatewayConnected, this.gifAutoPlay, this.guildFolders, this.guildPositions, this.inlineAttachmentMedia, this.inlineEmbedMedia, this.locale, this.messageDisplayCompact, this.nativePhoneIntegrationEnabled, this.renderEmbeds, this.renderReactions, this.restrictedGuilds, this.showCurrentGame, this.status, this.streamNotificationsEnabled, this.theme, this.timezoneOffset});

  Settings10.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    afkTimeout = json["afk_timeout"];
    allowAccessibilityDetection = json["allow_accessibility_detection"];
    animateEmoji = json["animate_emoji"];
    animateStickers = json["animate_stickers"];
    contactSyncEnabled = json["contact_sync_enabled"];
    convertEmoticons = json["convert_emoticons"];
    customStatus = json["custom_status"] == null ? null : CustomStatus9.fromJson(json["custom_status"]);
    defaultGuildsRestricted = json["default_guilds_restricted"];
    detectPlatformAccounts = json["detect_platform_accounts"];
    developerMode = json["developer_mode"];
    disableGamesTab = json["disable_games_tab"];
    enableTtsCommand = json["enable_tts_command"];
    explicitContentFilter = json["explicit_content_filter"];
    friendSourceFlags = json["friend_source_flags"] == null ? null : FriendSourceFlags9.fromJson(json["friend_source_flags"]);
    gatewayConnected = json["gateway_connected"];
    gifAutoPlay = json["gif_auto_play"];
    guildFolders = json["guild_folders"] == null ? null : (json["guild_folders"] as List).map((e) => GuildFolders9.fromJson(e)).toList();
    guildPositions = json["guild_positions"] == null ? null : List<String>.from(json["guild_positions"]);
    inlineAttachmentMedia = json["inline_attachment_media"];
    inlineEmbedMedia = json["inline_embed_media"];
    locale = json["locale"];
    messageDisplayCompact = json["message_display_compact"];
    nativePhoneIntegrationEnabled = json["native_phone_integration_enabled"];
    renderEmbeds = json["render_embeds"];
    renderReactions = json["render_reactions"];
    restrictedGuilds = json["restricted_guilds"] == null ? null : List<String>.from(json["restricted_guilds"]);
    showCurrentGame = json["show_current_game"];
    status = json["status"];
    streamNotificationsEnabled = json["stream_notifications_enabled"];
    theme = json["theme"];
    timezoneOffset = json["timezone_offset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["afk_timeout"] = afkTimeout;
    _data["allow_accessibility_detection"] = allowAccessibilityDetection;
    _data["animate_emoji"] = animateEmoji;
    _data["animate_stickers"] = animateStickers;
    _data["contact_sync_enabled"] = contactSyncEnabled;
    _data["convert_emoticons"] = convertEmoticons;
    if(customStatus != null) {
      _data["custom_status"] = customStatus?.toJson();
    }
    _data["default_guilds_restricted"] = defaultGuildsRestricted;
    _data["detect_platform_accounts"] = detectPlatformAccounts;
    _data["developer_mode"] = developerMode;
    _data["disable_games_tab"] = disableGamesTab;
    _data["enable_tts_command"] = enableTtsCommand;
    _data["explicit_content_filter"] = explicitContentFilter;
    if(friendSourceFlags != null) {
      _data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    _data["gateway_connected"] = gatewayConnected;
    _data["gif_auto_play"] = gifAutoPlay;
    if(guildFolders != null) {
      _data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if(guildPositions != null) {
      _data["guild_positions"] = guildPositions;
    }
    _data["inline_attachment_media"] = inlineAttachmentMedia;
    _data["inline_embed_media"] = inlineEmbedMedia;
    _data["locale"] = locale;
    _data["message_display_compact"] = messageDisplayCompact;
    _data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    _data["render_embeds"] = renderEmbeds;
    _data["render_reactions"] = renderReactions;
    if(restrictedGuilds != null) {
      _data["restricted_guilds"] = restrictedGuilds;
    }
    _data["show_current_game"] = showCurrentGame;
    _data["status"] = status;
    _data["stream_notifications_enabled"] = streamNotificationsEnabled;
    _data["theme"] = theme;
    _data["timezone_offset"] = timezoneOffset;
    return _data;
  }
}

class GuildFolders9 {
  int? color;
  List<String>? guildIds;
  int? id;
  String? name;

  GuildFolders9({this.color, this.guildIds, this.id, this.name});

  GuildFolders9.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    guildIds = json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    if(guildIds != null) {
      _data["guild_ids"] = guildIds;
    }
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class FriendSourceFlags9 {
  bool? all;

  FriendSourceFlags9({this.all});

  FriendSourceFlags9.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["all"] = all;
    return _data;
  }
}

class CustomStatus9 {
  String? emojiId;
  String? emojiName;
  int? expiresAt;
  String? text;

  CustomStatus9({this.emojiId, this.emojiName, this.expiresAt, this.text});

  CustomStatus9.fromJson(Map<String, dynamic> json) {
    emojiId = json["emoji_id"];
    emojiName = json["emoji_name"];
    expiresAt = json["expires_at"];
    text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["emoji_id"] = emojiId;
    _data["emoji_name"] = emojiName;
    _data["expires_at"] = expiresAt;
    _data["text"] = text;
    return _data;
  }
}

class Data9 {
  String? validTokensSince;
  String? hash;

  Data9({this.validTokensSince, this.hash});

  Data9.fromJson(Map<String, dynamic> json) {
    validTokensSince = json["valid_tokens_since"];
    hash = json["hash"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["valid_tokens_since"] = validTokensSince;
    _data["hash"] = hash;
    return _data;
  }
}

class ConnectedAccounts9 {
  String? externalId;
  String? userId;
  String? user;
  bool? friendSync;
  String? name;
  bool? revoked;
  int? showActivity;
  String? type;
  bool? verified;
  int? visibility;
  List<String>? integrations;
  dynamic metadata;
  int? metadataVisibility;
  bool? twoWayLink;
  TokenData9? tokenData;
  String? id;

  ConnectedAccounts9({this.externalId, this.userId, this.user, this.friendSync, this.name, this.revoked, this.showActivity, this.type, this.verified, this.visibility, this.integrations, this.metadata, this.metadataVisibility, this.twoWayLink, this.tokenData, this.id});

  ConnectedAccounts9.fromJson(Map<String, dynamic> json) {
    externalId = json["external_id"];
    userId = json["user_id"];
    user = json["user"];
    friendSync = json["friend_sync"];
    name = json["name"];
    revoked = json["revoked"];
    showActivity = json["show_activity"];
    type = json["type"];
    verified = json["verified"];
    visibility = json["visibility"];
    integrations = json["integrations"] == null ? null : List<String>.from(json["integrations"]);
    metadata = json["metadata_"];
    metadataVisibility = json["metadata_visibility"];
    twoWayLink = json["two_way_link"];
    tokenData = json["token_data"] == null ? null : TokenData9.fromJson(json["token_data"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["external_id"] = externalId;
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["friend_sync"] = friendSync;
    _data["name"] = name;
    _data["revoked"] = revoked;
    _data["show_activity"] = showActivity;
    _data["type"] = type;
    _data["verified"] = verified;
    _data["visibility"] = visibility;
    if(integrations != null) {
      _data["integrations"] = integrations;
    }
    _data["metadata_"] = metadata;
    _data["metadata_visibility"] = metadataVisibility;
    _data["two_way_link"] = twoWayLink;
    if(tokenData != null) {
      _data["token_data"] = tokenData?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class TokenData9 {
  String? accessToken;
  String? tokenType;
  String? scope;
  String? refreshToken;
  int? expiresIn;
  int? expiresAt;
  int? fetchedAt;

  TokenData9({this.accessToken, this.tokenType, this.scope, this.refreshToken, this.expiresIn, this.expiresAt, this.fetchedAt});

  TokenData9.fromJson(Map<String, dynamic> json) {
    accessToken = json["access_token"];
    tokenType = json["token_type"];
    scope = json["scope"];
    refreshToken = json["refresh_token"];
    expiresIn = json["expires_in"];
    expiresAt = json["expires_at"];
    fetchedAt = json["fetched_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    _data["token_type"] = tokenType;
    _data["scope"] = scope;
    _data["refresh_token"] = refreshToken;
    _data["expires_in"] = expiresIn;
    _data["expires_at"] = expiresAt;
    _data["fetched_at"] = fetchedAt;
    return _data;
  }
}

class Relationships9 {
  String? fromId;
  String? from;
  String? toId;
  String? to;
  String? nickname;
  int? type;
  String? id;

  Relationships9({this.fromId, this.from, this.toId, this.to, this.nickname, this.type, this.id});

  Relationships9.fromJson(Map<String, dynamic> json) {
    fromId = json["from_id"];
    from = json["from"];
    toId = json["to_id"];
    to = json["to"];
    nickname = json["nickname"];
    type = json["type"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["from_id"] = fromId;
    _data["from"] = from;
    _data["to_id"] = toId;
    _data["to"] = to;
    _data["nickname"] = nickname;
    _data["type"] = type;
    _data["id"] = id;
    return _data;
  }
}

class Sessions9 {
  String? userId;
  String? user;
  String? sessionId;
  List<Activities9>? activities;
  ClientInfo9? clientInfo;
  String? status;
  String? id;

  Sessions9({this.userId, this.user, this.sessionId, this.activities, this.clientInfo, this.status, this.id});

  Sessions9.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    sessionId = json["session_id"];
    activities = json["activities"] == null ? null : (json["activities"] as List).map((e) => Activities9.fromJson(e)).toList();
    clientInfo = json["client_info"] == null ? null : ClientInfo9.fromJson(json["client_info"]);
    status = json["status"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["session_id"] = sessionId;
    if(activities != null) {
      _data["activities"] = activities?.map((e) => e.toJson()).toList();
    }
    if(clientInfo != null) {
      _data["client_info"] = clientInfo?.toJson();
    }
    _data["status"] = status;
    _data["id"] = id;
    return _data;
  }
}

class ClientInfo9 {
  String? client;
  String? os;
  int? version;

  ClientInfo9({this.client, this.os, this.version});

  ClientInfo9.fromJson(Map<String, dynamic> json) {
    client = json["client"];
    os = json["os"];
    version = json["version"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["client"] = client;
    _data["os"] = os;
    _data["version"] = version;
    return _data;
  }
}

class Activities9 {
  String? name;
  int? type;
  String? url;
  int? createdAt;
  Timestamps9? timestamps;
  String? applicationId;
  String? details;
  String? state;
  Emoji9? emoji;
  Party9? party;
  Assets9? assets;
  Secrets9? secrets;
  bool? instance;
  String? flags;
  String? id;
  String? syncId;
  Metadata9? metadata;
  String? sessionId;

  Activities9({this.name, this.type, this.url, this.createdAt, this.timestamps, this.applicationId, this.details, this.state, this.emoji, this.party, this.assets, this.secrets, this.instance, this.flags, this.id, this.syncId, this.metadata, this.sessionId});

  Activities9.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    type = json["type"];
    url = json["url"];
    createdAt = json["created_at"];
    timestamps = json["timestamps"] == null ? null : Timestamps9.fromJson(json["timestamps"]);
    applicationId = json["application_id"];
    details = json["details"];
    state = json["state"];
    emoji = json["emoji"] == null ? null : Emoji9.fromJson(json["emoji"]);
    party = json["party"] == null ? null : Party9.fromJson(json["party"]);
    assets = json["assets"] == null ? null : Assets9.fromJson(json["assets"]);
    secrets = json["secrets"] == null ? null : Secrets9.fromJson(json["secrets"]);
    instance = json["instance"];
    flags = json["flags"];
    id = json["id"];
    syncId = json["sync_id"];
    metadata = json["metadata"] == null ? null : Metadata9.fromJson(json["metadata"]);
    sessionId = json["session_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["type"] = type;
    _data["url"] = url;
    _data["created_at"] = createdAt;
    if(timestamps != null) {
      _data["timestamps"] = timestamps?.toJson();
    }
    _data["application_id"] = applicationId;
    _data["details"] = details;
    _data["state"] = state;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    if(party != null) {
      _data["party"] = party?.toJson();
    }
    if(assets != null) {
      _data["assets"] = assets?.toJson();
    }
    if(secrets != null) {
      _data["secrets"] = secrets?.toJson();
    }
    _data["instance"] = instance;
    _data["flags"] = flags;
    _data["id"] = id;
    _data["sync_id"] = syncId;
    if(metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    _data["session_id"] = sessionId;
    return _data;
  }
}

class Metadata9 {
  String? contextUri;
  String? albumId;
  List<String>? artistIds;

  Metadata9({this.contextUri, this.albumId, this.artistIds});

  Metadata9.fromJson(Map<String, dynamic> json) {
    contextUri = json["context_uri"];
    albumId = json["album_id"];
    artistIds = json["artist_ids"] == null ? null : List<String>.from(json["artist_ids"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["context_uri"] = contextUri;
    _data["album_id"] = albumId;
    if(artistIds != null) {
      _data["artist_ids"] = artistIds;
    }
    return _data;
  }
}

class Secrets9 {
  String? join;
  String? spectate;
  String? match;

  Secrets9({this.join, this.spectate, this.match});

  Secrets9.fromJson(Map<String, dynamic> json) {
    join = json["join"];
    spectate = json["spectate"];
    match = json["match"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["join"] = join;
    _data["spectate"] = spectate;
    _data["match"] = match;
    return _data;
  }
}

class Assets9 {
  String? largeImage;
  String? largeText;
  String? smallImage;
  String? smallText;

  Assets9({this.largeImage, this.largeText, this.smallImage, this.smallText});

  Assets9.fromJson(Map<String, dynamic> json) {
    largeImage = json["large_image"];
    largeText = json["large_text"];
    smallImage = json["small_image"];
    smallText = json["small_text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["large_image"] = largeImage;
    _data["large_text"] = largeText;
    _data["small_image"] = smallImage;
    _data["small_text"] = smallText;
    return _data;
  }
}

class Party9 {
  String? id;
  List<int>? size;

  Party9({this.id, this.size});

  Party9.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    size = json["size"] == null ? null : List<int>.from(json["size"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if(size != null) {
      _data["size"] = size;
    }
    return _data;
  }
}

class Emoji9 {
  String? name;
  String? id;
  bool? animated;

  Emoji9({this.name, this.id, this.animated});

  Emoji9.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["id"] = id;
    _data["animated"] = animated;
    return _data;
  }
}

class Timestamps9 {
  int? start;
  int? end;

  Timestamps9({this.start, this.end});

  Timestamps9.fromJson(Map<String, dynamic> json) {
    start = json["start"];
    end = json["end"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }
}

class Application {
  String? name;
  String? icon;
  String? description;
  String? summary;
  Type? type;
  bool? hook;
  bool? botPublic;
  bool? botRequireCodeGrant;
  String? verifyKey;
  Owner1? owner;
  int? flags;
  List<String>? redirectUris;
  int? rpcApplicationState;
  int? storeApplicationState;
  int? verificationState;
  String? interactionsEndpointUrl;
  bool? integrationPublic;
  bool? integrationRequireCodeGrant;
  int? discoverabilityState;
  int? discoveryEligibilityFlags;
  Bot? bot;
  List<String>? tags;
  String? coverImage;
  InstallParams? installParams;
  String? termsOfServiceUrl;
  String? privacyPolicyUrl;
  Team? team;
  String? id;

  Application({this.name, this.icon, this.description, this.summary, this.type, this.hook, this.botPublic, this.botRequireCodeGrant, this.verifyKey, this.owner, this.flags, this.redirectUris, this.rpcApplicationState, this.storeApplicationState, this.verificationState, this.interactionsEndpointUrl, this.integrationPublic, this.integrationRequireCodeGrant, this.discoverabilityState, this.discoveryEligibilityFlags, this.bot, this.tags, this.coverImage, this.installParams, this.termsOfServiceUrl, this.privacyPolicyUrl, this.team, this.id});

  Application.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    icon = json["icon"];
    description = json["description"];
    summary = json["summary"];
    type = json["type"] == null ? null : Type.fromJson(json["type"]);
    hook = json["hook"];
    botPublic = json["bot_public"];
    botRequireCodeGrant = json["bot_require_code_grant"];
    verifyKey = json["verify_key"];
    owner = json["owner"] == null ? null : Owner1.fromJson(json["owner"]);
    flags = json["flags"];
    redirectUris = json["redirect_uris"] == null ? null : List<String>.from(json["redirect_uris"]);
    rpcApplicationState = json["rpc_application_state"];
    storeApplicationState = json["store_application_state"];
    verificationState = json["verification_state"];
    interactionsEndpointUrl = json["interactions_endpoint_url"];
    integrationPublic = json["integration_public"];
    integrationRequireCodeGrant = json["integration_require_code_grant"];
    discoverabilityState = json["discoverability_state"];
    discoveryEligibilityFlags = json["discovery_eligibility_flags"];
    bot = json["bot"] == null ? null : Bot.fromJson(json["bot"]);
    tags = json["tags"] == null ? null : List<String>.from(json["tags"]);
    coverImage = json["cover_image"];
    installParams = json["install_params"] == null ? null : InstallParams.fromJson(json["install_params"]);
    termsOfServiceUrl = json["terms_of_service_url"];
    privacyPolicyUrl = json["privacy_policy_url"];
    team = json["team"] == null ? null : Team.fromJson(json["team"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["icon"] = icon;
    _data["description"] = description;
    _data["summary"] = summary;
    if(type != null) {
      _data["type"] = type?.toJson();
    }
    _data["hook"] = hook;
    _data["bot_public"] = botPublic;
    _data["bot_require_code_grant"] = botRequireCodeGrant;
    _data["verify_key"] = verifyKey;
    if(owner != null) {
      _data["owner"] = owner?.toJson();
    }
    _data["flags"] = flags;
    if(redirectUris != null) {
      _data["redirect_uris"] = redirectUris;
    }
    _data["rpc_application_state"] = rpcApplicationState;
    _data["store_application_state"] = storeApplicationState;
    _data["verification_state"] = verificationState;
    _data["interactions_endpoint_url"] = interactionsEndpointUrl;
    _data["integration_public"] = integrationPublic;
    _data["integration_require_code_grant"] = integrationRequireCodeGrant;
    _data["discoverability_state"] = discoverabilityState;
    _data["discovery_eligibility_flags"] = discoveryEligibilityFlags;
    if(bot != null) {
      _data["bot"] = bot?.toJson();
    }
    if(tags != null) {
      _data["tags"] = tags;
    }
    _data["cover_image"] = coverImage;
    if(installParams != null) {
      _data["install_params"] = installParams?.toJson();
    }
    _data["terms_of_service_url"] = termsOfServiceUrl;
    _data["privacy_policy_url"] = privacyPolicyUrl;
    if(team != null) {
      _data["team"] = team?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class Team {
  String? icon;
  List<Members>? members;
  String? name;
  String? ownerUserId;
  OwnerUser? ownerUser;
  String? id;

  Team({this.icon, this.members, this.name, this.ownerUserId, this.ownerUser, this.id});

  Team.fromJson(Map<String, dynamic> json) {
    icon = json["icon"];
    members = json["members"] == null ? null : (json["members"] as List).map((e) => Members.fromJson(e)).toList();
    name = json["name"];
    ownerUserId = json["owner_user_id"];
    ownerUser = json["owner_user"] == null ? null : OwnerUser.fromJson(json["owner_user"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["icon"] = icon;
    if(members != null) {
      _data["members"] = members?.map((e) => e.toJson()).toList();
    }
    _data["name"] = name;
    _data["owner_user_id"] = ownerUserId;
    if(ownerUser != null) {
      _data["owner_user"] = ownerUser?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class OwnerUser {
  String? username;
  String? discriminator;
  String? avatar;
  int? accentColor;
  String? banner;
  List<int>? themeColors;
  String? pronouns;
  String? phone;
  bool? desktop;
  bool? mobile;
  bool? premium;
  int? premiumType;
  bool? bot;
  String? bio;
  bool? system;
  bool? nsfwAllowed;
  bool? mfaEnabled;
  bool? webauthnEnabled;
  String? totpSecret;
  String? totpLastTicket;
  String? createdAt;
  String? premiumSince;
  bool? verified;
  bool? disabled;
  bool? deleted;
  String? email;
  String? flags;
  int? publicFlags;
  int? purchasedFlags;
  int? premiumUsageFlags;
  String? rights;
  List<Sessions8>? sessions;
  List<Relationships8>? relationships;
  List<ConnectedAccounts8>? connectedAccounts;
  Data8? data;
  List<String>? fingerprints;
  Settings9? settings;
  String? extendedSettings;
  List<SecurityKeys8>? securityKeys;
  String? id;

  OwnerUser({this.username, this.discriminator, this.avatar, this.accentColor, this.banner, this.themeColors, this.pronouns, this.phone, this.desktop, this.mobile, this.premium, this.premiumType, this.bot, this.bio, this.system, this.nsfwAllowed, this.mfaEnabled, this.webauthnEnabled, this.totpSecret, this.totpLastTicket, this.createdAt, this.premiumSince, this.verified, this.disabled, this.deleted, this.email, this.flags, this.publicFlags, this.purchasedFlags, this.premiumUsageFlags, this.rights, this.sessions, this.relationships, this.connectedAccounts, this.data, this.fingerprints, this.settings, this.extendedSettings, this.securityKeys, this.id});

  OwnerUser.fromJson(Map<String, dynamic> json) {
    username = json["username"];
    discriminator = json["discriminator"];
    avatar = json["avatar"];
    accentColor = json["accent_color"];
    banner = json["banner"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    phone = json["phone"];
    desktop = json["desktop"];
    mobile = json["mobile"];
    premium = json["premium"];
    premiumType = json["premium_type"];
    bot = json["bot"];
    bio = json["bio"];
    system = json["system"];
    nsfwAllowed = json["nsfw_allowed"];
    mfaEnabled = json["mfa_enabled"];
    webauthnEnabled = json["webauthn_enabled"];
    totpSecret = json["totp_secret"];
    totpLastTicket = json["totp_last_ticket"];
    createdAt = json["created_at"];
    premiumSince = json["premium_since"];
    verified = json["verified"];
    disabled = json["disabled"];
    deleted = json["deleted"];
    email = json["email"];
    flags = json["flags"];
    publicFlags = json["public_flags"];
    purchasedFlags = json["purchased_flags"];
    premiumUsageFlags = json["premium_usage_flags"];
    rights = json["rights"];
    sessions = json["sessions"] == null ? null : (json["sessions"] as List).map((e) => Sessions8.fromJson(e)).toList();
    relationships = json["relationships"] == null ? null : (json["relationships"] as List).map((e) => Relationships8.fromJson(e)).toList();
    connectedAccounts = json["connected_accounts"] == null ? null : (json["connected_accounts"] as List).map((e) => ConnectedAccounts8.fromJson(e)).toList();
    data = json["data"] == null ? null : Data8.fromJson(json["data"]);
    fingerprints = json["fingerprints"] == null ? null : List<String>.from(json["fingerprints"]);
    settings = json["settings"] == null ? null : Settings9.fromJson(json["settings"]);
    extendedSettings = json["extended_settings"];
    securityKeys = json["security_keys"] == null ? null : (json["security_keys"] as List).map((e) => SecurityKeys8.fromJson(e)).toList();
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["discriminator"] = discriminator;
    _data["avatar"] = avatar;
    _data["accent_color"] = accentColor;
    _data["banner"] = banner;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["phone"] = phone;
    _data["desktop"] = desktop;
    _data["mobile"] = mobile;
    _data["premium"] = premium;
    _data["premium_type"] = premiumType;
    _data["bot"] = bot;
    _data["bio"] = bio;
    _data["system"] = system;
    _data["nsfw_allowed"] = nsfwAllowed;
    _data["mfa_enabled"] = mfaEnabled;
    _data["webauthn_enabled"] = webauthnEnabled;
    _data["totp_secret"] = totpSecret;
    _data["totp_last_ticket"] = totpLastTicket;
    _data["created_at"] = createdAt;
    _data["premium_since"] = premiumSince;
    _data["verified"] = verified;
    _data["disabled"] = disabled;
    _data["deleted"] = deleted;
    _data["email"] = email;
    _data["flags"] = flags;
    _data["public_flags"] = publicFlags;
    _data["purchased_flags"] = purchasedFlags;
    _data["premium_usage_flags"] = premiumUsageFlags;
    _data["rights"] = rights;
    if(sessions != null) {
      _data["sessions"] = sessions?.map((e) => e.toJson()).toList();
    }
    if(relationships != null) {
      _data["relationships"] = relationships?.map((e) => e.toJson()).toList();
    }
    if(connectedAccounts != null) {
      _data["connected_accounts"] = connectedAccounts?.map((e) => e.toJson()).toList();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    if(fingerprints != null) {
      _data["fingerprints"] = fingerprints;
    }
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["extended_settings"] = extendedSettings;
    if(securityKeys != null) {
      _data["security_keys"] = securityKeys?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    return _data;
  }
}

class SecurityKeys8 {
  String? userId;
  String? user;
  String? keyId;
  String? publicKey;
  int? counter;
  String? name;
  String? id;

  SecurityKeys8({this.userId, this.user, this.keyId, this.publicKey, this.counter, this.name, this.id});

  SecurityKeys8.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    keyId = json["key_id"];
    publicKey = json["public_key"];
    counter = json["counter"];
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["key_id"] = keyId;
    _data["public_key"] = publicKey;
    _data["counter"] = counter;
    _data["name"] = name;
    _data["id"] = id;
    return _data;
  }
}

class Settings9 {
  String? index;
  int? afkTimeout;
  bool? allowAccessibilityDetection;
  bool? animateEmoji;
  int? animateStickers;
  bool? contactSyncEnabled;
  bool? convertEmoticons;
  CustomStatus8? customStatus;
  bool? defaultGuildsRestricted;
  bool? detectPlatformAccounts;
  bool? developerMode;
  bool? disableGamesTab;
  bool? enableTtsCommand;
  int? explicitContentFilter;
  FriendSourceFlags8? friendSourceFlags;
  bool? gatewayConnected;
  bool? gifAutoPlay;
  List<GuildFolders8>? guildFolders;
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

  Settings9({this.index, this.afkTimeout, this.allowAccessibilityDetection, this.animateEmoji, this.animateStickers, this.contactSyncEnabled, this.convertEmoticons, this.customStatus, this.defaultGuildsRestricted, this.detectPlatformAccounts, this.developerMode, this.disableGamesTab, this.enableTtsCommand, this.explicitContentFilter, this.friendSourceFlags, this.gatewayConnected, this.gifAutoPlay, this.guildFolders, this.guildPositions, this.inlineAttachmentMedia, this.inlineEmbedMedia, this.locale, this.messageDisplayCompact, this.nativePhoneIntegrationEnabled, this.renderEmbeds, this.renderReactions, this.restrictedGuilds, this.showCurrentGame, this.status, this.streamNotificationsEnabled, this.theme, this.timezoneOffset});

  Settings9.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    afkTimeout = json["afk_timeout"];
    allowAccessibilityDetection = json["allow_accessibility_detection"];
    animateEmoji = json["animate_emoji"];
    animateStickers = json["animate_stickers"];
    contactSyncEnabled = json["contact_sync_enabled"];
    convertEmoticons = json["convert_emoticons"];
    customStatus = json["custom_status"] == null ? null : CustomStatus8.fromJson(json["custom_status"]);
    defaultGuildsRestricted = json["default_guilds_restricted"];
    detectPlatformAccounts = json["detect_platform_accounts"];
    developerMode = json["developer_mode"];
    disableGamesTab = json["disable_games_tab"];
    enableTtsCommand = json["enable_tts_command"];
    explicitContentFilter = json["explicit_content_filter"];
    friendSourceFlags = json["friend_source_flags"] == null ? null : FriendSourceFlags8.fromJson(json["friend_source_flags"]);
    gatewayConnected = json["gateway_connected"];
    gifAutoPlay = json["gif_auto_play"];
    guildFolders = json["guild_folders"] == null ? null : (json["guild_folders"] as List).map((e) => GuildFolders8.fromJson(e)).toList();
    guildPositions = json["guild_positions"] == null ? null : List<String>.from(json["guild_positions"]);
    inlineAttachmentMedia = json["inline_attachment_media"];
    inlineEmbedMedia = json["inline_embed_media"];
    locale = json["locale"];
    messageDisplayCompact = json["message_display_compact"];
    nativePhoneIntegrationEnabled = json["native_phone_integration_enabled"];
    renderEmbeds = json["render_embeds"];
    renderReactions = json["render_reactions"];
    restrictedGuilds = json["restricted_guilds"] == null ? null : List<String>.from(json["restricted_guilds"]);
    showCurrentGame = json["show_current_game"];
    status = json["status"];
    streamNotificationsEnabled = json["stream_notifications_enabled"];
    theme = json["theme"];
    timezoneOffset = json["timezone_offset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["afk_timeout"] = afkTimeout;
    _data["allow_accessibility_detection"] = allowAccessibilityDetection;
    _data["animate_emoji"] = animateEmoji;
    _data["animate_stickers"] = animateStickers;
    _data["contact_sync_enabled"] = contactSyncEnabled;
    _data["convert_emoticons"] = convertEmoticons;
    if(customStatus != null) {
      _data["custom_status"] = customStatus?.toJson();
    }
    _data["default_guilds_restricted"] = defaultGuildsRestricted;
    _data["detect_platform_accounts"] = detectPlatformAccounts;
    _data["developer_mode"] = developerMode;
    _data["disable_games_tab"] = disableGamesTab;
    _data["enable_tts_command"] = enableTtsCommand;
    _data["explicit_content_filter"] = explicitContentFilter;
    if(friendSourceFlags != null) {
      _data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    _data["gateway_connected"] = gatewayConnected;
    _data["gif_auto_play"] = gifAutoPlay;
    if(guildFolders != null) {
      _data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if(guildPositions != null) {
      _data["guild_positions"] = guildPositions;
    }
    _data["inline_attachment_media"] = inlineAttachmentMedia;
    _data["inline_embed_media"] = inlineEmbedMedia;
    _data["locale"] = locale;
    _data["message_display_compact"] = messageDisplayCompact;
    _data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    _data["render_embeds"] = renderEmbeds;
    _data["render_reactions"] = renderReactions;
    if(restrictedGuilds != null) {
      _data["restricted_guilds"] = restrictedGuilds;
    }
    _data["show_current_game"] = showCurrentGame;
    _data["status"] = status;
    _data["stream_notifications_enabled"] = streamNotificationsEnabled;
    _data["theme"] = theme;
    _data["timezone_offset"] = timezoneOffset;
    return _data;
  }
}

class GuildFolders8 {
  int? color;
  List<String>? guildIds;
  int? id;
  String? name;

  GuildFolders8({this.color, this.guildIds, this.id, this.name});

  GuildFolders8.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    guildIds = json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    if(guildIds != null) {
      _data["guild_ids"] = guildIds;
    }
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class FriendSourceFlags8 {
  bool? all;

  FriendSourceFlags8({this.all});

  FriendSourceFlags8.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["all"] = all;
    return _data;
  }
}

class CustomStatus8 {
  String? emojiId;
  String? emojiName;
  int? expiresAt;
  String? text;

  CustomStatus8({this.emojiId, this.emojiName, this.expiresAt, this.text});

  CustomStatus8.fromJson(Map<String, dynamic> json) {
    emojiId = json["emoji_id"];
    emojiName = json["emoji_name"];
    expiresAt = json["expires_at"];
    text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["emoji_id"] = emojiId;
    _data["emoji_name"] = emojiName;
    _data["expires_at"] = expiresAt;
    _data["text"] = text;
    return _data;
  }
}

class Data8 {
  String? validTokensSince;
  String? hash;

  Data8({this.validTokensSince, this.hash});

  Data8.fromJson(Map<String, dynamic> json) {
    validTokensSince = json["valid_tokens_since"];
    hash = json["hash"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["valid_tokens_since"] = validTokensSince;
    _data["hash"] = hash;
    return _data;
  }
}

class ConnectedAccounts8 {
  String? externalId;
  String? userId;
  String? user;
  bool? friendSync;
  String? name;
  bool? revoked;
  int? showActivity;
  String? type;
  bool? verified;
  int? visibility;
  List<String>? integrations;
  dynamic metadata;
  int? metadataVisibility;
  bool? twoWayLink;
  TokenData8? tokenData;
  String? id;

  ConnectedAccounts8({this.externalId, this.userId, this.user, this.friendSync, this.name, this.revoked, this.showActivity, this.type, this.verified, this.visibility, this.integrations, this.metadata, this.metadataVisibility, this.twoWayLink, this.tokenData, this.id});

  ConnectedAccounts8.fromJson(Map<String, dynamic> json) {
    externalId = json["external_id"];
    userId = json["user_id"];
    user = json["user"];
    friendSync = json["friend_sync"];
    name = json["name"];
    revoked = json["revoked"];
    showActivity = json["show_activity"];
    type = json["type"];
    verified = json["verified"];
    visibility = json["visibility"];
    integrations = json["integrations"] == null ? null : List<String>.from(json["integrations"]);
    metadata = json["metadata_"];
    metadataVisibility = json["metadata_visibility"];
    twoWayLink = json["two_way_link"];
    tokenData = json["token_data"] == null ? null : TokenData8.fromJson(json["token_data"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["external_id"] = externalId;
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["friend_sync"] = friendSync;
    _data["name"] = name;
    _data["revoked"] = revoked;
    _data["show_activity"] = showActivity;
    _data["type"] = type;
    _data["verified"] = verified;
    _data["visibility"] = visibility;
    if(integrations != null) {
      _data["integrations"] = integrations;
    }
    _data["metadata_"] = metadata;
    _data["metadata_visibility"] = metadataVisibility;
    _data["two_way_link"] = twoWayLink;
    if(tokenData != null) {
      _data["token_data"] = tokenData?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class TokenData8 {
  String? accessToken;
  String? tokenType;
  String? scope;
  String? refreshToken;
  int? expiresIn;
  int? expiresAt;
  int? fetchedAt;

  TokenData8({this.accessToken, this.tokenType, this.scope, this.refreshToken, this.expiresIn, this.expiresAt, this.fetchedAt});

  TokenData8.fromJson(Map<String, dynamic> json) {
    accessToken = json["access_token"];
    tokenType = json["token_type"];
    scope = json["scope"];
    refreshToken = json["refresh_token"];
    expiresIn = json["expires_in"];
    expiresAt = json["expires_at"];
    fetchedAt = json["fetched_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    _data["token_type"] = tokenType;
    _data["scope"] = scope;
    _data["refresh_token"] = refreshToken;
    _data["expires_in"] = expiresIn;
    _data["expires_at"] = expiresAt;
    _data["fetched_at"] = fetchedAt;
    return _data;
  }
}

class Relationships8 {
  String? fromId;
  String? from;
  String? toId;
  String? to;
  String? nickname;
  int? type;
  String? id;

  Relationships8({this.fromId, this.from, this.toId, this.to, this.nickname, this.type, this.id});

  Relationships8.fromJson(Map<String, dynamic> json) {
    fromId = json["from_id"];
    from = json["from"];
    toId = json["to_id"];
    to = json["to"];
    nickname = json["nickname"];
    type = json["type"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["from_id"] = fromId;
    _data["from"] = from;
    _data["to_id"] = toId;
    _data["to"] = to;
    _data["nickname"] = nickname;
    _data["type"] = type;
    _data["id"] = id;
    return _data;
  }
}

class Sessions8 {
  String? userId;
  String? user;
  String? sessionId;
  List<Activities8>? activities;
  ClientInfo8? clientInfo;
  String? status;
  String? id;

  Sessions8({this.userId, this.user, this.sessionId, this.activities, this.clientInfo, this.status, this.id});

  Sessions8.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    sessionId = json["session_id"];
    activities = json["activities"] == null ? null : (json["activities"] as List).map((e) => Activities8.fromJson(e)).toList();
    clientInfo = json["client_info"] == null ? null : ClientInfo8.fromJson(json["client_info"]);
    status = json["status"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["session_id"] = sessionId;
    if(activities != null) {
      _data["activities"] = activities?.map((e) => e.toJson()).toList();
    }
    if(clientInfo != null) {
      _data["client_info"] = clientInfo?.toJson();
    }
    _data["status"] = status;
    _data["id"] = id;
    return _data;
  }
}

class ClientInfo8 {
  String? client;
  String? os;
  int? version;

  ClientInfo8({this.client, this.os, this.version});

  ClientInfo8.fromJson(Map<String, dynamic> json) {
    client = json["client"];
    os = json["os"];
    version = json["version"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["client"] = client;
    _data["os"] = os;
    _data["version"] = version;
    return _data;
  }
}

class Activities8 {
  String? name;
  int? type;
  String? url;
  int? createdAt;
  Timestamps8? timestamps;
  String? applicationId;
  String? details;
  String? state;
  Emoji8? emoji;
  Party8? party;
  Assets8? assets;
  Secrets8? secrets;
  bool? instance;
  String? flags;
  String? id;
  String? syncId;
  Metadata8? metadata;
  String? sessionId;

  Activities8({this.name, this.type, this.url, this.createdAt, this.timestamps, this.applicationId, this.details, this.state, this.emoji, this.party, this.assets, this.secrets, this.instance, this.flags, this.id, this.syncId, this.metadata, this.sessionId});

  Activities8.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    type = json["type"];
    url = json["url"];
    createdAt = json["created_at"];
    timestamps = json["timestamps"] == null ? null : Timestamps8.fromJson(json["timestamps"]);
    applicationId = json["application_id"];
    details = json["details"];
    state = json["state"];
    emoji = json["emoji"] == null ? null : Emoji8.fromJson(json["emoji"]);
    party = json["party"] == null ? null : Party8.fromJson(json["party"]);
    assets = json["assets"] == null ? null : Assets8.fromJson(json["assets"]);
    secrets = json["secrets"] == null ? null : Secrets8.fromJson(json["secrets"]);
    instance = json["instance"];
    flags = json["flags"];
    id = json["id"];
    syncId = json["sync_id"];
    metadata = json["metadata"] == null ? null : Metadata8.fromJson(json["metadata"]);
    sessionId = json["session_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["type"] = type;
    _data["url"] = url;
    _data["created_at"] = createdAt;
    if(timestamps != null) {
      _data["timestamps"] = timestamps?.toJson();
    }
    _data["application_id"] = applicationId;
    _data["details"] = details;
    _data["state"] = state;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    if(party != null) {
      _data["party"] = party?.toJson();
    }
    if(assets != null) {
      _data["assets"] = assets?.toJson();
    }
    if(secrets != null) {
      _data["secrets"] = secrets?.toJson();
    }
    _data["instance"] = instance;
    _data["flags"] = flags;
    _data["id"] = id;
    _data["sync_id"] = syncId;
    if(metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    _data["session_id"] = sessionId;
    return _data;
  }
}

class Metadata8 {
  String? contextUri;
  String? albumId;
  List<String>? artistIds;

  Metadata8({this.contextUri, this.albumId, this.artistIds});

  Metadata8.fromJson(Map<String, dynamic> json) {
    contextUri = json["context_uri"];
    albumId = json["album_id"];
    artistIds = json["artist_ids"] == null ? null : List<String>.from(json["artist_ids"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["context_uri"] = contextUri;
    _data["album_id"] = albumId;
    if(artistIds != null) {
      _data["artist_ids"] = artistIds;
    }
    return _data;
  }
}

class Secrets8 {
  String? join;
  String? spectate;
  String? match;

  Secrets8({this.join, this.spectate, this.match});

  Secrets8.fromJson(Map<String, dynamic> json) {
    join = json["join"];
    spectate = json["spectate"];
    match = json["match"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["join"] = join;
    _data["spectate"] = spectate;
    _data["match"] = match;
    return _data;
  }
}

class Assets8 {
  String? largeImage;
  String? largeText;
  String? smallImage;
  String? smallText;

  Assets8({this.largeImage, this.largeText, this.smallImage, this.smallText});

  Assets8.fromJson(Map<String, dynamic> json) {
    largeImage = json["large_image"];
    largeText = json["large_text"];
    smallImage = json["small_image"];
    smallText = json["small_text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["large_image"] = largeImage;
    _data["large_text"] = largeText;
    _data["small_image"] = smallImage;
    _data["small_text"] = smallText;
    return _data;
  }
}

class Party8 {
  String? id;
  List<int>? size;

  Party8({this.id, this.size});

  Party8.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    size = json["size"] == null ? null : List<int>.from(json["size"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if(size != null) {
      _data["size"] = size;
    }
    return _data;
  }
}

class Emoji8 {
  String? name;
  String? id;
  bool? animated;

  Emoji8({this.name, this.id, this.animated});

  Emoji8.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["id"] = id;
    _data["animated"] = animated;
    return _data;
  }
}

class Timestamps8 {
  int? start;
  int? end;

  Timestamps8({this.start, this.end});

  Timestamps8.fromJson(Map<String, dynamic> json) {
    start = json["start"];
    end = json["end"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }
}

class Members {
  int? membershipState;
  List<String>? permissions;
  String? teamId;
  String? team;
  String? userId;
  User2? user;
  String? id;

  Members({this.membershipState, this.permissions, this.teamId, this.team, this.userId, this.user, this.id});

  Members.fromJson(Map<String, dynamic> json) {
    membershipState = json["membership_state"];
    permissions = json["permissions"] == null ? null : List<String>.from(json["permissions"]);
    teamId = json["team_id"];
    team = json["team"];
    userId = json["user_id"];
    user = json["user"] == null ? null : User2.fromJson(json["user"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["membership_state"] = membershipState;
    if(permissions != null) {
      _data["permissions"] = permissions;
    }
    _data["team_id"] = teamId;
    _data["team"] = team;
    _data["user_id"] = userId;
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class User2 {
  String? username;
  String? discriminator;
  String? avatar;
  int? accentColor;
  String? banner;
  List<int>? themeColors;
  String? pronouns;
  String? phone;
  bool? desktop;
  bool? mobile;
  bool? premium;
  int? premiumType;
  bool? bot;
  String? bio;
  bool? system;
  bool? nsfwAllowed;
  bool? mfaEnabled;
  bool? webauthnEnabled;
  String? totpSecret;
  String? totpLastTicket;
  String? createdAt;
  String? premiumSince;
  bool? verified;
  bool? disabled;
  bool? deleted;
  String? email;
  String? flags;
  int? publicFlags;
  int? purchasedFlags;
  int? premiumUsageFlags;
  String? rights;
  List<Sessions7>? sessions;
  List<Relationships7>? relationships;
  List<ConnectedAccounts7>? connectedAccounts;
  Data7? data;
  List<String>? fingerprints;
  Settings8? settings;
  String? extendedSettings;
  List<SecurityKeys7>? securityKeys;
  String? id;

  User2({this.username, this.discriminator, this.avatar, this.accentColor, this.banner, this.themeColors, this.pronouns, this.phone, this.desktop, this.mobile, this.premium, this.premiumType, this.bot, this.bio, this.system, this.nsfwAllowed, this.mfaEnabled, this.webauthnEnabled, this.totpSecret, this.totpLastTicket, this.createdAt, this.premiumSince, this.verified, this.disabled, this.deleted, this.email, this.flags, this.publicFlags, this.purchasedFlags, this.premiumUsageFlags, this.rights, this.sessions, this.relationships, this.connectedAccounts, this.data, this.fingerprints, this.settings, this.extendedSettings, this.securityKeys, this.id});

  User2.fromJson(Map<String, dynamic> json) {
    username = json["username"];
    discriminator = json["discriminator"];
    avatar = json["avatar"];
    accentColor = json["accent_color"];
    banner = json["banner"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    phone = json["phone"];
    desktop = json["desktop"];
    mobile = json["mobile"];
    premium = json["premium"];
    premiumType = json["premium_type"];
    bot = json["bot"];
    bio = json["bio"];
    system = json["system"];
    nsfwAllowed = json["nsfw_allowed"];
    mfaEnabled = json["mfa_enabled"];
    webauthnEnabled = json["webauthn_enabled"];
    totpSecret = json["totp_secret"];
    totpLastTicket = json["totp_last_ticket"];
    createdAt = json["created_at"];
    premiumSince = json["premium_since"];
    verified = json["verified"];
    disabled = json["disabled"];
    deleted = json["deleted"];
    email = json["email"];
    flags = json["flags"];
    publicFlags = json["public_flags"];
    purchasedFlags = json["purchased_flags"];
    premiumUsageFlags = json["premium_usage_flags"];
    rights = json["rights"];
    sessions = json["sessions"] == null ? null : (json["sessions"] as List).map((e) => Sessions7.fromJson(e)).toList();
    relationships = json["relationships"] == null ? null : (json["relationships"] as List).map((e) => Relationships7.fromJson(e)).toList();
    connectedAccounts = json["connected_accounts"] == null ? null : (json["connected_accounts"] as List).map((e) => ConnectedAccounts7.fromJson(e)).toList();
    data = json["data"] == null ? null : Data7.fromJson(json["data"]);
    fingerprints = json["fingerprints"] == null ? null : List<String>.from(json["fingerprints"]);
    settings = json["settings"] == null ? null : Settings8.fromJson(json["settings"]);
    extendedSettings = json["extended_settings"];
    securityKeys = json["security_keys"] == null ? null : (json["security_keys"] as List).map((e) => SecurityKeys7.fromJson(e)).toList();
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["discriminator"] = discriminator;
    _data["avatar"] = avatar;
    _data["accent_color"] = accentColor;
    _data["banner"] = banner;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["phone"] = phone;
    _data["desktop"] = desktop;
    _data["mobile"] = mobile;
    _data["premium"] = premium;
    _data["premium_type"] = premiumType;
    _data["bot"] = bot;
    _data["bio"] = bio;
    _data["system"] = system;
    _data["nsfw_allowed"] = nsfwAllowed;
    _data["mfa_enabled"] = mfaEnabled;
    _data["webauthn_enabled"] = webauthnEnabled;
    _data["totp_secret"] = totpSecret;
    _data["totp_last_ticket"] = totpLastTicket;
    _data["created_at"] = createdAt;
    _data["premium_since"] = premiumSince;
    _data["verified"] = verified;
    _data["disabled"] = disabled;
    _data["deleted"] = deleted;
    _data["email"] = email;
    _data["flags"] = flags;
    _data["public_flags"] = publicFlags;
    _data["purchased_flags"] = purchasedFlags;
    _data["premium_usage_flags"] = premiumUsageFlags;
    _data["rights"] = rights;
    if(sessions != null) {
      _data["sessions"] = sessions?.map((e) => e.toJson()).toList();
    }
    if(relationships != null) {
      _data["relationships"] = relationships?.map((e) => e.toJson()).toList();
    }
    if(connectedAccounts != null) {
      _data["connected_accounts"] = connectedAccounts?.map((e) => e.toJson()).toList();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    if(fingerprints != null) {
      _data["fingerprints"] = fingerprints;
    }
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["extended_settings"] = extendedSettings;
    if(securityKeys != null) {
      _data["security_keys"] = securityKeys?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    return _data;
  }
}

class SecurityKeys7 {
  String? userId;
  String? user;
  String? keyId;
  String? publicKey;
  int? counter;
  String? name;
  String? id;

  SecurityKeys7({this.userId, this.user, this.keyId, this.publicKey, this.counter, this.name, this.id});

  SecurityKeys7.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    keyId = json["key_id"];
    publicKey = json["public_key"];
    counter = json["counter"];
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["key_id"] = keyId;
    _data["public_key"] = publicKey;
    _data["counter"] = counter;
    _data["name"] = name;
    _data["id"] = id;
    return _data;
  }
}

class Settings8 {
  String? index;
  int? afkTimeout;
  bool? allowAccessibilityDetection;
  bool? animateEmoji;
  int? animateStickers;
  bool? contactSyncEnabled;
  bool? convertEmoticons;
  CustomStatus7? customStatus;
  bool? defaultGuildsRestricted;
  bool? detectPlatformAccounts;
  bool? developerMode;
  bool? disableGamesTab;
  bool? enableTtsCommand;
  int? explicitContentFilter;
  FriendSourceFlags7? friendSourceFlags;
  bool? gatewayConnected;
  bool? gifAutoPlay;
  List<GuildFolders7>? guildFolders;
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

  Settings8({this.index, this.afkTimeout, this.allowAccessibilityDetection, this.animateEmoji, this.animateStickers, this.contactSyncEnabled, this.convertEmoticons, this.customStatus, this.defaultGuildsRestricted, this.detectPlatformAccounts, this.developerMode, this.disableGamesTab, this.enableTtsCommand, this.explicitContentFilter, this.friendSourceFlags, this.gatewayConnected, this.gifAutoPlay, this.guildFolders, this.guildPositions, this.inlineAttachmentMedia, this.inlineEmbedMedia, this.locale, this.messageDisplayCompact, this.nativePhoneIntegrationEnabled, this.renderEmbeds, this.renderReactions, this.restrictedGuilds, this.showCurrentGame, this.status, this.streamNotificationsEnabled, this.theme, this.timezoneOffset});

  Settings8.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    afkTimeout = json["afk_timeout"];
    allowAccessibilityDetection = json["allow_accessibility_detection"];
    animateEmoji = json["animate_emoji"];
    animateStickers = json["animate_stickers"];
    contactSyncEnabled = json["contact_sync_enabled"];
    convertEmoticons = json["convert_emoticons"];
    customStatus = json["custom_status"] == null ? null : CustomStatus7.fromJson(json["custom_status"]);
    defaultGuildsRestricted = json["default_guilds_restricted"];
    detectPlatformAccounts = json["detect_platform_accounts"];
    developerMode = json["developer_mode"];
    disableGamesTab = json["disable_games_tab"];
    enableTtsCommand = json["enable_tts_command"];
    explicitContentFilter = json["explicit_content_filter"];
    friendSourceFlags = json["friend_source_flags"] == null ? null : FriendSourceFlags7.fromJson(json["friend_source_flags"]);
    gatewayConnected = json["gateway_connected"];
    gifAutoPlay = json["gif_auto_play"];
    guildFolders = json["guild_folders"] == null ? null : (json["guild_folders"] as List).map((e) => GuildFolders7.fromJson(e)).toList();
    guildPositions = json["guild_positions"] == null ? null : List<String>.from(json["guild_positions"]);
    inlineAttachmentMedia = json["inline_attachment_media"];
    inlineEmbedMedia = json["inline_embed_media"];
    locale = json["locale"];
    messageDisplayCompact = json["message_display_compact"];
    nativePhoneIntegrationEnabled = json["native_phone_integration_enabled"];
    renderEmbeds = json["render_embeds"];
    renderReactions = json["render_reactions"];
    restrictedGuilds = json["restricted_guilds"] == null ? null : List<String>.from(json["restricted_guilds"]);
    showCurrentGame = json["show_current_game"];
    status = json["status"];
    streamNotificationsEnabled = json["stream_notifications_enabled"];
    theme = json["theme"];
    timezoneOffset = json["timezone_offset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["afk_timeout"] = afkTimeout;
    _data["allow_accessibility_detection"] = allowAccessibilityDetection;
    _data["animate_emoji"] = animateEmoji;
    _data["animate_stickers"] = animateStickers;
    _data["contact_sync_enabled"] = contactSyncEnabled;
    _data["convert_emoticons"] = convertEmoticons;
    if(customStatus != null) {
      _data["custom_status"] = customStatus?.toJson();
    }
    _data["default_guilds_restricted"] = defaultGuildsRestricted;
    _data["detect_platform_accounts"] = detectPlatformAccounts;
    _data["developer_mode"] = developerMode;
    _data["disable_games_tab"] = disableGamesTab;
    _data["enable_tts_command"] = enableTtsCommand;
    _data["explicit_content_filter"] = explicitContentFilter;
    if(friendSourceFlags != null) {
      _data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    _data["gateway_connected"] = gatewayConnected;
    _data["gif_auto_play"] = gifAutoPlay;
    if(guildFolders != null) {
      _data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if(guildPositions != null) {
      _data["guild_positions"] = guildPositions;
    }
    _data["inline_attachment_media"] = inlineAttachmentMedia;
    _data["inline_embed_media"] = inlineEmbedMedia;
    _data["locale"] = locale;
    _data["message_display_compact"] = messageDisplayCompact;
    _data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    _data["render_embeds"] = renderEmbeds;
    _data["render_reactions"] = renderReactions;
    if(restrictedGuilds != null) {
      _data["restricted_guilds"] = restrictedGuilds;
    }
    _data["show_current_game"] = showCurrentGame;
    _data["status"] = status;
    _data["stream_notifications_enabled"] = streamNotificationsEnabled;
    _data["theme"] = theme;
    _data["timezone_offset"] = timezoneOffset;
    return _data;
  }
}

class GuildFolders7 {
  int? color;
  List<String>? guildIds;
  int? id;
  String? name;

  GuildFolders7({this.color, this.guildIds, this.id, this.name});

  GuildFolders7.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    guildIds = json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    if(guildIds != null) {
      _data["guild_ids"] = guildIds;
    }
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class FriendSourceFlags7 {
  bool? all;

  FriendSourceFlags7({this.all});

  FriendSourceFlags7.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["all"] = all;
    return _data;
  }
}

class CustomStatus7 {
  String? emojiId;
  String? emojiName;
  int? expiresAt;
  String? text;

  CustomStatus7({this.emojiId, this.emojiName, this.expiresAt, this.text});

  CustomStatus7.fromJson(Map<String, dynamic> json) {
    emojiId = json["emoji_id"];
    emojiName = json["emoji_name"];
    expiresAt = json["expires_at"];
    text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["emoji_id"] = emojiId;
    _data["emoji_name"] = emojiName;
    _data["expires_at"] = expiresAt;
    _data["text"] = text;
    return _data;
  }
}

class Data7 {
  String? validTokensSince;
  String? hash;

  Data7({this.validTokensSince, this.hash});

  Data7.fromJson(Map<String, dynamic> json) {
    validTokensSince = json["valid_tokens_since"];
    hash = json["hash"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["valid_tokens_since"] = validTokensSince;
    _data["hash"] = hash;
    return _data;
  }
}

class ConnectedAccounts7 {
  String? externalId;
  String? userId;
  String? user;
  bool? friendSync;
  String? name;
  bool? revoked;
  int? showActivity;
  String? type;
  bool? verified;
  int? visibility;
  List<String>? integrations;
  dynamic metadata;
  int? metadataVisibility;
  bool? twoWayLink;
  TokenData7? tokenData;
  String? id;

  ConnectedAccounts7({this.externalId, this.userId, this.user, this.friendSync, this.name, this.revoked, this.showActivity, this.type, this.verified, this.visibility, this.integrations, this.metadata, this.metadataVisibility, this.twoWayLink, this.tokenData, this.id});

  ConnectedAccounts7.fromJson(Map<String, dynamic> json) {
    externalId = json["external_id"];
    userId = json["user_id"];
    user = json["user"];
    friendSync = json["friend_sync"];
    name = json["name"];
    revoked = json["revoked"];
    showActivity = json["show_activity"];
    type = json["type"];
    verified = json["verified"];
    visibility = json["visibility"];
    integrations = json["integrations"] == null ? null : List<String>.from(json["integrations"]);
    metadata = json["metadata_"];
    metadataVisibility = json["metadata_visibility"];
    twoWayLink = json["two_way_link"];
    tokenData = json["token_data"] == null ? null : TokenData7.fromJson(json["token_data"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["external_id"] = externalId;
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["friend_sync"] = friendSync;
    _data["name"] = name;
    _data["revoked"] = revoked;
    _data["show_activity"] = showActivity;
    _data["type"] = type;
    _data["verified"] = verified;
    _data["visibility"] = visibility;
    if(integrations != null) {
      _data["integrations"] = integrations;
    }
    _data["metadata_"] = metadata;
    _data["metadata_visibility"] = metadataVisibility;
    _data["two_way_link"] = twoWayLink;
    if(tokenData != null) {
      _data["token_data"] = tokenData?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class TokenData7 {
  String? accessToken;
  String? tokenType;
  String? scope;
  String? refreshToken;
  int? expiresIn;
  int? expiresAt;
  int? fetchedAt;

  TokenData7({this.accessToken, this.tokenType, this.scope, this.refreshToken, this.expiresIn, this.expiresAt, this.fetchedAt});

  TokenData7.fromJson(Map<String, dynamic> json) {
    accessToken = json["access_token"];
    tokenType = json["token_type"];
    scope = json["scope"];
    refreshToken = json["refresh_token"];
    expiresIn = json["expires_in"];
    expiresAt = json["expires_at"];
    fetchedAt = json["fetched_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    _data["token_type"] = tokenType;
    _data["scope"] = scope;
    _data["refresh_token"] = refreshToken;
    _data["expires_in"] = expiresIn;
    _data["expires_at"] = expiresAt;
    _data["fetched_at"] = fetchedAt;
    return _data;
  }
}

class Relationships7 {
  String? fromId;
  String? from;
  String? toId;
  String? to;
  String? nickname;
  int? type;
  String? id;

  Relationships7({this.fromId, this.from, this.toId, this.to, this.nickname, this.type, this.id});

  Relationships7.fromJson(Map<String, dynamic> json) {
    fromId = json["from_id"];
    from = json["from"];
    toId = json["to_id"];
    to = json["to"];
    nickname = json["nickname"];
    type = json["type"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["from_id"] = fromId;
    _data["from"] = from;
    _data["to_id"] = toId;
    _data["to"] = to;
    _data["nickname"] = nickname;
    _data["type"] = type;
    _data["id"] = id;
    return _data;
  }
}

class Sessions7 {
  String? userId;
  String? user;
  String? sessionId;
  List<Activities7>? activities;
  ClientInfo7? clientInfo;
  String? status;
  String? id;

  Sessions7({this.userId, this.user, this.sessionId, this.activities, this.clientInfo, this.status, this.id});

  Sessions7.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    sessionId = json["session_id"];
    activities = json["activities"] == null ? null : (json["activities"] as List).map((e) => Activities7.fromJson(e)).toList();
    clientInfo = json["client_info"] == null ? null : ClientInfo7.fromJson(json["client_info"]);
    status = json["status"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["session_id"] = sessionId;
    if(activities != null) {
      _data["activities"] = activities?.map((e) => e.toJson()).toList();
    }
    if(clientInfo != null) {
      _data["client_info"] = clientInfo?.toJson();
    }
    _data["status"] = status;
    _data["id"] = id;
    return _data;
  }
}

class ClientInfo7 {
  String? client;
  String? os;
  int? version;

  ClientInfo7({this.client, this.os, this.version});

  ClientInfo7.fromJson(Map<String, dynamic> json) {
    client = json["client"];
    os = json["os"];
    version = json["version"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["client"] = client;
    _data["os"] = os;
    _data["version"] = version;
    return _data;
  }
}

class Activities7 {
  String? name;
  int? type;
  String? url;
  int? createdAt;
  Timestamps7? timestamps;
  String? applicationId;
  String? details;
  String? state;
  Emoji7? emoji;
  Party7? party;
  Assets7? assets;
  Secrets7? secrets;
  bool? instance;
  String? flags;
  String? id;
  String? syncId;
  Metadata7? metadata;
  String? sessionId;

  Activities7({this.name, this.type, this.url, this.createdAt, this.timestamps, this.applicationId, this.details, this.state, this.emoji, this.party, this.assets, this.secrets, this.instance, this.flags, this.id, this.syncId, this.metadata, this.sessionId});

  Activities7.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    type = json["type"];
    url = json["url"];
    createdAt = json["created_at"];
    timestamps = json["timestamps"] == null ? null : Timestamps7.fromJson(json["timestamps"]);
    applicationId = json["application_id"];
    details = json["details"];
    state = json["state"];
    emoji = json["emoji"] == null ? null : Emoji7.fromJson(json["emoji"]);
    party = json["party"] == null ? null : Party7.fromJson(json["party"]);
    assets = json["assets"] == null ? null : Assets7.fromJson(json["assets"]);
    secrets = json["secrets"] == null ? null : Secrets7.fromJson(json["secrets"]);
    instance = json["instance"];
    flags = json["flags"];
    id = json["id"];
    syncId = json["sync_id"];
    metadata = json["metadata"] == null ? null : Metadata7.fromJson(json["metadata"]);
    sessionId = json["session_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["type"] = type;
    _data["url"] = url;
    _data["created_at"] = createdAt;
    if(timestamps != null) {
      _data["timestamps"] = timestamps?.toJson();
    }
    _data["application_id"] = applicationId;
    _data["details"] = details;
    _data["state"] = state;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    if(party != null) {
      _data["party"] = party?.toJson();
    }
    if(assets != null) {
      _data["assets"] = assets?.toJson();
    }
    if(secrets != null) {
      _data["secrets"] = secrets?.toJson();
    }
    _data["instance"] = instance;
    _data["flags"] = flags;
    _data["id"] = id;
    _data["sync_id"] = syncId;
    if(metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    _data["session_id"] = sessionId;
    return _data;
  }
}

class Metadata7 {
  String? contextUri;
  String? albumId;
  List<String>? artistIds;

  Metadata7({this.contextUri, this.albumId, this.artistIds});

  Metadata7.fromJson(Map<String, dynamic> json) {
    contextUri = json["context_uri"];
    albumId = json["album_id"];
    artistIds = json["artist_ids"] == null ? null : List<String>.from(json["artist_ids"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["context_uri"] = contextUri;
    _data["album_id"] = albumId;
    if(artistIds != null) {
      _data["artist_ids"] = artistIds;
    }
    return _data;
  }
}

class Secrets7 {
  String? join;
  String? spectate;
  String? match;

  Secrets7({this.join, this.spectate, this.match});

  Secrets7.fromJson(Map<String, dynamic> json) {
    join = json["join"];
    spectate = json["spectate"];
    match = json["match"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["join"] = join;
    _data["spectate"] = spectate;
    _data["match"] = match;
    return _data;
  }
}

class Assets7 {
  String? largeImage;
  String? largeText;
  String? smallImage;
  String? smallText;

  Assets7({this.largeImage, this.largeText, this.smallImage, this.smallText});

  Assets7.fromJson(Map<String, dynamic> json) {
    largeImage = json["large_image"];
    largeText = json["large_text"];
    smallImage = json["small_image"];
    smallText = json["small_text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["large_image"] = largeImage;
    _data["large_text"] = largeText;
    _data["small_image"] = smallImage;
    _data["small_text"] = smallText;
    return _data;
  }
}

class Party7 {
  String? id;
  List<int>? size;

  Party7({this.id, this.size});

  Party7.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    size = json["size"] == null ? null : List<int>.from(json["size"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if(size != null) {
      _data["size"] = size;
    }
    return _data;
  }
}

class Emoji7 {
  String? name;
  String? id;
  bool? animated;

  Emoji7({this.name, this.id, this.animated});

  Emoji7.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["id"] = id;
    _data["animated"] = animated;
    return _data;
  }
}

class Timestamps7 {
  int? start;
  int? end;

  Timestamps7({this.start, this.end});

  Timestamps7.fromJson(Map<String, dynamic> json) {
    start = json["start"];
    end = json["end"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }
}

class InstallParams {
  List<String>? scopes;
  String? permissions;

  InstallParams({this.scopes, this.permissions});

  InstallParams.fromJson(Map<String, dynamic> json) {
    scopes = json["scopes"] == null ? null : List<String>.from(json["scopes"]);
    permissions = json["permissions"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(scopes != null) {
      _data["scopes"] = scopes;
    }
    _data["permissions"] = permissions;
    return _data;
  }
}

class Bot {
  String? username;
  String? discriminator;
  String? avatar;
  int? accentColor;
  String? banner;
  List<int>? themeColors;
  String? pronouns;
  String? phone;
  bool? desktop;
  bool? mobile;
  bool? premium;
  int? premiumType;
  bool? bot;
  String? bio;
  bool? system;
  bool? nsfwAllowed;
  bool? mfaEnabled;
  bool? webauthnEnabled;
  String? totpSecret;
  String? totpLastTicket;
  String? createdAt;
  String? premiumSince;
  bool? verified;
  bool? disabled;
  bool? deleted;
  String? email;
  String? flags;
  int? publicFlags;
  int? purchasedFlags;
  int? premiumUsageFlags;
  String? rights;
  List<Sessions6>? sessions;
  List<Relationships6>? relationships;
  List<ConnectedAccounts6>? connectedAccounts;
  Data6? data;
  List<String>? fingerprints;
  Settings7? settings;
  String? extendedSettings;
  List<SecurityKeys6>? securityKeys;
  String? id;

  Bot({this.username, this.discriminator, this.avatar, this.accentColor, this.banner, this.themeColors, this.pronouns, this.phone, this.desktop, this.mobile, this.premium, this.premiumType, this.bot, this.bio, this.system, this.nsfwAllowed, this.mfaEnabled, this.webauthnEnabled, this.totpSecret, this.totpLastTicket, this.createdAt, this.premiumSince, this.verified, this.disabled, this.deleted, this.email, this.flags, this.publicFlags, this.purchasedFlags, this.premiumUsageFlags, this.rights, this.sessions, this.relationships, this.connectedAccounts, this.data, this.fingerprints, this.settings, this.extendedSettings, this.securityKeys, this.id});

  Bot.fromJson(Map<String, dynamic> json) {
    username = json["username"];
    discriminator = json["discriminator"];
    avatar = json["avatar"];
    accentColor = json["accent_color"];
    banner = json["banner"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    phone = json["phone"];
    desktop = json["desktop"];
    mobile = json["mobile"];
    premium = json["premium"];
    premiumType = json["premium_type"];
    bot = json["bot"];
    bio = json["bio"];
    system = json["system"];
    nsfwAllowed = json["nsfw_allowed"];
    mfaEnabled = json["mfa_enabled"];
    webauthnEnabled = json["webauthn_enabled"];
    totpSecret = json["totp_secret"];
    totpLastTicket = json["totp_last_ticket"];
    createdAt = json["created_at"];
    premiumSince = json["premium_since"];
    verified = json["verified"];
    disabled = json["disabled"];
    deleted = json["deleted"];
    email = json["email"];
    flags = json["flags"];
    publicFlags = json["public_flags"];
    purchasedFlags = json["purchased_flags"];
    premiumUsageFlags = json["premium_usage_flags"];
    rights = json["rights"];
    sessions = json["sessions"] == null ? null : (json["sessions"] as List).map((e) => Sessions6.fromJson(e)).toList();
    relationships = json["relationships"] == null ? null : (json["relationships"] as List).map((e) => Relationships6.fromJson(e)).toList();
    connectedAccounts = json["connected_accounts"] == null ? null : (json["connected_accounts"] as List).map((e) => ConnectedAccounts6.fromJson(e)).toList();
    data = json["data"] == null ? null : Data6.fromJson(json["data"]);
    fingerprints = json["fingerprints"] == null ? null : List<String>.from(json["fingerprints"]);
    settings = json["settings"] == null ? null : Settings7.fromJson(json["settings"]);
    extendedSettings = json["extended_settings"];
    securityKeys = json["security_keys"] == null ? null : (json["security_keys"] as List).map((e) => SecurityKeys6.fromJson(e)).toList();
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["discriminator"] = discriminator;
    _data["avatar"] = avatar;
    _data["accent_color"] = accentColor;
    _data["banner"] = banner;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["phone"] = phone;
    _data["desktop"] = desktop;
    _data["mobile"] = mobile;
    _data["premium"] = premium;
    _data["premium_type"] = premiumType;
    _data["bot"] = bot;
    _data["bio"] = bio;
    _data["system"] = system;
    _data["nsfw_allowed"] = nsfwAllowed;
    _data["mfa_enabled"] = mfaEnabled;
    _data["webauthn_enabled"] = webauthnEnabled;
    _data["totp_secret"] = totpSecret;
    _data["totp_last_ticket"] = totpLastTicket;
    _data["created_at"] = createdAt;
    _data["premium_since"] = premiumSince;
    _data["verified"] = verified;
    _data["disabled"] = disabled;
    _data["deleted"] = deleted;
    _data["email"] = email;
    _data["flags"] = flags;
    _data["public_flags"] = publicFlags;
    _data["purchased_flags"] = purchasedFlags;
    _data["premium_usage_flags"] = premiumUsageFlags;
    _data["rights"] = rights;
    if(sessions != null) {
      _data["sessions"] = sessions?.map((e) => e.toJson()).toList();
    }
    if(relationships != null) {
      _data["relationships"] = relationships?.map((e) => e.toJson()).toList();
    }
    if(connectedAccounts != null) {
      _data["connected_accounts"] = connectedAccounts?.map((e) => e.toJson()).toList();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    if(fingerprints != null) {
      _data["fingerprints"] = fingerprints;
    }
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["extended_settings"] = extendedSettings;
    if(securityKeys != null) {
      _data["security_keys"] = securityKeys?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    return _data;
  }
}

class SecurityKeys6 {
  String? userId;
  String? user;
  String? keyId;
  String? publicKey;
  int? counter;
  String? name;
  String? id;

  SecurityKeys6({this.userId, this.user, this.keyId, this.publicKey, this.counter, this.name, this.id});

  SecurityKeys6.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    keyId = json["key_id"];
    publicKey = json["public_key"];
    counter = json["counter"];
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["key_id"] = keyId;
    _data["public_key"] = publicKey;
    _data["counter"] = counter;
    _data["name"] = name;
    _data["id"] = id;
    return _data;
  }
}

class Settings7 {
  String? index;
  int? afkTimeout;
  bool? allowAccessibilityDetection;
  bool? animateEmoji;
  int? animateStickers;
  bool? contactSyncEnabled;
  bool? convertEmoticons;
  CustomStatus6? customStatus;
  bool? defaultGuildsRestricted;
  bool? detectPlatformAccounts;
  bool? developerMode;
  bool? disableGamesTab;
  bool? enableTtsCommand;
  int? explicitContentFilter;
  FriendSourceFlags6? friendSourceFlags;
  bool? gatewayConnected;
  bool? gifAutoPlay;
  List<GuildFolders6>? guildFolders;
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

  Settings7({this.index, this.afkTimeout, this.allowAccessibilityDetection, this.animateEmoji, this.animateStickers, this.contactSyncEnabled, this.convertEmoticons, this.customStatus, this.defaultGuildsRestricted, this.detectPlatformAccounts, this.developerMode, this.disableGamesTab, this.enableTtsCommand, this.explicitContentFilter, this.friendSourceFlags, this.gatewayConnected, this.gifAutoPlay, this.guildFolders, this.guildPositions, this.inlineAttachmentMedia, this.inlineEmbedMedia, this.locale, this.messageDisplayCompact, this.nativePhoneIntegrationEnabled, this.renderEmbeds, this.renderReactions, this.restrictedGuilds, this.showCurrentGame, this.status, this.streamNotificationsEnabled, this.theme, this.timezoneOffset});

  Settings7.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    afkTimeout = json["afk_timeout"];
    allowAccessibilityDetection = json["allow_accessibility_detection"];
    animateEmoji = json["animate_emoji"];
    animateStickers = json["animate_stickers"];
    contactSyncEnabled = json["contact_sync_enabled"];
    convertEmoticons = json["convert_emoticons"];
    customStatus = json["custom_status"] == null ? null : CustomStatus6.fromJson(json["custom_status"]);
    defaultGuildsRestricted = json["default_guilds_restricted"];
    detectPlatformAccounts = json["detect_platform_accounts"];
    developerMode = json["developer_mode"];
    disableGamesTab = json["disable_games_tab"];
    enableTtsCommand = json["enable_tts_command"];
    explicitContentFilter = json["explicit_content_filter"];
    friendSourceFlags = json["friend_source_flags"] == null ? null : FriendSourceFlags6.fromJson(json["friend_source_flags"]);
    gatewayConnected = json["gateway_connected"];
    gifAutoPlay = json["gif_auto_play"];
    guildFolders = json["guild_folders"] == null ? null : (json["guild_folders"] as List).map((e) => GuildFolders6.fromJson(e)).toList();
    guildPositions = json["guild_positions"] == null ? null : List<String>.from(json["guild_positions"]);
    inlineAttachmentMedia = json["inline_attachment_media"];
    inlineEmbedMedia = json["inline_embed_media"];
    locale = json["locale"];
    messageDisplayCompact = json["message_display_compact"];
    nativePhoneIntegrationEnabled = json["native_phone_integration_enabled"];
    renderEmbeds = json["render_embeds"];
    renderReactions = json["render_reactions"];
    restrictedGuilds = json["restricted_guilds"] == null ? null : List<String>.from(json["restricted_guilds"]);
    showCurrentGame = json["show_current_game"];
    status = json["status"];
    streamNotificationsEnabled = json["stream_notifications_enabled"];
    theme = json["theme"];
    timezoneOffset = json["timezone_offset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["afk_timeout"] = afkTimeout;
    _data["allow_accessibility_detection"] = allowAccessibilityDetection;
    _data["animate_emoji"] = animateEmoji;
    _data["animate_stickers"] = animateStickers;
    _data["contact_sync_enabled"] = contactSyncEnabled;
    _data["convert_emoticons"] = convertEmoticons;
    if(customStatus != null) {
      _data["custom_status"] = customStatus?.toJson();
    }
    _data["default_guilds_restricted"] = defaultGuildsRestricted;
    _data["detect_platform_accounts"] = detectPlatformAccounts;
    _data["developer_mode"] = developerMode;
    _data["disable_games_tab"] = disableGamesTab;
    _data["enable_tts_command"] = enableTtsCommand;
    _data["explicit_content_filter"] = explicitContentFilter;
    if(friendSourceFlags != null) {
      _data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    _data["gateway_connected"] = gatewayConnected;
    _data["gif_auto_play"] = gifAutoPlay;
    if(guildFolders != null) {
      _data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if(guildPositions != null) {
      _data["guild_positions"] = guildPositions;
    }
    _data["inline_attachment_media"] = inlineAttachmentMedia;
    _data["inline_embed_media"] = inlineEmbedMedia;
    _data["locale"] = locale;
    _data["message_display_compact"] = messageDisplayCompact;
    _data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    _data["render_embeds"] = renderEmbeds;
    _data["render_reactions"] = renderReactions;
    if(restrictedGuilds != null) {
      _data["restricted_guilds"] = restrictedGuilds;
    }
    _data["show_current_game"] = showCurrentGame;
    _data["status"] = status;
    _data["stream_notifications_enabled"] = streamNotificationsEnabled;
    _data["theme"] = theme;
    _data["timezone_offset"] = timezoneOffset;
    return _data;
  }
}

class GuildFolders6 {
  int? color;
  List<String>? guildIds;
  int? id;
  String? name;

  GuildFolders6({this.color, this.guildIds, this.id, this.name});

  GuildFolders6.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    guildIds = json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    if(guildIds != null) {
      _data["guild_ids"] = guildIds;
    }
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class FriendSourceFlags6 {
  bool? all;

  FriendSourceFlags6({this.all});

  FriendSourceFlags6.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["all"] = all;
    return _data;
  }
}

class CustomStatus6 {
  String? emojiId;
  String? emojiName;
  int? expiresAt;
  String? text;

  CustomStatus6({this.emojiId, this.emojiName, this.expiresAt, this.text});

  CustomStatus6.fromJson(Map<String, dynamic> json) {
    emojiId = json["emoji_id"];
    emojiName = json["emoji_name"];
    expiresAt = json["expires_at"];
    text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["emoji_id"] = emojiId;
    _data["emoji_name"] = emojiName;
    _data["expires_at"] = expiresAt;
    _data["text"] = text;
    return _data;
  }
}

class Data6 {
  String? validTokensSince;
  String? hash;

  Data6({this.validTokensSince, this.hash});

  Data6.fromJson(Map<String, dynamic> json) {
    validTokensSince = json["valid_tokens_since"];
    hash = json["hash"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["valid_tokens_since"] = validTokensSince;
    _data["hash"] = hash;
    return _data;
  }
}

class ConnectedAccounts6 {
  String? externalId;
  String? userId;
  String? user;
  bool? friendSync;
  String? name;
  bool? revoked;
  int? showActivity;
  String? type;
  bool? verified;
  int? visibility;
  List<String>? integrations;
  dynamic metadata;
  int? metadataVisibility;
  bool? twoWayLink;
  TokenData6? tokenData;
  String? id;

  ConnectedAccounts6({this.externalId, this.userId, this.user, this.friendSync, this.name, this.revoked, this.showActivity, this.type, this.verified, this.visibility, this.integrations, this.metadata, this.metadataVisibility, this.twoWayLink, this.tokenData, this.id});

  ConnectedAccounts6.fromJson(Map<String, dynamic> json) {
    externalId = json["external_id"];
    userId = json["user_id"];
    user = json["user"];
    friendSync = json["friend_sync"];
    name = json["name"];
    revoked = json["revoked"];
    showActivity = json["show_activity"];
    type = json["type"];
    verified = json["verified"];
    visibility = json["visibility"];
    integrations = json["integrations"] == null ? null : List<String>.from(json["integrations"]);
    metadata = json["metadata_"];
    metadataVisibility = json["metadata_visibility"];
    twoWayLink = json["two_way_link"];
    tokenData = json["token_data"] == null ? null : TokenData6.fromJson(json["token_data"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["external_id"] = externalId;
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["friend_sync"] = friendSync;
    _data["name"] = name;
    _data["revoked"] = revoked;
    _data["show_activity"] = showActivity;
    _data["type"] = type;
    _data["verified"] = verified;
    _data["visibility"] = visibility;
    if(integrations != null) {
      _data["integrations"] = integrations;
    }
    _data["metadata_"] = metadata;
    _data["metadata_visibility"] = metadataVisibility;
    _data["two_way_link"] = twoWayLink;
    if(tokenData != null) {
      _data["token_data"] = tokenData?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class TokenData6 {
  String? accessToken;
  String? tokenType;
  String? scope;
  String? refreshToken;
  int? expiresIn;
  int? expiresAt;
  int? fetchedAt;

  TokenData6({this.accessToken, this.tokenType, this.scope, this.refreshToken, this.expiresIn, this.expiresAt, this.fetchedAt});

  TokenData6.fromJson(Map<String, dynamic> json) {
    accessToken = json["access_token"];
    tokenType = json["token_type"];
    scope = json["scope"];
    refreshToken = json["refresh_token"];
    expiresIn = json["expires_in"];
    expiresAt = json["expires_at"];
    fetchedAt = json["fetched_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    _data["token_type"] = tokenType;
    _data["scope"] = scope;
    _data["refresh_token"] = refreshToken;
    _data["expires_in"] = expiresIn;
    _data["expires_at"] = expiresAt;
    _data["fetched_at"] = fetchedAt;
    return _data;
  }
}

class Relationships6 {
  String? fromId;
  String? from;
  String? toId;
  String? to;
  String? nickname;
  int? type;
  String? id;

  Relationships6({this.fromId, this.from, this.toId, this.to, this.nickname, this.type, this.id});

  Relationships6.fromJson(Map<String, dynamic> json) {
    fromId = json["from_id"];
    from = json["from"];
    toId = json["to_id"];
    to = json["to"];
    nickname = json["nickname"];
    type = json["type"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["from_id"] = fromId;
    _data["from"] = from;
    _data["to_id"] = toId;
    _data["to"] = to;
    _data["nickname"] = nickname;
    _data["type"] = type;
    _data["id"] = id;
    return _data;
  }
}

class Sessions6 {
  String? userId;
  String? user;
  String? sessionId;
  List<Activities6>? activities;
  ClientInfo6? clientInfo;
  String? status;
  String? id;

  Sessions6({this.userId, this.user, this.sessionId, this.activities, this.clientInfo, this.status, this.id});

  Sessions6.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    sessionId = json["session_id"];
    activities = json["activities"] == null ? null : (json["activities"] as List).map((e) => Activities6.fromJson(e)).toList();
    clientInfo = json["client_info"] == null ? null : ClientInfo6.fromJson(json["client_info"]);
    status = json["status"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["session_id"] = sessionId;
    if(activities != null) {
      _data["activities"] = activities?.map((e) => e.toJson()).toList();
    }
    if(clientInfo != null) {
      _data["client_info"] = clientInfo?.toJson();
    }
    _data["status"] = status;
    _data["id"] = id;
    return _data;
  }
}

class ClientInfo6 {
  String? client;
  String? os;
  int? version;

  ClientInfo6({this.client, this.os, this.version});

  ClientInfo6.fromJson(Map<String, dynamic> json) {
    client = json["client"];
    os = json["os"];
    version = json["version"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["client"] = client;
    _data["os"] = os;
    _data["version"] = version;
    return _data;
  }
}

class Activities6 {
  String? name;
  int? type;
  String? url;
  int? createdAt;
  Timestamps6? timestamps;
  String? applicationId;
  String? details;
  String? state;
  Emoji6? emoji;
  Party6? party;
  Assets6? assets;
  Secrets6? secrets;
  bool? instance;
  String? flags;
  String? id;
  String? syncId;
  Metadata6? metadata;
  String? sessionId;

  Activities6({this.name, this.type, this.url, this.createdAt, this.timestamps, this.applicationId, this.details, this.state, this.emoji, this.party, this.assets, this.secrets, this.instance, this.flags, this.id, this.syncId, this.metadata, this.sessionId});

  Activities6.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    type = json["type"];
    url = json["url"];
    createdAt = json["created_at"];
    timestamps = json["timestamps"] == null ? null : Timestamps6.fromJson(json["timestamps"]);
    applicationId = json["application_id"];
    details = json["details"];
    state = json["state"];
    emoji = json["emoji"] == null ? null : Emoji6.fromJson(json["emoji"]);
    party = json["party"] == null ? null : Party6.fromJson(json["party"]);
    assets = json["assets"] == null ? null : Assets6.fromJson(json["assets"]);
    secrets = json["secrets"] == null ? null : Secrets6.fromJson(json["secrets"]);
    instance = json["instance"];
    flags = json["flags"];
    id = json["id"];
    syncId = json["sync_id"];
    metadata = json["metadata"] == null ? null : Metadata6.fromJson(json["metadata"]);
    sessionId = json["session_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["type"] = type;
    _data["url"] = url;
    _data["created_at"] = createdAt;
    if(timestamps != null) {
      _data["timestamps"] = timestamps?.toJson();
    }
    _data["application_id"] = applicationId;
    _data["details"] = details;
    _data["state"] = state;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    if(party != null) {
      _data["party"] = party?.toJson();
    }
    if(assets != null) {
      _data["assets"] = assets?.toJson();
    }
    if(secrets != null) {
      _data["secrets"] = secrets?.toJson();
    }
    _data["instance"] = instance;
    _data["flags"] = flags;
    _data["id"] = id;
    _data["sync_id"] = syncId;
    if(metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    _data["session_id"] = sessionId;
    return _data;
  }
}

class Metadata6 {
  String? contextUri;
  String? albumId;
  List<String>? artistIds;

  Metadata6({this.contextUri, this.albumId, this.artistIds});

  Metadata6.fromJson(Map<String, dynamic> json) {
    contextUri = json["context_uri"];
    albumId = json["album_id"];
    artistIds = json["artist_ids"] == null ? null : List<String>.from(json["artist_ids"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["context_uri"] = contextUri;
    _data["album_id"] = albumId;
    if(artistIds != null) {
      _data["artist_ids"] = artistIds;
    }
    return _data;
  }
}

class Secrets6 {
  String? join;
  String? spectate;
  String? match;

  Secrets6({this.join, this.spectate, this.match});

  Secrets6.fromJson(Map<String, dynamic> json) {
    join = json["join"];
    spectate = json["spectate"];
    match = json["match"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["join"] = join;
    _data["spectate"] = spectate;
    _data["match"] = match;
    return _data;
  }
}

class Assets6 {
  String? largeImage;
  String? largeText;
  String? smallImage;
  String? smallText;

  Assets6({this.largeImage, this.largeText, this.smallImage, this.smallText});

  Assets6.fromJson(Map<String, dynamic> json) {
    largeImage = json["large_image"];
    largeText = json["large_text"];
    smallImage = json["small_image"];
    smallText = json["small_text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["large_image"] = largeImage;
    _data["large_text"] = largeText;
    _data["small_image"] = smallImage;
    _data["small_text"] = smallText;
    return _data;
  }
}

class Party6 {
  String? id;
  List<int>? size;

  Party6({this.id, this.size});

  Party6.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    size = json["size"] == null ? null : List<int>.from(json["size"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if(size != null) {
      _data["size"] = size;
    }
    return _data;
  }
}

class Emoji6 {
  String? name;
  String? id;
  bool? animated;

  Emoji6({this.name, this.id, this.animated});

  Emoji6.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["id"] = id;
    _data["animated"] = animated;
    return _data;
  }
}

class Timestamps6 {
  int? start;
  int? end;

  Timestamps6({this.start, this.end});

  Timestamps6.fromJson(Map<String, dynamic> json) {
    start = json["start"];
    end = json["end"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }
}

class Owner1 {
  String? username;
  String? discriminator;
  String? avatar;
  int? accentColor;
  String? banner;
  List<int>? themeColors;
  String? pronouns;
  String? phone;
  bool? desktop;
  bool? mobile;
  bool? premium;
  int? premiumType;
  bool? bot;
  String? bio;
  bool? system;
  bool? nsfwAllowed;
  bool? mfaEnabled;
  bool? webauthnEnabled;
  String? totpSecret;
  String? totpLastTicket;
  String? createdAt;
  String? premiumSince;
  bool? verified;
  bool? disabled;
  bool? deleted;
  String? email;
  String? flags;
  int? publicFlags;
  int? purchasedFlags;
  int? premiumUsageFlags;
  String? rights;
  List<Sessions5>? sessions;
  List<Relationships5>? relationships;
  List<ConnectedAccounts5>? connectedAccounts;
  Data5? data;
  List<String>? fingerprints;
  Settings6? settings;
  String? extendedSettings;
  List<SecurityKeys5>? securityKeys;
  String? id;

  Owner1({this.username, this.discriminator, this.avatar, this.accentColor, this.banner, this.themeColors, this.pronouns, this.phone, this.desktop, this.mobile, this.premium, this.premiumType, this.bot, this.bio, this.system, this.nsfwAllowed, this.mfaEnabled, this.webauthnEnabled, this.totpSecret, this.totpLastTicket, this.createdAt, this.premiumSince, this.verified, this.disabled, this.deleted, this.email, this.flags, this.publicFlags, this.purchasedFlags, this.premiumUsageFlags, this.rights, this.sessions, this.relationships, this.connectedAccounts, this.data, this.fingerprints, this.settings, this.extendedSettings, this.securityKeys, this.id});

  Owner1.fromJson(Map<String, dynamic> json) {
    username = json["username"];
    discriminator = json["discriminator"];
    avatar = json["avatar"];
    accentColor = json["accent_color"];
    banner = json["banner"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    phone = json["phone"];
    desktop = json["desktop"];
    mobile = json["mobile"];
    premium = json["premium"];
    premiumType = json["premium_type"];
    bot = json["bot"];
    bio = json["bio"];
    system = json["system"];
    nsfwAllowed = json["nsfw_allowed"];
    mfaEnabled = json["mfa_enabled"];
    webauthnEnabled = json["webauthn_enabled"];
    totpSecret = json["totp_secret"];
    totpLastTicket = json["totp_last_ticket"];
    createdAt = json["created_at"];
    premiumSince = json["premium_since"];
    verified = json["verified"];
    disabled = json["disabled"];
    deleted = json["deleted"];
    email = json["email"];
    flags = json["flags"];
    publicFlags = json["public_flags"];
    purchasedFlags = json["purchased_flags"];
    premiumUsageFlags = json["premium_usage_flags"];
    rights = json["rights"];
    sessions = json["sessions"] == null ? null : (json["sessions"] as List).map((e) => Sessions5.fromJson(e)).toList();
    relationships = json["relationships"] == null ? null : (json["relationships"] as List).map((e) => Relationships5.fromJson(e)).toList();
    connectedAccounts = json["connected_accounts"] == null ? null : (json["connected_accounts"] as List).map((e) => ConnectedAccounts5.fromJson(e)).toList();
    data = json["data"] == null ? null : Data5.fromJson(json["data"]);
    fingerprints = json["fingerprints"] == null ? null : List<String>.from(json["fingerprints"]);
    settings = json["settings"] == null ? null : Settings6.fromJson(json["settings"]);
    extendedSettings = json["extended_settings"];
    securityKeys = json["security_keys"] == null ? null : (json["security_keys"] as List).map((e) => SecurityKeys5.fromJson(e)).toList();
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["discriminator"] = discriminator;
    _data["avatar"] = avatar;
    _data["accent_color"] = accentColor;
    _data["banner"] = banner;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["phone"] = phone;
    _data["desktop"] = desktop;
    _data["mobile"] = mobile;
    _data["premium"] = premium;
    _data["premium_type"] = premiumType;
    _data["bot"] = bot;
    _data["bio"] = bio;
    _data["system"] = system;
    _data["nsfw_allowed"] = nsfwAllowed;
    _data["mfa_enabled"] = mfaEnabled;
    _data["webauthn_enabled"] = webauthnEnabled;
    _data["totp_secret"] = totpSecret;
    _data["totp_last_ticket"] = totpLastTicket;
    _data["created_at"] = createdAt;
    _data["premium_since"] = premiumSince;
    _data["verified"] = verified;
    _data["disabled"] = disabled;
    _data["deleted"] = deleted;
    _data["email"] = email;
    _data["flags"] = flags;
    _data["public_flags"] = publicFlags;
    _data["purchased_flags"] = purchasedFlags;
    _data["premium_usage_flags"] = premiumUsageFlags;
    _data["rights"] = rights;
    if(sessions != null) {
      _data["sessions"] = sessions?.map((e) => e.toJson()).toList();
    }
    if(relationships != null) {
      _data["relationships"] = relationships?.map((e) => e.toJson()).toList();
    }
    if(connectedAccounts != null) {
      _data["connected_accounts"] = connectedAccounts?.map((e) => e.toJson()).toList();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    if(fingerprints != null) {
      _data["fingerprints"] = fingerprints;
    }
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["extended_settings"] = extendedSettings;
    if(securityKeys != null) {
      _data["security_keys"] = securityKeys?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    return _data;
  }
}

class SecurityKeys5 {
  String? userId;
  String? user;
  String? keyId;
  String? publicKey;
  int? counter;
  String? name;
  String? id;

  SecurityKeys5({this.userId, this.user, this.keyId, this.publicKey, this.counter, this.name, this.id});

  SecurityKeys5.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    keyId = json["key_id"];
    publicKey = json["public_key"];
    counter = json["counter"];
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["key_id"] = keyId;
    _data["public_key"] = publicKey;
    _data["counter"] = counter;
    _data["name"] = name;
    _data["id"] = id;
    return _data;
  }
}

class Settings6 {
  String? index;
  int? afkTimeout;
  bool? allowAccessibilityDetection;
  bool? animateEmoji;
  int? animateStickers;
  bool? contactSyncEnabled;
  bool? convertEmoticons;
  CustomStatus5? customStatus;
  bool? defaultGuildsRestricted;
  bool? detectPlatformAccounts;
  bool? developerMode;
  bool? disableGamesTab;
  bool? enableTtsCommand;
  int? explicitContentFilter;
  FriendSourceFlags5? friendSourceFlags;
  bool? gatewayConnected;
  bool? gifAutoPlay;
  List<GuildFolders5>? guildFolders;
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

  Settings6({this.index, this.afkTimeout, this.allowAccessibilityDetection, this.animateEmoji, this.animateStickers, this.contactSyncEnabled, this.convertEmoticons, this.customStatus, this.defaultGuildsRestricted, this.detectPlatformAccounts, this.developerMode, this.disableGamesTab, this.enableTtsCommand, this.explicitContentFilter, this.friendSourceFlags, this.gatewayConnected, this.gifAutoPlay, this.guildFolders, this.guildPositions, this.inlineAttachmentMedia, this.inlineEmbedMedia, this.locale, this.messageDisplayCompact, this.nativePhoneIntegrationEnabled, this.renderEmbeds, this.renderReactions, this.restrictedGuilds, this.showCurrentGame, this.status, this.streamNotificationsEnabled, this.theme, this.timezoneOffset});

  Settings6.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    afkTimeout = json["afk_timeout"];
    allowAccessibilityDetection = json["allow_accessibility_detection"];
    animateEmoji = json["animate_emoji"];
    animateStickers = json["animate_stickers"];
    contactSyncEnabled = json["contact_sync_enabled"];
    convertEmoticons = json["convert_emoticons"];
    customStatus = json["custom_status"] == null ? null : CustomStatus5.fromJson(json["custom_status"]);
    defaultGuildsRestricted = json["default_guilds_restricted"];
    detectPlatformAccounts = json["detect_platform_accounts"];
    developerMode = json["developer_mode"];
    disableGamesTab = json["disable_games_tab"];
    enableTtsCommand = json["enable_tts_command"];
    explicitContentFilter = json["explicit_content_filter"];
    friendSourceFlags = json["friend_source_flags"] == null ? null : FriendSourceFlags5.fromJson(json["friend_source_flags"]);
    gatewayConnected = json["gateway_connected"];
    gifAutoPlay = json["gif_auto_play"];
    guildFolders = json["guild_folders"] == null ? null : (json["guild_folders"] as List).map((e) => GuildFolders5.fromJson(e)).toList();
    guildPositions = json["guild_positions"] == null ? null : List<String>.from(json["guild_positions"]);
    inlineAttachmentMedia = json["inline_attachment_media"];
    inlineEmbedMedia = json["inline_embed_media"];
    locale = json["locale"];
    messageDisplayCompact = json["message_display_compact"];
    nativePhoneIntegrationEnabled = json["native_phone_integration_enabled"];
    renderEmbeds = json["render_embeds"];
    renderReactions = json["render_reactions"];
    restrictedGuilds = json["restricted_guilds"] == null ? null : List<String>.from(json["restricted_guilds"]);
    showCurrentGame = json["show_current_game"];
    status = json["status"];
    streamNotificationsEnabled = json["stream_notifications_enabled"];
    theme = json["theme"];
    timezoneOffset = json["timezone_offset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["afk_timeout"] = afkTimeout;
    _data["allow_accessibility_detection"] = allowAccessibilityDetection;
    _data["animate_emoji"] = animateEmoji;
    _data["animate_stickers"] = animateStickers;
    _data["contact_sync_enabled"] = contactSyncEnabled;
    _data["convert_emoticons"] = convertEmoticons;
    if(customStatus != null) {
      _data["custom_status"] = customStatus?.toJson();
    }
    _data["default_guilds_restricted"] = defaultGuildsRestricted;
    _data["detect_platform_accounts"] = detectPlatformAccounts;
    _data["developer_mode"] = developerMode;
    _data["disable_games_tab"] = disableGamesTab;
    _data["enable_tts_command"] = enableTtsCommand;
    _data["explicit_content_filter"] = explicitContentFilter;
    if(friendSourceFlags != null) {
      _data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    _data["gateway_connected"] = gatewayConnected;
    _data["gif_auto_play"] = gifAutoPlay;
    if(guildFolders != null) {
      _data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if(guildPositions != null) {
      _data["guild_positions"] = guildPositions;
    }
    _data["inline_attachment_media"] = inlineAttachmentMedia;
    _data["inline_embed_media"] = inlineEmbedMedia;
    _data["locale"] = locale;
    _data["message_display_compact"] = messageDisplayCompact;
    _data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    _data["render_embeds"] = renderEmbeds;
    _data["render_reactions"] = renderReactions;
    if(restrictedGuilds != null) {
      _data["restricted_guilds"] = restrictedGuilds;
    }
    _data["show_current_game"] = showCurrentGame;
    _data["status"] = status;
    _data["stream_notifications_enabled"] = streamNotificationsEnabled;
    _data["theme"] = theme;
    _data["timezone_offset"] = timezoneOffset;
    return _data;
  }
}

class GuildFolders5 {
  int? color;
  List<String>? guildIds;
  int? id;
  String? name;

  GuildFolders5({this.color, this.guildIds, this.id, this.name});

  GuildFolders5.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    guildIds = json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    if(guildIds != null) {
      _data["guild_ids"] = guildIds;
    }
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class FriendSourceFlags5 {
  bool? all;

  FriendSourceFlags5({this.all});

  FriendSourceFlags5.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["all"] = all;
    return _data;
  }
}

class CustomStatus5 {
  String? emojiId;
  String? emojiName;
  int? expiresAt;
  String? text;

  CustomStatus5({this.emojiId, this.emojiName, this.expiresAt, this.text});

  CustomStatus5.fromJson(Map<String, dynamic> json) {
    emojiId = json["emoji_id"];
    emojiName = json["emoji_name"];
    expiresAt = json["expires_at"];
    text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["emoji_id"] = emojiId;
    _data["emoji_name"] = emojiName;
    _data["expires_at"] = expiresAt;
    _data["text"] = text;
    return _data;
  }
}

class Data5 {
  String? validTokensSince;
  String? hash;

  Data5({this.validTokensSince, this.hash});

  Data5.fromJson(Map<String, dynamic> json) {
    validTokensSince = json["valid_tokens_since"];
    hash = json["hash"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["valid_tokens_since"] = validTokensSince;
    _data["hash"] = hash;
    return _data;
  }
}

class ConnectedAccounts5 {
  String? externalId;
  String? userId;
  String? user;
  bool? friendSync;
  String? name;
  bool? revoked;
  int? showActivity;
  String? type;
  bool? verified;
  int? visibility;
  List<String>? integrations;
  dynamic metadata;
  int? metadataVisibility;
  bool? twoWayLink;
  TokenData5? tokenData;
  String? id;

  ConnectedAccounts5({this.externalId, this.userId, this.user, this.friendSync, this.name, this.revoked, this.showActivity, this.type, this.verified, this.visibility, this.integrations, this.metadata, this.metadataVisibility, this.twoWayLink, this.tokenData, this.id});

  ConnectedAccounts5.fromJson(Map<String, dynamic> json) {
    externalId = json["external_id"];
    userId = json["user_id"];
    user = json["user"];
    friendSync = json["friend_sync"];
    name = json["name"];
    revoked = json["revoked"];
    showActivity = json["show_activity"];
    type = json["type"];
    verified = json["verified"];
    visibility = json["visibility"];
    integrations = json["integrations"] == null ? null : List<String>.from(json["integrations"]);
    metadata = json["metadata_"];
    metadataVisibility = json["metadata_visibility"];
    twoWayLink = json["two_way_link"];
    tokenData = json["token_data"] == null ? null : TokenData5.fromJson(json["token_data"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["external_id"] = externalId;
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["friend_sync"] = friendSync;
    _data["name"] = name;
    _data["revoked"] = revoked;
    _data["show_activity"] = showActivity;
    _data["type"] = type;
    _data["verified"] = verified;
    _data["visibility"] = visibility;
    if(integrations != null) {
      _data["integrations"] = integrations;
    }
    _data["metadata_"] = metadata;
    _data["metadata_visibility"] = metadataVisibility;
    _data["two_way_link"] = twoWayLink;
    if(tokenData != null) {
      _data["token_data"] = tokenData?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class TokenData5 {
  String? accessToken;
  String? tokenType;
  String? scope;
  String? refreshToken;
  int? expiresIn;
  int? expiresAt;
  int? fetchedAt;

  TokenData5({this.accessToken, this.tokenType, this.scope, this.refreshToken, this.expiresIn, this.expiresAt, this.fetchedAt});

  TokenData5.fromJson(Map<String, dynamic> json) {
    accessToken = json["access_token"];
    tokenType = json["token_type"];
    scope = json["scope"];
    refreshToken = json["refresh_token"];
    expiresIn = json["expires_in"];
    expiresAt = json["expires_at"];
    fetchedAt = json["fetched_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    _data["token_type"] = tokenType;
    _data["scope"] = scope;
    _data["refresh_token"] = refreshToken;
    _data["expires_in"] = expiresIn;
    _data["expires_at"] = expiresAt;
    _data["fetched_at"] = fetchedAt;
    return _data;
  }
}

class Relationships5 {
  String? fromId;
  String? from;
  String? toId;
  String? to;
  String? nickname;
  int? type;
  String? id;

  Relationships5({this.fromId, this.from, this.toId, this.to, this.nickname, this.type, this.id});

  Relationships5.fromJson(Map<String, dynamic> json) {
    fromId = json["from_id"];
    from = json["from"];
    toId = json["to_id"];
    to = json["to"];
    nickname = json["nickname"];
    type = json["type"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["from_id"] = fromId;
    _data["from"] = from;
    _data["to_id"] = toId;
    _data["to"] = to;
    _data["nickname"] = nickname;
    _data["type"] = type;
    _data["id"] = id;
    return _data;
  }
}

class Sessions5 {
  String? userId;
  String? user;
  String? sessionId;
  List<Activities5>? activities;
  ClientInfo5? clientInfo;
  String? status;
  String? id;

  Sessions5({this.userId, this.user, this.sessionId, this.activities, this.clientInfo, this.status, this.id});

  Sessions5.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    sessionId = json["session_id"];
    activities = json["activities"] == null ? null : (json["activities"] as List).map((e) => Activities5.fromJson(e)).toList();
    clientInfo = json["client_info"] == null ? null : ClientInfo5.fromJson(json["client_info"]);
    status = json["status"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["session_id"] = sessionId;
    if(activities != null) {
      _data["activities"] = activities?.map((e) => e.toJson()).toList();
    }
    if(clientInfo != null) {
      _data["client_info"] = clientInfo?.toJson();
    }
    _data["status"] = status;
    _data["id"] = id;
    return _data;
  }
}

class ClientInfo5 {
  String? client;
  String? os;
  int? version;

  ClientInfo5({this.client, this.os, this.version});

  ClientInfo5.fromJson(Map<String, dynamic> json) {
    client = json["client"];
    os = json["os"];
    version = json["version"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["client"] = client;
    _data["os"] = os;
    _data["version"] = version;
    return _data;
  }
}

class Activities5 {
  String? name;
  int? type;
  String? url;
  int? createdAt;
  Timestamps5? timestamps;
  String? applicationId;
  String? details;
  String? state;
  Emoji5? emoji;
  Party5? party;
  Assets5? assets;
  Secrets5? secrets;
  bool? instance;
  String? flags;
  String? id;
  String? syncId;
  Metadata5? metadata;
  String? sessionId;

  Activities5({this.name, this.type, this.url, this.createdAt, this.timestamps, this.applicationId, this.details, this.state, this.emoji, this.party, this.assets, this.secrets, this.instance, this.flags, this.id, this.syncId, this.metadata, this.sessionId});

  Activities5.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    type = json["type"];
    url = json["url"];
    createdAt = json["created_at"];
    timestamps = json["timestamps"] == null ? null : Timestamps5.fromJson(json["timestamps"]);
    applicationId = json["application_id"];
    details = json["details"];
    state = json["state"];
    emoji = json["emoji"] == null ? null : Emoji5.fromJson(json["emoji"]);
    party = json["party"] == null ? null : Party5.fromJson(json["party"]);
    assets = json["assets"] == null ? null : Assets5.fromJson(json["assets"]);
    secrets = json["secrets"] == null ? null : Secrets5.fromJson(json["secrets"]);
    instance = json["instance"];
    flags = json["flags"];
    id = json["id"];
    syncId = json["sync_id"];
    metadata = json["metadata"] == null ? null : Metadata5.fromJson(json["metadata"]);
    sessionId = json["session_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["type"] = type;
    _data["url"] = url;
    _data["created_at"] = createdAt;
    if(timestamps != null) {
      _data["timestamps"] = timestamps?.toJson();
    }
    _data["application_id"] = applicationId;
    _data["details"] = details;
    _data["state"] = state;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    if(party != null) {
      _data["party"] = party?.toJson();
    }
    if(assets != null) {
      _data["assets"] = assets?.toJson();
    }
    if(secrets != null) {
      _data["secrets"] = secrets?.toJson();
    }
    _data["instance"] = instance;
    _data["flags"] = flags;
    _data["id"] = id;
    _data["sync_id"] = syncId;
    if(metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    _data["session_id"] = sessionId;
    return _data;
  }
}

class Metadata5 {
  String? contextUri;
  String? albumId;
  List<String>? artistIds;

  Metadata5({this.contextUri, this.albumId, this.artistIds});

  Metadata5.fromJson(Map<String, dynamic> json) {
    contextUri = json["context_uri"];
    albumId = json["album_id"];
    artistIds = json["artist_ids"] == null ? null : List<String>.from(json["artist_ids"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["context_uri"] = contextUri;
    _data["album_id"] = albumId;
    if(artistIds != null) {
      _data["artist_ids"] = artistIds;
    }
    return _data;
  }
}

class Secrets5 {
  String? join;
  String? spectate;
  String? match;

  Secrets5({this.join, this.spectate, this.match});

  Secrets5.fromJson(Map<String, dynamic> json) {
    join = json["join"];
    spectate = json["spectate"];
    match = json["match"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["join"] = join;
    _data["spectate"] = spectate;
    _data["match"] = match;
    return _data;
  }
}

class Assets5 {
  String? largeImage;
  String? largeText;
  String? smallImage;
  String? smallText;

  Assets5({this.largeImage, this.largeText, this.smallImage, this.smallText});

  Assets5.fromJson(Map<String, dynamic> json) {
    largeImage = json["large_image"];
    largeText = json["large_text"];
    smallImage = json["small_image"];
    smallText = json["small_text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["large_image"] = largeImage;
    _data["large_text"] = largeText;
    _data["small_image"] = smallImage;
    _data["small_text"] = smallText;
    return _data;
  }
}

class Party5 {
  String? id;
  List<int>? size;

  Party5({this.id, this.size});

  Party5.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    size = json["size"] == null ? null : List<int>.from(json["size"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if(size != null) {
      _data["size"] = size;
    }
    return _data;
  }
}

class Emoji5 {
  String? name;
  String? id;
  bool? animated;

  Emoji5({this.name, this.id, this.animated});

  Emoji5.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["id"] = id;
    _data["animated"] = animated;
    return _data;
  }
}

class Timestamps5 {
  int? start;
  int? end;

  Timestamps5({this.start, this.end});

  Timestamps5.fromJson(Map<String, dynamic> json) {
    start = json["start"];
    end = json["end"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }
}

class Type {
  Type();

  Type.fromJson(Map<String, dynamic> json) {

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};

    return _data;
  }
}

class Member {
  String? index;
  String? id;
  User1? user;
  String? guildId;
  String? guild;
  String? nick;
  List<Roles>? roles;
  String? joinedAt;
  int? premiumSince;
  bool? deaf;
  bool? mute;
  bool? pending;
  Settings5? settings;
  String? lastMessageId;
  String? joinedBy;
  String? avatar;
  String? banner;
  String? bio;
  List<int>? themeColors;
  String? pronouns;
  String? communicationDisabledUntil;

  Member({this.index, this.id, this.user, this.guildId, this.guild, this.nick, this.roles, this.joinedAt, this.premiumSince, this.deaf, this.mute, this.pending, this.settings, this.lastMessageId, this.joinedBy, this.avatar, this.banner, this.bio, this.themeColors, this.pronouns, this.communicationDisabledUntil});

  Member.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    id = json["id"];
    user = json["user"] == null ? null : User1.fromJson(json["user"]);
    guildId = json["guild_id"];
    guild = json["guild"];
    nick = json["nick"];
    roles = json["roles"] == null ? null : (json["roles"] as List).map((e) => Roles.fromJson(e)).toList();
    joinedAt = json["joined_at"];
    premiumSince = json["premium_since"];
    deaf = json["deaf"];
    mute = json["mute"];
    pending = json["pending"];
    settings = json["settings"] == null ? null : Settings5.fromJson(json["settings"]);
    lastMessageId = json["last_message_id"];
    joinedBy = json["joined_by"];
    avatar = json["avatar"];
    banner = json["banner"];
    bio = json["bio"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    communicationDisabledUntil = json["communication_disabled_until"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["id"] = id;
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    _data["guild_id"] = guildId;
    _data["guild"] = guild;
    _data["nick"] = nick;
    if(roles != null) {
      _data["roles"] = roles?.map((e) => e.toJson()).toList();
    }
    _data["joined_at"] = joinedAt;
    _data["premium_since"] = premiumSince;
    _data["deaf"] = deaf;
    _data["mute"] = mute;
    _data["pending"] = pending;
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["last_message_id"] = lastMessageId;
    _data["joined_by"] = joinedBy;
    _data["avatar"] = avatar;
    _data["banner"] = banner;
    _data["bio"] = bio;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["communication_disabled_until"] = communicationDisabledUntil;
    return _data;
  }
}

class Settings5 {
  ChannelOverrides? channelOverrides;
  int? messageNotifications;
  bool? mobilePush;
  MuteConfig? muteConfig;
  bool? muted;
  bool? suppressEveryone;
  bool? suppressRoles;
  int? version;
  String? guildId;
  int? flags;
  bool? muteScheduledEvents;
  bool? hideMutedChannels;
  int? notifyHighlights;

  Settings5({this.channelOverrides, this.messageNotifications, this.mobilePush, this.muteConfig, this.muted, this.suppressEveryone, this.suppressRoles, this.version, this.guildId, this.flags, this.muteScheduledEvents, this.hideMutedChannels, this.notifyHighlights});

  Settings5.fromJson(Map<String, dynamic> json) {
    channelOverrides = json["channel_overrides"] == null ? null : ChannelOverrides.fromJson(json["channel_overrides"]);
    messageNotifications = json["message_notifications"];
    mobilePush = json["mobile_push"];
    muteConfig = json["mute_config"] == null ? null : MuteConfig.fromJson(json["mute_config"]);
    muted = json["muted"];
    suppressEveryone = json["suppress_everyone"];
    suppressRoles = json["suppress_roles"];
    version = json["version"];
    guildId = json["guild_id"];
    flags = json["flags"];
    muteScheduledEvents = json["mute_scheduled_events"];
    hideMutedChannels = json["hide_muted_channels"];
    notifyHighlights = json["notify_highlights"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(channelOverrides != null) {
      _data["channel_overrides"] = channelOverrides?.toJson();
    }
    _data["message_notifications"] = messageNotifications;
    _data["mobile_push"] = mobilePush;
    if(muteConfig != null) {
      _data["mute_config"] = muteConfig?.toJson();
    }
    _data["muted"] = muted;
    _data["suppress_everyone"] = suppressEveryone;
    _data["suppress_roles"] = suppressRoles;
    _data["version"] = version;
    _data["guild_id"] = guildId;
    _data["flags"] = flags;
    _data["mute_scheduled_events"] = muteScheduledEvents;
    _data["hide_muted_channels"] = hideMutedChannels;
    _data["notify_highlights"] = notifyHighlights;
    return _data;
  }
}

class MuteConfig {
  int? endTime;
  int? selectedTimeWindow;

  MuteConfig({this.endTime, this.selectedTimeWindow});

  MuteConfig.fromJson(Map<String, dynamic> json) {
    endTime = json["end_time"];
    selectedTimeWindow = json["selected_time_window"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["end_time"] = endTime;
    _data["selected_time_window"] = selectedTimeWindow;
    return _data;
  }
}

class ChannelOverrides {
  ChannelOverrides();

  ChannelOverrides.fromJson(Map<String, dynamic> json) {

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};

    return _data;
  }
}

class Roles {
  String? guildId;
  String? guild;
  int? color;
  bool? hoist;
  bool? managed;
  bool? mentionable;
  String? name;
  String? permissions;
  int? position;
  String? icon;
  String? unicodeEmoji;
  Tags? tags;
  String? id;

  Roles({this.guildId, this.guild, this.color, this.hoist, this.managed, this.mentionable, this.name, this.permissions, this.position, this.icon, this.unicodeEmoji, this.tags, this.id});

  Roles.fromJson(Map<String, dynamic> json) {
    guildId = json["guild_id"];
    guild = json["guild"];
    color = json["color"];
    hoist = json["hoist"];
    managed = json["managed"];
    mentionable = json["mentionable"];
    name = json["name"];
    permissions = json["permissions"];
    position = json["position"];
    icon = json["icon"];
    unicodeEmoji = json["unicode_emoji"];
    tags = json["tags"] == null ? null : Tags.fromJson(json["tags"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["guild_id"] = guildId;
    _data["guild"] = guild;
    _data["color"] = color;
    _data["hoist"] = hoist;
    _data["managed"] = managed;
    _data["mentionable"] = mentionable;
    _data["name"] = name;
    _data["permissions"] = permissions;
    _data["position"] = position;
    _data["icon"] = icon;
    _data["unicode_emoji"] = unicodeEmoji;
    if(tags != null) {
      _data["tags"] = tags?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class Tags {
  String? botId;
  String? integrationId;
  bool? premiumSubscriber;

  Tags({this.botId, this.integrationId, this.premiumSubscriber});

  Tags.fromJson(Map<String, dynamic> json) {
    botId = json["bot_id"];
    integrationId = json["integration_id"];
    premiumSubscriber = json["premium_subscriber"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["bot_id"] = botId;
    _data["integration_id"] = integrationId;
    _data["premium_subscriber"] = premiumSubscriber;
    return _data;
  }
}

class User1 {
  String? username;
  String? discriminator;
  String? avatar;
  int? accentColor;
  String? banner;
  List<int>? themeColors;
  String? pronouns;
  String? phone;
  bool? desktop;
  bool? mobile;
  bool? premium;
  int? premiumType;
  bool? bot;
  String? bio;
  bool? system;
  bool? nsfwAllowed;
  bool? mfaEnabled;
  bool? webauthnEnabled;
  String? totpSecret;
  String? totpLastTicket;
  String? createdAt;
  String? premiumSince;
  bool? verified;
  bool? disabled;
  bool? deleted;
  String? email;
  String? flags;
  int? publicFlags;
  int? purchasedFlags;
  int? premiumUsageFlags;
  String? rights;
  List<Sessions4>? sessions;
  List<Relationships4>? relationships;
  List<ConnectedAccounts4>? connectedAccounts;
  Data4? data;
  List<String>? fingerprints;
  Settings4? settings;
  String? extendedSettings;
  List<SecurityKeys4>? securityKeys;
  String? id;

  User1({this.username, this.discriminator, this.avatar, this.accentColor, this.banner, this.themeColors, this.pronouns, this.phone, this.desktop, this.mobile, this.premium, this.premiumType, this.bot, this.bio, this.system, this.nsfwAllowed, this.mfaEnabled, this.webauthnEnabled, this.totpSecret, this.totpLastTicket, this.createdAt, this.premiumSince, this.verified, this.disabled, this.deleted, this.email, this.flags, this.publicFlags, this.purchasedFlags, this.premiumUsageFlags, this.rights, this.sessions, this.relationships, this.connectedAccounts, this.data, this.fingerprints, this.settings, this.extendedSettings, this.securityKeys, this.id});

  User1.fromJson(Map<String, dynamic> json) {
    username = json["username"];
    discriminator = json["discriminator"];
    avatar = json["avatar"];
    accentColor = json["accent_color"];
    banner = json["banner"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    phone = json["phone"];
    desktop = json["desktop"];
    mobile = json["mobile"];
    premium = json["premium"];
    premiumType = json["premium_type"];
    bot = json["bot"];
    bio = json["bio"];
    system = json["system"];
    nsfwAllowed = json["nsfw_allowed"];
    mfaEnabled = json["mfa_enabled"];
    webauthnEnabled = json["webauthn_enabled"];
    totpSecret = json["totp_secret"];
    totpLastTicket = json["totp_last_ticket"];
    createdAt = json["created_at"];
    premiumSince = json["premium_since"];
    verified = json["verified"];
    disabled = json["disabled"];
    deleted = json["deleted"];
    email = json["email"];
    flags = json["flags"];
    publicFlags = json["public_flags"];
    purchasedFlags = json["purchased_flags"];
    premiumUsageFlags = json["premium_usage_flags"];
    rights = json["rights"];
    sessions = json["sessions"] == null ? null : (json["sessions"] as List).map((e) => Sessions4.fromJson(e)).toList();
    relationships = json["relationships"] == null ? null : (json["relationships"] as List).map((e) => Relationships4.fromJson(e)).toList();
    connectedAccounts = json["connected_accounts"] == null ? null : (json["connected_accounts"] as List).map((e) => ConnectedAccounts4.fromJson(e)).toList();
    data = json["data"] == null ? null : Data4.fromJson(json["data"]);
    fingerprints = json["fingerprints"] == null ? null : List<String>.from(json["fingerprints"]);
    settings = json["settings"] == null ? null : Settings4.fromJson(json["settings"]);
    extendedSettings = json["extended_settings"];
    securityKeys = json["security_keys"] == null ? null : (json["security_keys"] as List).map((e) => SecurityKeys4.fromJson(e)).toList();
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["discriminator"] = discriminator;
    _data["avatar"] = avatar;
    _data["accent_color"] = accentColor;
    _data["banner"] = banner;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["phone"] = phone;
    _data["desktop"] = desktop;
    _data["mobile"] = mobile;
    _data["premium"] = premium;
    _data["premium_type"] = premiumType;
    _data["bot"] = bot;
    _data["bio"] = bio;
    _data["system"] = system;
    _data["nsfw_allowed"] = nsfwAllowed;
    _data["mfa_enabled"] = mfaEnabled;
    _data["webauthn_enabled"] = webauthnEnabled;
    _data["totp_secret"] = totpSecret;
    _data["totp_last_ticket"] = totpLastTicket;
    _data["created_at"] = createdAt;
    _data["premium_since"] = premiumSince;
    _data["verified"] = verified;
    _data["disabled"] = disabled;
    _data["deleted"] = deleted;
    _data["email"] = email;
    _data["flags"] = flags;
    _data["public_flags"] = publicFlags;
    _data["purchased_flags"] = purchasedFlags;
    _data["premium_usage_flags"] = premiumUsageFlags;
    _data["rights"] = rights;
    if(sessions != null) {
      _data["sessions"] = sessions?.map((e) => e.toJson()).toList();
    }
    if(relationships != null) {
      _data["relationships"] = relationships?.map((e) => e.toJson()).toList();
    }
    if(connectedAccounts != null) {
      _data["connected_accounts"] = connectedAccounts?.map((e) => e.toJson()).toList();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    if(fingerprints != null) {
      _data["fingerprints"] = fingerprints;
    }
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["extended_settings"] = extendedSettings;
    if(securityKeys != null) {
      _data["security_keys"] = securityKeys?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    return _data;
  }
}

class SecurityKeys4 {
  String? userId;
  String? user;
  String? keyId;
  String? publicKey;
  int? counter;
  String? name;
  String? id;

  SecurityKeys4({this.userId, this.user, this.keyId, this.publicKey, this.counter, this.name, this.id});

  SecurityKeys4.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    keyId = json["key_id"];
    publicKey = json["public_key"];
    counter = json["counter"];
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["key_id"] = keyId;
    _data["public_key"] = publicKey;
    _data["counter"] = counter;
    _data["name"] = name;
    _data["id"] = id;
    return _data;
  }
}

class Settings4 {
  String? index;
  int? afkTimeout;
  bool? allowAccessibilityDetection;
  bool? animateEmoji;
  int? animateStickers;
  bool? contactSyncEnabled;
  bool? convertEmoticons;
  CustomStatus4? customStatus;
  bool? defaultGuildsRestricted;
  bool? detectPlatformAccounts;
  bool? developerMode;
  bool? disableGamesTab;
  bool? enableTtsCommand;
  int? explicitContentFilter;
  FriendSourceFlags4? friendSourceFlags;
  bool? gatewayConnected;
  bool? gifAutoPlay;
  List<GuildFolders4>? guildFolders;
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

  Settings4({this.index, this.afkTimeout, this.allowAccessibilityDetection, this.animateEmoji, this.animateStickers, this.contactSyncEnabled, this.convertEmoticons, this.customStatus, this.defaultGuildsRestricted, this.detectPlatformAccounts, this.developerMode, this.disableGamesTab, this.enableTtsCommand, this.explicitContentFilter, this.friendSourceFlags, this.gatewayConnected, this.gifAutoPlay, this.guildFolders, this.guildPositions, this.inlineAttachmentMedia, this.inlineEmbedMedia, this.locale, this.messageDisplayCompact, this.nativePhoneIntegrationEnabled, this.renderEmbeds, this.renderReactions, this.restrictedGuilds, this.showCurrentGame, this.status, this.streamNotificationsEnabled, this.theme, this.timezoneOffset});

  Settings4.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    afkTimeout = json["afk_timeout"];
    allowAccessibilityDetection = json["allow_accessibility_detection"];
    animateEmoji = json["animate_emoji"];
    animateStickers = json["animate_stickers"];
    contactSyncEnabled = json["contact_sync_enabled"];
    convertEmoticons = json["convert_emoticons"];
    customStatus = json["custom_status"] == null ? null : CustomStatus4.fromJson(json["custom_status"]);
    defaultGuildsRestricted = json["default_guilds_restricted"];
    detectPlatformAccounts = json["detect_platform_accounts"];
    developerMode = json["developer_mode"];
    disableGamesTab = json["disable_games_tab"];
    enableTtsCommand = json["enable_tts_command"];
    explicitContentFilter = json["explicit_content_filter"];
    friendSourceFlags = json["friend_source_flags"] == null ? null : FriendSourceFlags4.fromJson(json["friend_source_flags"]);
    gatewayConnected = json["gateway_connected"];
    gifAutoPlay = json["gif_auto_play"];
    guildFolders = json["guild_folders"] == null ? null : (json["guild_folders"] as List).map((e) => GuildFolders4.fromJson(e)).toList();
    guildPositions = json["guild_positions"] == null ? null : List<String>.from(json["guild_positions"]);
    inlineAttachmentMedia = json["inline_attachment_media"];
    inlineEmbedMedia = json["inline_embed_media"];
    locale = json["locale"];
    messageDisplayCompact = json["message_display_compact"];
    nativePhoneIntegrationEnabled = json["native_phone_integration_enabled"];
    renderEmbeds = json["render_embeds"];
    renderReactions = json["render_reactions"];
    restrictedGuilds = json["restricted_guilds"] == null ? null : List<String>.from(json["restricted_guilds"]);
    showCurrentGame = json["show_current_game"];
    status = json["status"];
    streamNotificationsEnabled = json["stream_notifications_enabled"];
    theme = json["theme"];
    timezoneOffset = json["timezone_offset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["afk_timeout"] = afkTimeout;
    _data["allow_accessibility_detection"] = allowAccessibilityDetection;
    _data["animate_emoji"] = animateEmoji;
    _data["animate_stickers"] = animateStickers;
    _data["contact_sync_enabled"] = contactSyncEnabled;
    _data["convert_emoticons"] = convertEmoticons;
    if(customStatus != null) {
      _data["custom_status"] = customStatus?.toJson();
    }
    _data["default_guilds_restricted"] = defaultGuildsRestricted;
    _data["detect_platform_accounts"] = detectPlatformAccounts;
    _data["developer_mode"] = developerMode;
    _data["disable_games_tab"] = disableGamesTab;
    _data["enable_tts_command"] = enableTtsCommand;
    _data["explicit_content_filter"] = explicitContentFilter;
    if(friendSourceFlags != null) {
      _data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    _data["gateway_connected"] = gatewayConnected;
    _data["gif_auto_play"] = gifAutoPlay;
    if(guildFolders != null) {
      _data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if(guildPositions != null) {
      _data["guild_positions"] = guildPositions;
    }
    _data["inline_attachment_media"] = inlineAttachmentMedia;
    _data["inline_embed_media"] = inlineEmbedMedia;
    _data["locale"] = locale;
    _data["message_display_compact"] = messageDisplayCompact;
    _data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    _data["render_embeds"] = renderEmbeds;
    _data["render_reactions"] = renderReactions;
    if(restrictedGuilds != null) {
      _data["restricted_guilds"] = restrictedGuilds;
    }
    _data["show_current_game"] = showCurrentGame;
    _data["status"] = status;
    _data["stream_notifications_enabled"] = streamNotificationsEnabled;
    _data["theme"] = theme;
    _data["timezone_offset"] = timezoneOffset;
    return _data;
  }
}

class GuildFolders4 {
  int? color;
  List<String>? guildIds;
  int? id;
  String? name;

  GuildFolders4({this.color, this.guildIds, this.id, this.name});

  GuildFolders4.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    guildIds = json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    if(guildIds != null) {
      _data["guild_ids"] = guildIds;
    }
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class FriendSourceFlags4 {
  bool? all;

  FriendSourceFlags4({this.all});

  FriendSourceFlags4.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["all"] = all;
    return _data;
  }
}

class CustomStatus4 {
  String? emojiId;
  String? emojiName;
  int? expiresAt;
  String? text;

  CustomStatus4({this.emojiId, this.emojiName, this.expiresAt, this.text});

  CustomStatus4.fromJson(Map<String, dynamic> json) {
    emojiId = json["emoji_id"];
    emojiName = json["emoji_name"];
    expiresAt = json["expires_at"];
    text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["emoji_id"] = emojiId;
    _data["emoji_name"] = emojiName;
    _data["expires_at"] = expiresAt;
    _data["text"] = text;
    return _data;
  }
}

class Data4 {
  String? validTokensSince;
  String? hash;

  Data4({this.validTokensSince, this.hash});

  Data4.fromJson(Map<String, dynamic> json) {
    validTokensSince = json["valid_tokens_since"];
    hash = json["hash"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["valid_tokens_since"] = validTokensSince;
    _data["hash"] = hash;
    return _data;
  }
}

class ConnectedAccounts4 {
  String? externalId;
  String? userId;
  String? user;
  bool? friendSync;
  String? name;
  bool? revoked;
  int? showActivity;
  String? type;
  bool? verified;
  int? visibility;
  List<String>? integrations;
  dynamic metadata;
  int? metadataVisibility;
  bool? twoWayLink;
  TokenData4? tokenData;
  String? id;

  ConnectedAccounts4({this.externalId, this.userId, this.user, this.friendSync, this.name, this.revoked, this.showActivity, this.type, this.verified, this.visibility, this.integrations, this.metadata, this.metadataVisibility, this.twoWayLink, this.tokenData, this.id});

  ConnectedAccounts4.fromJson(Map<String, dynamic> json) {
    externalId = json["external_id"];
    userId = json["user_id"];
    user = json["user"];
    friendSync = json["friend_sync"];
    name = json["name"];
    revoked = json["revoked"];
    showActivity = json["show_activity"];
    type = json["type"];
    verified = json["verified"];
    visibility = json["visibility"];
    integrations = json["integrations"] == null ? null : List<String>.from(json["integrations"]);
    metadata = json["metadata_"];
    metadataVisibility = json["metadata_visibility"];
    twoWayLink = json["two_way_link"];
    tokenData = json["token_data"] == null ? null : TokenData4.fromJson(json["token_data"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["external_id"] = externalId;
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["friend_sync"] = friendSync;
    _data["name"] = name;
    _data["revoked"] = revoked;
    _data["show_activity"] = showActivity;
    _data["type"] = type;
    _data["verified"] = verified;
    _data["visibility"] = visibility;
    if(integrations != null) {
      _data["integrations"] = integrations;
    }
    _data["metadata_"] = metadata;
    _data["metadata_visibility"] = metadataVisibility;
    _data["two_way_link"] = twoWayLink;
    if(tokenData != null) {
      _data["token_data"] = tokenData?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class TokenData4 {
  String? accessToken;
  String? tokenType;
  String? scope;
  String? refreshToken;
  int? expiresIn;
  int? expiresAt;
  int? fetchedAt;

  TokenData4({this.accessToken, this.tokenType, this.scope, this.refreshToken, this.expiresIn, this.expiresAt, this.fetchedAt});

  TokenData4.fromJson(Map<String, dynamic> json) {
    accessToken = json["access_token"];
    tokenType = json["token_type"];
    scope = json["scope"];
    refreshToken = json["refresh_token"];
    expiresIn = json["expires_in"];
    expiresAt = json["expires_at"];
    fetchedAt = json["fetched_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    _data["token_type"] = tokenType;
    _data["scope"] = scope;
    _data["refresh_token"] = refreshToken;
    _data["expires_in"] = expiresIn;
    _data["expires_at"] = expiresAt;
    _data["fetched_at"] = fetchedAt;
    return _data;
  }
}

class Relationships4 {
  String? fromId;
  String? from;
  String? toId;
  String? to;
  String? nickname;
  int? type;
  String? id;

  Relationships4({this.fromId, this.from, this.toId, this.to, this.nickname, this.type, this.id});

  Relationships4.fromJson(Map<String, dynamic> json) {
    fromId = json["from_id"];
    from = json["from"];
    toId = json["to_id"];
    to = json["to"];
    nickname = json["nickname"];
    type = json["type"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["from_id"] = fromId;
    _data["from"] = from;
    _data["to_id"] = toId;
    _data["to"] = to;
    _data["nickname"] = nickname;
    _data["type"] = type;
    _data["id"] = id;
    return _data;
  }
}

class Sessions4 {
  String? userId;
  String? user;
  String? sessionId;
  List<Activities4>? activities;
  ClientInfo4? clientInfo;
  String? status;
  String? id;

  Sessions4({this.userId, this.user, this.sessionId, this.activities, this.clientInfo, this.status, this.id});

  Sessions4.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    sessionId = json["session_id"];
    activities = json["activities"] == null ? null : (json["activities"] as List).map((e) => Activities4.fromJson(e)).toList();
    clientInfo = json["client_info"] == null ? null : ClientInfo4.fromJson(json["client_info"]);
    status = json["status"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["session_id"] = sessionId;
    if(activities != null) {
      _data["activities"] = activities?.map((e) => e.toJson()).toList();
    }
    if(clientInfo != null) {
      _data["client_info"] = clientInfo?.toJson();
    }
    _data["status"] = status;
    _data["id"] = id;
    return _data;
  }
}

class ClientInfo4 {
  String? client;
  String? os;
  int? version;

  ClientInfo4({this.client, this.os, this.version});

  ClientInfo4.fromJson(Map<String, dynamic> json) {
    client = json["client"];
    os = json["os"];
    version = json["version"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["client"] = client;
    _data["os"] = os;
    _data["version"] = version;
    return _data;
  }
}

class Activities4 {
  String? name;
  int? type;
  String? url;
  int? createdAt;
  Timestamps4? timestamps;
  String? applicationId;
  String? details;
  String? state;
  Emoji4? emoji;
  Party4? party;
  Assets4? assets;
  Secrets4? secrets;
  bool? instance;
  String? flags;
  String? id;
  String? syncId;
  Metadata4? metadata;
  String? sessionId;

  Activities4({this.name, this.type, this.url, this.createdAt, this.timestamps, this.applicationId, this.details, this.state, this.emoji, this.party, this.assets, this.secrets, this.instance, this.flags, this.id, this.syncId, this.metadata, this.sessionId});

  Activities4.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    type = json["type"];
    url = json["url"];
    createdAt = json["created_at"];
    timestamps = json["timestamps"] == null ? null : Timestamps4.fromJson(json["timestamps"]);
    applicationId = json["application_id"];
    details = json["details"];
    state = json["state"];
    emoji = json["emoji"] == null ? null : Emoji4.fromJson(json["emoji"]);
    party = json["party"] == null ? null : Party4.fromJson(json["party"]);
    assets = json["assets"] == null ? null : Assets4.fromJson(json["assets"]);
    secrets = json["secrets"] == null ? null : Secrets4.fromJson(json["secrets"]);
    instance = json["instance"];
    flags = json["flags"];
    id = json["id"];
    syncId = json["sync_id"];
    metadata = json["metadata"] == null ? null : Metadata4.fromJson(json["metadata"]);
    sessionId = json["session_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["type"] = type;
    _data["url"] = url;
    _data["created_at"] = createdAt;
    if(timestamps != null) {
      _data["timestamps"] = timestamps?.toJson();
    }
    _data["application_id"] = applicationId;
    _data["details"] = details;
    _data["state"] = state;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    if(party != null) {
      _data["party"] = party?.toJson();
    }
    if(assets != null) {
      _data["assets"] = assets?.toJson();
    }
    if(secrets != null) {
      _data["secrets"] = secrets?.toJson();
    }
    _data["instance"] = instance;
    _data["flags"] = flags;
    _data["id"] = id;
    _data["sync_id"] = syncId;
    if(metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    _data["session_id"] = sessionId;
    return _data;
  }
}

class Metadata4 {
  String? contextUri;
  String? albumId;
  List<String>? artistIds;

  Metadata4({this.contextUri, this.albumId, this.artistIds});

  Metadata4.fromJson(Map<String, dynamic> json) {
    contextUri = json["context_uri"];
    albumId = json["album_id"];
    artistIds = json["artist_ids"] == null ? null : List<String>.from(json["artist_ids"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["context_uri"] = contextUri;
    _data["album_id"] = albumId;
    if(artistIds != null) {
      _data["artist_ids"] = artistIds;
    }
    return _data;
  }
}

class Secrets4 {
  String? join;
  String? spectate;
  String? match;

  Secrets4({this.join, this.spectate, this.match});

  Secrets4.fromJson(Map<String, dynamic> json) {
    join = json["join"];
    spectate = json["spectate"];
    match = json["match"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["join"] = join;
    _data["spectate"] = spectate;
    _data["match"] = match;
    return _data;
  }
}

class Assets4 {
  String? largeImage;
  String? largeText;
  String? smallImage;
  String? smallText;

  Assets4({this.largeImage, this.largeText, this.smallImage, this.smallText});

  Assets4.fromJson(Map<String, dynamic> json) {
    largeImage = json["large_image"];
    largeText = json["large_text"];
    smallImage = json["small_image"];
    smallText = json["small_text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["large_image"] = largeImage;
    _data["large_text"] = largeText;
    _data["small_image"] = smallImage;
    _data["small_text"] = smallText;
    return _data;
  }
}

class Party4 {
  String? id;
  List<int>? size;

  Party4({this.id, this.size});

  Party4.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    size = json["size"] == null ? null : List<int>.from(json["size"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if(size != null) {
      _data["size"] = size;
    }
    return _data;
  }
}

class Emoji4 {
  String? name;
  String? id;
  bool? animated;

  Emoji4({this.name, this.id, this.animated});

  Emoji4.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["id"] = id;
    _data["animated"] = animated;
    return _data;
  }
}

class Timestamps4 {
  int? start;
  int? end;

  Timestamps4({this.start, this.end});

  Timestamps4.fromJson(Map<String, dynamic> json) {
    start = json["start"];
    end = json["end"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }
}

class Author {
  String? username;
  String? discriminator;
  String? avatar;
  int? accentColor;
  String? banner;
  List<int>? themeColors;
  String? pronouns;
  String? phone;
  bool? desktop;
  bool? mobile;
  bool? premium;
  int? premiumType;
  bool? bot;
  String? bio;
  bool? system;
  bool? nsfwAllowed;
  bool? mfaEnabled;
  bool? webauthnEnabled;
  String? totpSecret;
  String? totpLastTicket;
  String? createdAt;
  String? premiumSince;
  bool? verified;
  bool? disabled;
  bool? deleted;
  String? email;
  String? flags;
  int? publicFlags;
  int? purchasedFlags;
  int? premiumUsageFlags;
  String? rights;
  List<Sessions3>? sessions;
  List<Relationships3>? relationships;
  List<ConnectedAccounts3>? connectedAccounts;
  Data3? data;
  List<String>? fingerprints;
  Settings3? settings;
  String? extendedSettings;
  List<SecurityKeys3>? securityKeys;
  String? id;

  Author({this.username, this.discriminator, this.avatar, this.accentColor, this.banner, this.themeColors, this.pronouns, this.phone, this.desktop, this.mobile, this.premium, this.premiumType, this.bot, this.bio, this.system, this.nsfwAllowed, this.mfaEnabled, this.webauthnEnabled, this.totpSecret, this.totpLastTicket, this.createdAt, this.premiumSince, this.verified, this.disabled, this.deleted, this.email, this.flags, this.publicFlags, this.purchasedFlags, this.premiumUsageFlags, this.rights, this.sessions, this.relationships, this.connectedAccounts, this.data, this.fingerprints, this.settings, this.extendedSettings, this.securityKeys, this.id});

  Author.fromJson(Map<String, dynamic> json) {
    username = json["username"];
    discriminator = json["discriminator"];
    avatar = json["avatar"];
    accentColor = json["accent_color"];
    banner = json["banner"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    phone = json["phone"];
    desktop = json["desktop"];
    mobile = json["mobile"];
    premium = json["premium"];
    premiumType = json["premium_type"];
    bot = json["bot"];
    bio = json["bio"];
    system = json["system"];
    nsfwAllowed = json["nsfw_allowed"];
    mfaEnabled = json["mfa_enabled"];
    webauthnEnabled = json["webauthn_enabled"];
    totpSecret = json["totp_secret"];
    totpLastTicket = json["totp_last_ticket"];
    createdAt = json["created_at"];
    premiumSince = json["premium_since"];
    verified = json["verified"];
    disabled = json["disabled"];
    deleted = json["deleted"];
    email = json["email"];
    flags = json["flags"];
    publicFlags = json["public_flags"];
    purchasedFlags = json["purchased_flags"];
    premiumUsageFlags = json["premium_usage_flags"];
    rights = json["rights"];
    sessions = json["sessions"] == null ? null : (json["sessions"] as List).map((e) => Sessions3.fromJson(e)).toList();
    relationships = json["relationships"] == null ? null : (json["relationships"] as List).map((e) => Relationships3.fromJson(e)).toList();
    connectedAccounts = json["connected_accounts"] == null ? null : (json["connected_accounts"] as List).map((e) => ConnectedAccounts3.fromJson(e)).toList();
    data = json["data"] == null ? null : Data3.fromJson(json["data"]);
    fingerprints = json["fingerprints"] == null ? null : List<String>.from(json["fingerprints"]);
    settings = json["settings"] == null ? null : Settings3.fromJson(json["settings"]);
    extendedSettings = json["extended_settings"];
    securityKeys = json["security_keys"] == null ? null : (json["security_keys"] as List).map((e) => SecurityKeys3.fromJson(e)).toList();
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["discriminator"] = discriminator;
    _data["avatar"] = avatar;
    _data["accent_color"] = accentColor;
    _data["banner"] = banner;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["phone"] = phone;
    _data["desktop"] = desktop;
    _data["mobile"] = mobile;
    _data["premium"] = premium;
    _data["premium_type"] = premiumType;
    _data["bot"] = bot;
    _data["bio"] = bio;
    _data["system"] = system;
    _data["nsfw_allowed"] = nsfwAllowed;
    _data["mfa_enabled"] = mfaEnabled;
    _data["webauthn_enabled"] = webauthnEnabled;
    _data["totp_secret"] = totpSecret;
    _data["totp_last_ticket"] = totpLastTicket;
    _data["created_at"] = createdAt;
    _data["premium_since"] = premiumSince;
    _data["verified"] = verified;
    _data["disabled"] = disabled;
    _data["deleted"] = deleted;
    _data["email"] = email;
    _data["flags"] = flags;
    _data["public_flags"] = publicFlags;
    _data["purchased_flags"] = purchasedFlags;
    _data["premium_usage_flags"] = premiumUsageFlags;
    _data["rights"] = rights;
    if(sessions != null) {
      _data["sessions"] = sessions?.map((e) => e.toJson()).toList();
    }
    if(relationships != null) {
      _data["relationships"] = relationships?.map((e) => e.toJson()).toList();
    }
    if(connectedAccounts != null) {
      _data["connected_accounts"] = connectedAccounts?.map((e) => e.toJson()).toList();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    if(fingerprints != null) {
      _data["fingerprints"] = fingerprints;
    }
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["extended_settings"] = extendedSettings;
    if(securityKeys != null) {
      _data["security_keys"] = securityKeys?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    return _data;
  }
}

class SecurityKeys3 {
  String? userId;
  String? user;
  String? keyId;
  String? publicKey;
  int? counter;
  String? name;
  String? id;

  SecurityKeys3({this.userId, this.user, this.keyId, this.publicKey, this.counter, this.name, this.id});

  SecurityKeys3.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    keyId = json["key_id"];
    publicKey = json["public_key"];
    counter = json["counter"];
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["key_id"] = keyId;
    _data["public_key"] = publicKey;
    _data["counter"] = counter;
    _data["name"] = name;
    _data["id"] = id;
    return _data;
  }
}

class Settings3 {
  String? index;
  int? afkTimeout;
  bool? allowAccessibilityDetection;
  bool? animateEmoji;
  int? animateStickers;
  bool? contactSyncEnabled;
  bool? convertEmoticons;
  CustomStatus3? customStatus;
  bool? defaultGuildsRestricted;
  bool? detectPlatformAccounts;
  bool? developerMode;
  bool? disableGamesTab;
  bool? enableTtsCommand;
  int? explicitContentFilter;
  FriendSourceFlags3? friendSourceFlags;
  bool? gatewayConnected;
  bool? gifAutoPlay;
  List<GuildFolders3>? guildFolders;
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

  Settings3({this.index, this.afkTimeout, this.allowAccessibilityDetection, this.animateEmoji, this.animateStickers, this.contactSyncEnabled, this.convertEmoticons, this.customStatus, this.defaultGuildsRestricted, this.detectPlatformAccounts, this.developerMode, this.disableGamesTab, this.enableTtsCommand, this.explicitContentFilter, this.friendSourceFlags, this.gatewayConnected, this.gifAutoPlay, this.guildFolders, this.guildPositions, this.inlineAttachmentMedia, this.inlineEmbedMedia, this.locale, this.messageDisplayCompact, this.nativePhoneIntegrationEnabled, this.renderEmbeds, this.renderReactions, this.restrictedGuilds, this.showCurrentGame, this.status, this.streamNotificationsEnabled, this.theme, this.timezoneOffset});

  Settings3.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    afkTimeout = json["afk_timeout"];
    allowAccessibilityDetection = json["allow_accessibility_detection"];
    animateEmoji = json["animate_emoji"];
    animateStickers = json["animate_stickers"];
    contactSyncEnabled = json["contact_sync_enabled"];
    convertEmoticons = json["convert_emoticons"];
    customStatus = json["custom_status"] == null ? null : CustomStatus3.fromJson(json["custom_status"]);
    defaultGuildsRestricted = json["default_guilds_restricted"];
    detectPlatformAccounts = json["detect_platform_accounts"];
    developerMode = json["developer_mode"];
    disableGamesTab = json["disable_games_tab"];
    enableTtsCommand = json["enable_tts_command"];
    explicitContentFilter = json["explicit_content_filter"];
    friendSourceFlags = json["friend_source_flags"] == null ? null : FriendSourceFlags3.fromJson(json["friend_source_flags"]);
    gatewayConnected = json["gateway_connected"];
    gifAutoPlay = json["gif_auto_play"];
    guildFolders = json["guild_folders"] == null ? null : (json["guild_folders"] as List).map((e) => GuildFolders3.fromJson(e)).toList();
    guildPositions = json["guild_positions"] == null ? null : List<String>.from(json["guild_positions"]);
    inlineAttachmentMedia = json["inline_attachment_media"];
    inlineEmbedMedia = json["inline_embed_media"];
    locale = json["locale"];
    messageDisplayCompact = json["message_display_compact"];
    nativePhoneIntegrationEnabled = json["native_phone_integration_enabled"];
    renderEmbeds = json["render_embeds"];
    renderReactions = json["render_reactions"];
    restrictedGuilds = json["restricted_guilds"] == null ? null : List<String>.from(json["restricted_guilds"]);
    showCurrentGame = json["show_current_game"];
    status = json["status"];
    streamNotificationsEnabled = json["stream_notifications_enabled"];
    theme = json["theme"];
    timezoneOffset = json["timezone_offset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["afk_timeout"] = afkTimeout;
    _data["allow_accessibility_detection"] = allowAccessibilityDetection;
    _data["animate_emoji"] = animateEmoji;
    _data["animate_stickers"] = animateStickers;
    _data["contact_sync_enabled"] = contactSyncEnabled;
    _data["convert_emoticons"] = convertEmoticons;
    if(customStatus != null) {
      _data["custom_status"] = customStatus?.toJson();
    }
    _data["default_guilds_restricted"] = defaultGuildsRestricted;
    _data["detect_platform_accounts"] = detectPlatformAccounts;
    _data["developer_mode"] = developerMode;
    _data["disable_games_tab"] = disableGamesTab;
    _data["enable_tts_command"] = enableTtsCommand;
    _data["explicit_content_filter"] = explicitContentFilter;
    if(friendSourceFlags != null) {
      _data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    _data["gateway_connected"] = gatewayConnected;
    _data["gif_auto_play"] = gifAutoPlay;
    if(guildFolders != null) {
      _data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if(guildPositions != null) {
      _data["guild_positions"] = guildPositions;
    }
    _data["inline_attachment_media"] = inlineAttachmentMedia;
    _data["inline_embed_media"] = inlineEmbedMedia;
    _data["locale"] = locale;
    _data["message_display_compact"] = messageDisplayCompact;
    _data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    _data["render_embeds"] = renderEmbeds;
    _data["render_reactions"] = renderReactions;
    if(restrictedGuilds != null) {
      _data["restricted_guilds"] = restrictedGuilds;
    }
    _data["show_current_game"] = showCurrentGame;
    _data["status"] = status;
    _data["stream_notifications_enabled"] = streamNotificationsEnabled;
    _data["theme"] = theme;
    _data["timezone_offset"] = timezoneOffset;
    return _data;
  }
}

class GuildFolders3 {
  int? color;
  List<String>? guildIds;
  int? id;
  String? name;

  GuildFolders3({this.color, this.guildIds, this.id, this.name});

  GuildFolders3.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    guildIds = json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    if(guildIds != null) {
      _data["guild_ids"] = guildIds;
    }
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class FriendSourceFlags3 {
  bool? all;

  FriendSourceFlags3({this.all});

  FriendSourceFlags3.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["all"] = all;
    return _data;
  }
}

class CustomStatus3 {
  String? emojiId;
  String? emojiName;
  int? expiresAt;
  String? text;

  CustomStatus3({this.emojiId, this.emojiName, this.expiresAt, this.text});

  CustomStatus3.fromJson(Map<String, dynamic> json) {
    emojiId = json["emoji_id"];
    emojiName = json["emoji_name"];
    expiresAt = json["expires_at"];
    text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["emoji_id"] = emojiId;
    _data["emoji_name"] = emojiName;
    _data["expires_at"] = expiresAt;
    _data["text"] = text;
    return _data;
  }
}

class Data3 {
  String? validTokensSince;
  String? hash;

  Data3({this.validTokensSince, this.hash});

  Data3.fromJson(Map<String, dynamic> json) {
    validTokensSince = json["valid_tokens_since"];
    hash = json["hash"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["valid_tokens_since"] = validTokensSince;
    _data["hash"] = hash;
    return _data;
  }
}

class ConnectedAccounts3 {
  String? externalId;
  String? userId;
  String? user;
  bool? friendSync;
  String? name;
  bool? revoked;
  int? showActivity;
  String? type;
  bool? verified;
  int? visibility;
  List<String>? integrations;
  dynamic metadata;
  int? metadataVisibility;
  bool? twoWayLink;
  TokenData3? tokenData;
  String? id;

  ConnectedAccounts3({this.externalId, this.userId, this.user, this.friendSync, this.name, this.revoked, this.showActivity, this.type, this.verified, this.visibility, this.integrations, this.metadata, this.metadataVisibility, this.twoWayLink, this.tokenData, this.id});

  ConnectedAccounts3.fromJson(Map<String, dynamic> json) {
    externalId = json["external_id"];
    userId = json["user_id"];
    user = json["user"];
    friendSync = json["friend_sync"];
    name = json["name"];
    revoked = json["revoked"];
    showActivity = json["show_activity"];
    type = json["type"];
    verified = json["verified"];
    visibility = json["visibility"];
    integrations = json["integrations"] == null ? null : List<String>.from(json["integrations"]);
    metadata = json["metadata_"];
    metadataVisibility = json["metadata_visibility"];
    twoWayLink = json["two_way_link"];
    tokenData = json["token_data"] == null ? null : TokenData3.fromJson(json["token_data"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["external_id"] = externalId;
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["friend_sync"] = friendSync;
    _data["name"] = name;
    _data["revoked"] = revoked;
    _data["show_activity"] = showActivity;
    _data["type"] = type;
    _data["verified"] = verified;
    _data["visibility"] = visibility;
    if(integrations != null) {
      _data["integrations"] = integrations;
    }
    _data["metadata_"] = metadata;
    _data["metadata_visibility"] = metadataVisibility;
    _data["two_way_link"] = twoWayLink;
    if(tokenData != null) {
      _data["token_data"] = tokenData?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class TokenData3 {
  String? accessToken;
  String? tokenType;
  String? scope;
  String? refreshToken;
  int? expiresIn;
  int? expiresAt;
  int? fetchedAt;

  TokenData3({this.accessToken, this.tokenType, this.scope, this.refreshToken, this.expiresIn, this.expiresAt, this.fetchedAt});

  TokenData3.fromJson(Map<String, dynamic> json) {
    accessToken = json["access_token"];
    tokenType = json["token_type"];
    scope = json["scope"];
    refreshToken = json["refresh_token"];
    expiresIn = json["expires_in"];
    expiresAt = json["expires_at"];
    fetchedAt = json["fetched_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    _data["token_type"] = tokenType;
    _data["scope"] = scope;
    _data["refresh_token"] = refreshToken;
    _data["expires_in"] = expiresIn;
    _data["expires_at"] = expiresAt;
    _data["fetched_at"] = fetchedAt;
    return _data;
  }
}

class Relationships3 {
  String? fromId;
  String? from;
  String? toId;
  String? to;
  String? nickname;
  int? type;
  String? id;

  Relationships3({this.fromId, this.from, this.toId, this.to, this.nickname, this.type, this.id});

  Relationships3.fromJson(Map<String, dynamic> json) {
    fromId = json["from_id"];
    from = json["from"];
    toId = json["to_id"];
    to = json["to"];
    nickname = json["nickname"];
    type = json["type"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["from_id"] = fromId;
    _data["from"] = from;
    _data["to_id"] = toId;
    _data["to"] = to;
    _data["nickname"] = nickname;
    _data["type"] = type;
    _data["id"] = id;
    return _data;
  }
}

class Sessions3 {
  String? userId;
  String? user;
  String? sessionId;
  List<Activities3>? activities;
  ClientInfo3? clientInfo;
  String? status;
  String? id;

  Sessions3({this.userId, this.user, this.sessionId, this.activities, this.clientInfo, this.status, this.id});

  Sessions3.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    sessionId = json["session_id"];
    activities = json["activities"] == null ? null : (json["activities"] as List).map((e) => Activities3.fromJson(e)).toList();
    clientInfo = json["client_info"] == null ? null : ClientInfo3.fromJson(json["client_info"]);
    status = json["status"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["session_id"] = sessionId;
    if(activities != null) {
      _data["activities"] = activities?.map((e) => e.toJson()).toList();
    }
    if(clientInfo != null) {
      _data["client_info"] = clientInfo?.toJson();
    }
    _data["status"] = status;
    _data["id"] = id;
    return _data;
  }
}

class ClientInfo3 {
  String? client;
  String? os;
  int? version;

  ClientInfo3({this.client, this.os, this.version});

  ClientInfo3.fromJson(Map<String, dynamic> json) {
    client = json["client"];
    os = json["os"];
    version = json["version"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["client"] = client;
    _data["os"] = os;
    _data["version"] = version;
    return _data;
  }
}

class Activities3 {
  String? name;
  int? type;
  String? url;
  int? createdAt;
  Timestamps3? timestamps;
  String? applicationId;
  String? details;
  String? state;
  Emoji3? emoji;
  Party3? party;
  Assets3? assets;
  Secrets3? secrets;
  bool? instance;
  String? flags;
  String? id;
  String? syncId;
  Metadata3? metadata;
  String? sessionId;

  Activities3({this.name, this.type, this.url, this.createdAt, this.timestamps, this.applicationId, this.details, this.state, this.emoji, this.party, this.assets, this.secrets, this.instance, this.flags, this.id, this.syncId, this.metadata, this.sessionId});

  Activities3.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    type = json["type"];
    url = json["url"];
    createdAt = json["created_at"];
    timestamps = json["timestamps"] == null ? null : Timestamps3.fromJson(json["timestamps"]);
    applicationId = json["application_id"];
    details = json["details"];
    state = json["state"];
    emoji = json["emoji"] == null ? null : Emoji3.fromJson(json["emoji"]);
    party = json["party"] == null ? null : Party3.fromJson(json["party"]);
    assets = json["assets"] == null ? null : Assets3.fromJson(json["assets"]);
    secrets = json["secrets"] == null ? null : Secrets3.fromJson(json["secrets"]);
    instance = json["instance"];
    flags = json["flags"];
    id = json["id"];
    syncId = json["sync_id"];
    metadata = json["metadata"] == null ? null : Metadata3.fromJson(json["metadata"]);
    sessionId = json["session_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["type"] = type;
    _data["url"] = url;
    _data["created_at"] = createdAt;
    if(timestamps != null) {
      _data["timestamps"] = timestamps?.toJson();
    }
    _data["application_id"] = applicationId;
    _data["details"] = details;
    _data["state"] = state;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    if(party != null) {
      _data["party"] = party?.toJson();
    }
    if(assets != null) {
      _data["assets"] = assets?.toJson();
    }
    if(secrets != null) {
      _data["secrets"] = secrets?.toJson();
    }
    _data["instance"] = instance;
    _data["flags"] = flags;
    _data["id"] = id;
    _data["sync_id"] = syncId;
    if(metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    _data["session_id"] = sessionId;
    return _data;
  }
}

class Metadata3 {
  String? contextUri;
  String? albumId;
  List<String>? artistIds;

  Metadata3({this.contextUri, this.albumId, this.artistIds});

  Metadata3.fromJson(Map<String, dynamic> json) {
    contextUri = json["context_uri"];
    albumId = json["album_id"];
    artistIds = json["artist_ids"] == null ? null : List<String>.from(json["artist_ids"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["context_uri"] = contextUri;
    _data["album_id"] = albumId;
    if(artistIds != null) {
      _data["artist_ids"] = artistIds;
    }
    return _data;
  }
}

class Secrets3 {
  String? join;
  String? spectate;
  String? match;

  Secrets3({this.join, this.spectate, this.match});

  Secrets3.fromJson(Map<String, dynamic> json) {
    join = json["join"];
    spectate = json["spectate"];
    match = json["match"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["join"] = join;
    _data["spectate"] = spectate;
    _data["match"] = match;
    return _data;
  }
}

class Assets3 {
  String? largeImage;
  String? largeText;
  String? smallImage;
  String? smallText;

  Assets3({this.largeImage, this.largeText, this.smallImage, this.smallText});

  Assets3.fromJson(Map<String, dynamic> json) {
    largeImage = json["large_image"];
    largeText = json["large_text"];
    smallImage = json["small_image"];
    smallText = json["small_text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["large_image"] = largeImage;
    _data["large_text"] = largeText;
    _data["small_image"] = smallImage;
    _data["small_text"] = smallText;
    return _data;
  }
}

class Party3 {
  String? id;
  List<int>? size;

  Party3({this.id, this.size});

  Party3.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    size = json["size"] == null ? null : List<int>.from(json["size"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if(size != null) {
      _data["size"] = size;
    }
    return _data;
  }
}

class Emoji3 {
  String? name;
  String? id;
  bool? animated;

  Emoji3({this.name, this.id, this.animated});

  Emoji3.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["id"] = id;
    _data["animated"] = animated;
    return _data;
  }
}

class Timestamps3 {
  int? start;
  int? end;

  Timestamps3({this.start, this.end});

  Timestamps3.fromJson(Map<String, dynamic> json) {
    start = json["start"];
    end = json["end"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }
}

class Invites {
  String? code;
  bool? temporary;
  int? uses;
  int? maxUses;
  int? maxAge;
  String? createdAt;
  String? expiresAt;
  String? guildId;
  String? guild;
  String? channelId;
  String? channel;
  String? inviterId;
  Inviter? inviter;
  String? targetUserId;
  String? targetUser;
  int? targetUserType;
  bool? vanityUrl;

  Invites({this.code, this.temporary, this.uses, this.maxUses, this.maxAge, this.createdAt, this.expiresAt, this.guildId, this.guild, this.channelId, this.channel, this.inviterId, this.inviter, this.targetUserId, this.targetUser, this.targetUserType, this.vanityUrl});

  Invites.fromJson(Map<String, dynamic> json) {
    code = json["code"];
    temporary = json["temporary"];
    uses = json["uses"];
    maxUses = json["max_uses"];
    maxAge = json["max_age"];
    createdAt = json["created_at"];
    expiresAt = json["expires_at"];
    guildId = json["guild_id"];
    guild = json["guild"];
    channelId = json["channel_id"];
    channel = json["channel"];
    inviterId = json["inviter_id"];
    inviter = json["inviter"] == null ? null : Inviter.fromJson(json["inviter"]);
    targetUserId = json["target_user_id"];
    targetUser = json["target_user"];
    targetUserType = json["target_user_type"];
    vanityUrl = json["vanity_url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["code"] = code;
    _data["temporary"] = temporary;
    _data["uses"] = uses;
    _data["max_uses"] = maxUses;
    _data["max_age"] = maxAge;
    _data["created_at"] = createdAt;
    _data["expires_at"] = expiresAt;
    _data["guild_id"] = guildId;
    _data["guild"] = guild;
    _data["channel_id"] = channelId;
    _data["channel"] = channel;
    _data["inviter_id"] = inviterId;
    if(inviter != null) {
      _data["inviter"] = inviter?.toJson();
    }
    _data["target_user_id"] = targetUserId;
    _data["target_user"] = targetUser;
    _data["target_user_type"] = targetUserType;
    _data["vanity_url"] = vanityUrl;
    return _data;
  }
}

class Inviter {
  String? username;
  String? discriminator;
  String? avatar;
  int? accentColor;
  String? banner;
  List<int>? themeColors;
  String? pronouns;
  String? phone;
  bool? desktop;
  bool? mobile;
  bool? premium;
  int? premiumType;
  bool? bot;
  String? bio;
  bool? system;
  bool? nsfwAllowed;
  bool? mfaEnabled;
  bool? webauthnEnabled;
  String? totpSecret;
  String? totpLastTicket;
  String? createdAt;
  String? premiumSince;
  bool? verified;
  bool? disabled;
  bool? deleted;
  String? email;
  String? flags;
  int? publicFlags;
  int? purchasedFlags;
  int? premiumUsageFlags;
  String? rights;
  List<Sessions2>? sessions;
  List<Relationships2>? relationships;
  List<ConnectedAccounts2>? connectedAccounts;
  Data2? data;
  List<String>? fingerprints;
  Settings2? settings;
  String? extendedSettings;
  List<SecurityKeys2>? securityKeys;
  String? id;

  Inviter({this.username, this.discriminator, this.avatar, this.accentColor, this.banner, this.themeColors, this.pronouns, this.phone, this.desktop, this.mobile, this.premium, this.premiumType, this.bot, this.bio, this.system, this.nsfwAllowed, this.mfaEnabled, this.webauthnEnabled, this.totpSecret, this.totpLastTicket, this.createdAt, this.premiumSince, this.verified, this.disabled, this.deleted, this.email, this.flags, this.publicFlags, this.purchasedFlags, this.premiumUsageFlags, this.rights, this.sessions, this.relationships, this.connectedAccounts, this.data, this.fingerprints, this.settings, this.extendedSettings, this.securityKeys, this.id});

  Inviter.fromJson(Map<String, dynamic> json) {
    username = json["username"];
    discriminator = json["discriminator"];
    avatar = json["avatar"];
    accentColor = json["accent_color"];
    banner = json["banner"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    phone = json["phone"];
    desktop = json["desktop"];
    mobile = json["mobile"];
    premium = json["premium"];
    premiumType = json["premium_type"];
    bot = json["bot"];
    bio = json["bio"];
    system = json["system"];
    nsfwAllowed = json["nsfw_allowed"];
    mfaEnabled = json["mfa_enabled"];
    webauthnEnabled = json["webauthn_enabled"];
    totpSecret = json["totp_secret"];
    totpLastTicket = json["totp_last_ticket"];
    createdAt = json["created_at"];
    premiumSince = json["premium_since"];
    verified = json["verified"];
    disabled = json["disabled"];
    deleted = json["deleted"];
    email = json["email"];
    flags = json["flags"];
    publicFlags = json["public_flags"];
    purchasedFlags = json["purchased_flags"];
    premiumUsageFlags = json["premium_usage_flags"];
    rights = json["rights"];
    sessions = json["sessions"] == null ? null : (json["sessions"] as List).map((e) => Sessions2.fromJson(e)).toList();
    relationships = json["relationships"] == null ? null : (json["relationships"] as List).map((e) => Relationships2.fromJson(e)).toList();
    connectedAccounts = json["connected_accounts"] == null ? null : (json["connected_accounts"] as List).map((e) => ConnectedAccounts2.fromJson(e)).toList();
    data = json["data"] == null ? null : Data2.fromJson(json["data"]);
    fingerprints = json["fingerprints"] == null ? null : List<String>.from(json["fingerprints"]);
    settings = json["settings"] == null ? null : Settings2.fromJson(json["settings"]);
    extendedSettings = json["extended_settings"];
    securityKeys = json["security_keys"] == null ? null : (json["security_keys"] as List).map((e) => SecurityKeys2.fromJson(e)).toList();
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["discriminator"] = discriminator;
    _data["avatar"] = avatar;
    _data["accent_color"] = accentColor;
    _data["banner"] = banner;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["phone"] = phone;
    _data["desktop"] = desktop;
    _data["mobile"] = mobile;
    _data["premium"] = premium;
    _data["premium_type"] = premiumType;
    _data["bot"] = bot;
    _data["bio"] = bio;
    _data["system"] = system;
    _data["nsfw_allowed"] = nsfwAllowed;
    _data["mfa_enabled"] = mfaEnabled;
    _data["webauthn_enabled"] = webauthnEnabled;
    _data["totp_secret"] = totpSecret;
    _data["totp_last_ticket"] = totpLastTicket;
    _data["created_at"] = createdAt;
    _data["premium_since"] = premiumSince;
    _data["verified"] = verified;
    _data["disabled"] = disabled;
    _data["deleted"] = deleted;
    _data["email"] = email;
    _data["flags"] = flags;
    _data["public_flags"] = publicFlags;
    _data["purchased_flags"] = purchasedFlags;
    _data["premium_usage_flags"] = premiumUsageFlags;
    _data["rights"] = rights;
    if(sessions != null) {
      _data["sessions"] = sessions?.map((e) => e.toJson()).toList();
    }
    if(relationships != null) {
      _data["relationships"] = relationships?.map((e) => e.toJson()).toList();
    }
    if(connectedAccounts != null) {
      _data["connected_accounts"] = connectedAccounts?.map((e) => e.toJson()).toList();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    if(fingerprints != null) {
      _data["fingerprints"] = fingerprints;
    }
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["extended_settings"] = extendedSettings;
    if(securityKeys != null) {
      _data["security_keys"] = securityKeys?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    return _data;
  }
}

class SecurityKeys2 {
  String? userId;
  String? user;
  String? keyId;
  String? publicKey;
  int? counter;
  String? name;
  String? id;

  SecurityKeys2({this.userId, this.user, this.keyId, this.publicKey, this.counter, this.name, this.id});

  SecurityKeys2.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    keyId = json["key_id"];
    publicKey = json["public_key"];
    counter = json["counter"];
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["key_id"] = keyId;
    _data["public_key"] = publicKey;
    _data["counter"] = counter;
    _data["name"] = name;
    _data["id"] = id;
    return _data;
  }
}

class Settings2 {
  String? index;
  int? afkTimeout;
  bool? allowAccessibilityDetection;
  bool? animateEmoji;
  int? animateStickers;
  bool? contactSyncEnabled;
  bool? convertEmoticons;
  CustomStatus2? customStatus;
  bool? defaultGuildsRestricted;
  bool? detectPlatformAccounts;
  bool? developerMode;
  bool? disableGamesTab;
  bool? enableTtsCommand;
  int? explicitContentFilter;
  FriendSourceFlags2? friendSourceFlags;
  bool? gatewayConnected;
  bool? gifAutoPlay;
  List<GuildFolders2>? guildFolders;
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

  Settings2({this.index, this.afkTimeout, this.allowAccessibilityDetection, this.animateEmoji, this.animateStickers, this.contactSyncEnabled, this.convertEmoticons, this.customStatus, this.defaultGuildsRestricted, this.detectPlatformAccounts, this.developerMode, this.disableGamesTab, this.enableTtsCommand, this.explicitContentFilter, this.friendSourceFlags, this.gatewayConnected, this.gifAutoPlay, this.guildFolders, this.guildPositions, this.inlineAttachmentMedia, this.inlineEmbedMedia, this.locale, this.messageDisplayCompact, this.nativePhoneIntegrationEnabled, this.renderEmbeds, this.renderReactions, this.restrictedGuilds, this.showCurrentGame, this.status, this.streamNotificationsEnabled, this.theme, this.timezoneOffset});

  Settings2.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    afkTimeout = json["afk_timeout"];
    allowAccessibilityDetection = json["allow_accessibility_detection"];
    animateEmoji = json["animate_emoji"];
    animateStickers = json["animate_stickers"];
    contactSyncEnabled = json["contact_sync_enabled"];
    convertEmoticons = json["convert_emoticons"];
    customStatus = json["custom_status"] == null ? null : CustomStatus2.fromJson(json["custom_status"]);
    defaultGuildsRestricted = json["default_guilds_restricted"];
    detectPlatformAccounts = json["detect_platform_accounts"];
    developerMode = json["developer_mode"];
    disableGamesTab = json["disable_games_tab"];
    enableTtsCommand = json["enable_tts_command"];
    explicitContentFilter = json["explicit_content_filter"];
    friendSourceFlags = json["friend_source_flags"] == null ? null : FriendSourceFlags2.fromJson(json["friend_source_flags"]);
    gatewayConnected = json["gateway_connected"];
    gifAutoPlay = json["gif_auto_play"];
    guildFolders = json["guild_folders"] == null ? null : (json["guild_folders"] as List).map((e) => GuildFolders2.fromJson(e)).toList();
    guildPositions = json["guild_positions"] == null ? null : List<String>.from(json["guild_positions"]);
    inlineAttachmentMedia = json["inline_attachment_media"];
    inlineEmbedMedia = json["inline_embed_media"];
    locale = json["locale"];
    messageDisplayCompact = json["message_display_compact"];
    nativePhoneIntegrationEnabled = json["native_phone_integration_enabled"];
    renderEmbeds = json["render_embeds"];
    renderReactions = json["render_reactions"];
    restrictedGuilds = json["restricted_guilds"] == null ? null : List<String>.from(json["restricted_guilds"]);
    showCurrentGame = json["show_current_game"];
    status = json["status"];
    streamNotificationsEnabled = json["stream_notifications_enabled"];
    theme = json["theme"];
    timezoneOffset = json["timezone_offset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["afk_timeout"] = afkTimeout;
    _data["allow_accessibility_detection"] = allowAccessibilityDetection;
    _data["animate_emoji"] = animateEmoji;
    _data["animate_stickers"] = animateStickers;
    _data["contact_sync_enabled"] = contactSyncEnabled;
    _data["convert_emoticons"] = convertEmoticons;
    if(customStatus != null) {
      _data["custom_status"] = customStatus?.toJson();
    }
    _data["default_guilds_restricted"] = defaultGuildsRestricted;
    _data["detect_platform_accounts"] = detectPlatformAccounts;
    _data["developer_mode"] = developerMode;
    _data["disable_games_tab"] = disableGamesTab;
    _data["enable_tts_command"] = enableTtsCommand;
    _data["explicit_content_filter"] = explicitContentFilter;
    if(friendSourceFlags != null) {
      _data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    _data["gateway_connected"] = gatewayConnected;
    _data["gif_auto_play"] = gifAutoPlay;
    if(guildFolders != null) {
      _data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if(guildPositions != null) {
      _data["guild_positions"] = guildPositions;
    }
    _data["inline_attachment_media"] = inlineAttachmentMedia;
    _data["inline_embed_media"] = inlineEmbedMedia;
    _data["locale"] = locale;
    _data["message_display_compact"] = messageDisplayCompact;
    _data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    _data["render_embeds"] = renderEmbeds;
    _data["render_reactions"] = renderReactions;
    if(restrictedGuilds != null) {
      _data["restricted_guilds"] = restrictedGuilds;
    }
    _data["show_current_game"] = showCurrentGame;
    _data["status"] = status;
    _data["stream_notifications_enabled"] = streamNotificationsEnabled;
    _data["theme"] = theme;
    _data["timezone_offset"] = timezoneOffset;
    return _data;
  }
}

class GuildFolders2 {
  int? color;
  List<String>? guildIds;
  int? id;
  String? name;

  GuildFolders2({this.color, this.guildIds, this.id, this.name});

  GuildFolders2.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    guildIds = json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    if(guildIds != null) {
      _data["guild_ids"] = guildIds;
    }
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class FriendSourceFlags2 {
  bool? all;

  FriendSourceFlags2({this.all});

  FriendSourceFlags2.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["all"] = all;
    return _data;
  }
}

class CustomStatus2 {
  String? emojiId;
  String? emojiName;
  int? expiresAt;
  String? text;

  CustomStatus2({this.emojiId, this.emojiName, this.expiresAt, this.text});

  CustomStatus2.fromJson(Map<String, dynamic> json) {
    emojiId = json["emoji_id"];
    emojiName = json["emoji_name"];
    expiresAt = json["expires_at"];
    text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["emoji_id"] = emojiId;
    _data["emoji_name"] = emojiName;
    _data["expires_at"] = expiresAt;
    _data["text"] = text;
    return _data;
  }
}

class Data2 {
  String? validTokensSince;
  String? hash;

  Data2({this.validTokensSince, this.hash});

  Data2.fromJson(Map<String, dynamic> json) {
    validTokensSince = json["valid_tokens_since"];
    hash = json["hash"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["valid_tokens_since"] = validTokensSince;
    _data["hash"] = hash;
    return _data;
  }
}

class ConnectedAccounts2 {
  String? externalId;
  String? userId;
  String? user;
  bool? friendSync;
  String? name;
  bool? revoked;
  int? showActivity;
  String? type;
  bool? verified;
  int? visibility;
  List<String>? integrations;
  dynamic metadata;
  int? metadataVisibility;
  bool? twoWayLink;
  TokenData2? tokenData;
  String? id;

  ConnectedAccounts2({this.externalId, this.userId, this.user, this.friendSync, this.name, this.revoked, this.showActivity, this.type, this.verified, this.visibility, this.integrations, this.metadata, this.metadataVisibility, this.twoWayLink, this.tokenData, this.id});

  ConnectedAccounts2.fromJson(Map<String, dynamic> json) {
    externalId = json["external_id"];
    userId = json["user_id"];
    user = json["user"];
    friendSync = json["friend_sync"];
    name = json["name"];
    revoked = json["revoked"];
    showActivity = json["show_activity"];
    type = json["type"];
    verified = json["verified"];
    visibility = json["visibility"];
    integrations = json["integrations"] == null ? null : List<String>.from(json["integrations"]);
    metadata = json["metadata_"];
    metadataVisibility = json["metadata_visibility"];
    twoWayLink = json["two_way_link"];
    tokenData = json["token_data"] == null ? null : TokenData2.fromJson(json["token_data"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["external_id"] = externalId;
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["friend_sync"] = friendSync;
    _data["name"] = name;
    _data["revoked"] = revoked;
    _data["show_activity"] = showActivity;
    _data["type"] = type;
    _data["verified"] = verified;
    _data["visibility"] = visibility;
    if(integrations != null) {
      _data["integrations"] = integrations;
    }
    _data["metadata_"] = metadata;
    _data["metadata_visibility"] = metadataVisibility;
    _data["two_way_link"] = twoWayLink;
    if(tokenData != null) {
      _data["token_data"] = tokenData?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class TokenData2 {
  String? accessToken;
  String? tokenType;
  String? scope;
  String? refreshToken;
  int? expiresIn;
  int? expiresAt;
  int? fetchedAt;

  TokenData2({this.accessToken, this.tokenType, this.scope, this.refreshToken, this.expiresIn, this.expiresAt, this.fetchedAt});

  TokenData2.fromJson(Map<String, dynamic> json) {
    accessToken = json["access_token"];
    tokenType = json["token_type"];
    scope = json["scope"];
    refreshToken = json["refresh_token"];
    expiresIn = json["expires_in"];
    expiresAt = json["expires_at"];
    fetchedAt = json["fetched_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    _data["token_type"] = tokenType;
    _data["scope"] = scope;
    _data["refresh_token"] = refreshToken;
    _data["expires_in"] = expiresIn;
    _data["expires_at"] = expiresAt;
    _data["fetched_at"] = fetchedAt;
    return _data;
  }
}

class Relationships2 {
  String? fromId;
  String? from;
  String? toId;
  String? to;
  String? nickname;
  int? type;
  String? id;

  Relationships2({this.fromId, this.from, this.toId, this.to, this.nickname, this.type, this.id});

  Relationships2.fromJson(Map<String, dynamic> json) {
    fromId = json["from_id"];
    from = json["from"];
    toId = json["to_id"];
    to = json["to"];
    nickname = json["nickname"];
    type = json["type"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["from_id"] = fromId;
    _data["from"] = from;
    _data["to_id"] = toId;
    _data["to"] = to;
    _data["nickname"] = nickname;
    _data["type"] = type;
    _data["id"] = id;
    return _data;
  }
}

class Sessions2 {
  String? userId;
  String? user;
  String? sessionId;
  List<Activities2>? activities;
  ClientInfo2? clientInfo;
  String? status;
  String? id;

  Sessions2({this.userId, this.user, this.sessionId, this.activities, this.clientInfo, this.status, this.id});

  Sessions2.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    sessionId = json["session_id"];
    activities = json["activities"] == null ? null : (json["activities"] as List).map((e) => Activities2.fromJson(e)).toList();
    clientInfo = json["client_info"] == null ? null : ClientInfo2.fromJson(json["client_info"]);
    status = json["status"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["session_id"] = sessionId;
    if(activities != null) {
      _data["activities"] = activities?.map((e) => e.toJson()).toList();
    }
    if(clientInfo != null) {
      _data["client_info"] = clientInfo?.toJson();
    }
    _data["status"] = status;
    _data["id"] = id;
    return _data;
  }
}

class ClientInfo2 {
  String? client;
  String? os;
  int? version;

  ClientInfo2({this.client, this.os, this.version});

  ClientInfo2.fromJson(Map<String, dynamic> json) {
    client = json["client"];
    os = json["os"];
    version = json["version"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["client"] = client;
    _data["os"] = os;
    _data["version"] = version;
    return _data;
  }
}

class Activities2 {
  String? name;
  int? type;
  String? url;
  int? createdAt;
  Timestamps2? timestamps;
  String? applicationId;
  String? details;
  String? state;
  Emoji2? emoji;
  Party2? party;
  Assets2? assets;
  Secrets2? secrets;
  bool? instance;
  String? flags;
  String? id;
  String? syncId;
  Metadata2? metadata;
  String? sessionId;

  Activities2({this.name, this.type, this.url, this.createdAt, this.timestamps, this.applicationId, this.details, this.state, this.emoji, this.party, this.assets, this.secrets, this.instance, this.flags, this.id, this.syncId, this.metadata, this.sessionId});

  Activities2.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    type = json["type"];
    url = json["url"];
    createdAt = json["created_at"];
    timestamps = json["timestamps"] == null ? null : Timestamps2.fromJson(json["timestamps"]);
    applicationId = json["application_id"];
    details = json["details"];
    state = json["state"];
    emoji = json["emoji"] == null ? null : Emoji2.fromJson(json["emoji"]);
    party = json["party"] == null ? null : Party2.fromJson(json["party"]);
    assets = json["assets"] == null ? null : Assets2.fromJson(json["assets"]);
    secrets = json["secrets"] == null ? null : Secrets2.fromJson(json["secrets"]);
    instance = json["instance"];
    flags = json["flags"];
    id = json["id"];
    syncId = json["sync_id"];
    metadata = json["metadata"] == null ? null : Metadata2.fromJson(json["metadata"]);
    sessionId = json["session_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["type"] = type;
    _data["url"] = url;
    _data["created_at"] = createdAt;
    if(timestamps != null) {
      _data["timestamps"] = timestamps?.toJson();
    }
    _data["application_id"] = applicationId;
    _data["details"] = details;
    _data["state"] = state;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    if(party != null) {
      _data["party"] = party?.toJson();
    }
    if(assets != null) {
      _data["assets"] = assets?.toJson();
    }
    if(secrets != null) {
      _data["secrets"] = secrets?.toJson();
    }
    _data["instance"] = instance;
    _data["flags"] = flags;
    _data["id"] = id;
    _data["sync_id"] = syncId;
    if(metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    _data["session_id"] = sessionId;
    return _data;
  }
}

class Metadata2 {
  String? contextUri;
  String? albumId;
  List<String>? artistIds;

  Metadata2({this.contextUri, this.albumId, this.artistIds});

  Metadata2.fromJson(Map<String, dynamic> json) {
    contextUri = json["context_uri"];
    albumId = json["album_id"];
    artistIds = json["artist_ids"] == null ? null : List<String>.from(json["artist_ids"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["context_uri"] = contextUri;
    _data["album_id"] = albumId;
    if(artistIds != null) {
      _data["artist_ids"] = artistIds;
    }
    return _data;
  }
}

class Secrets2 {
  String? join;
  String? spectate;
  String? match;

  Secrets2({this.join, this.spectate, this.match});

  Secrets2.fromJson(Map<String, dynamic> json) {
    join = json["join"];
    spectate = json["spectate"];
    match = json["match"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["join"] = join;
    _data["spectate"] = spectate;
    _data["match"] = match;
    return _data;
  }
}

class Assets2 {
  String? largeImage;
  String? largeText;
  String? smallImage;
  String? smallText;

  Assets2({this.largeImage, this.largeText, this.smallImage, this.smallText});

  Assets2.fromJson(Map<String, dynamic> json) {
    largeImage = json["large_image"];
    largeText = json["large_text"];
    smallImage = json["small_image"];
    smallText = json["small_text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["large_image"] = largeImage;
    _data["large_text"] = largeText;
    _data["small_image"] = smallImage;
    _data["small_text"] = smallText;
    return _data;
  }
}

class Party2 {
  String? id;
  List<int>? size;

  Party2({this.id, this.size});

  Party2.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    size = json["size"] == null ? null : List<int>.from(json["size"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if(size != null) {
      _data["size"] = size;
    }
    return _data;
  }
}

class Emoji2 {
  String? name;
  String? id;
  bool? animated;

  Emoji2({this.name, this.id, this.animated});

  Emoji2.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["id"] = id;
    _data["animated"] = animated;
    return _data;
  }
}

class Timestamps2 {
  int? start;
  int? end;

  Timestamps2({this.start, this.end});

  Timestamps2.fromJson(Map<String, dynamic> json) {
    start = json["start"];
    end = json["end"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }
}

class PermissionOverwrites {
  String? allow;
  String? deny;
  String? id;
  int? type;

  PermissionOverwrites({this.allow, this.deny, this.id, this.type});

  PermissionOverwrites.fromJson(Map<String, dynamic> json) {
    allow = json["allow"];
    deny = json["deny"];
    id = json["id"];
    type = json["type"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["allow"] = allow;
    _data["deny"] = deny;
    _data["id"] = id;
    _data["type"] = type;
    return _data;
  }
}

class Owner {
  String? username;
  String? discriminator;
  String? avatar;
  int? accentColor;
  String? banner;
  List<int>? themeColors;
  String? pronouns;
  String? phone;
  bool? desktop;
  bool? mobile;
  bool? premium;
  int? premiumType;
  bool? bot;
  String? bio;
  bool? system;
  bool? nsfwAllowed;
  bool? mfaEnabled;
  bool? webauthnEnabled;
  String? totpSecret;
  String? totpLastTicket;
  String? createdAt;
  String? premiumSince;
  bool? verified;
  bool? disabled;
  bool? deleted;
  String? email;
  String? flags;
  int? publicFlags;
  int? purchasedFlags;
  int? premiumUsageFlags;
  String? rights;
  List<Sessions1>? sessions;
  List<Relationships1>? relationships;
  List<ConnectedAccounts1>? connectedAccounts;
  Data1? data;
  List<String>? fingerprints;
  Settings1? settings;
  String? extendedSettings;
  List<SecurityKeys1>? securityKeys;
  String? id;

  Owner({this.username, this.discriminator, this.avatar, this.accentColor, this.banner, this.themeColors, this.pronouns, this.phone, this.desktop, this.mobile, this.premium, this.premiumType, this.bot, this.bio, this.system, this.nsfwAllowed, this.mfaEnabled, this.webauthnEnabled, this.totpSecret, this.totpLastTicket, this.createdAt, this.premiumSince, this.verified, this.disabled, this.deleted, this.email, this.flags, this.publicFlags, this.purchasedFlags, this.premiumUsageFlags, this.rights, this.sessions, this.relationships, this.connectedAccounts, this.data, this.fingerprints, this.settings, this.extendedSettings, this.securityKeys, this.id});

  Owner.fromJson(Map<String, dynamic> json) {
    username = json["username"];
    discriminator = json["discriminator"];
    avatar = json["avatar"];
    accentColor = json["accent_color"];
    banner = json["banner"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    phone = json["phone"];
    desktop = json["desktop"];
    mobile = json["mobile"];
    premium = json["premium"];
    premiumType = json["premium_type"];
    bot = json["bot"];
    bio = json["bio"];
    system = json["system"];
    nsfwAllowed = json["nsfw_allowed"];
    mfaEnabled = json["mfa_enabled"];
    webauthnEnabled = json["webauthn_enabled"];
    totpSecret = json["totp_secret"];
    totpLastTicket = json["totp_last_ticket"];
    createdAt = json["created_at"];
    premiumSince = json["premium_since"];
    verified = json["verified"];
    disabled = json["disabled"];
    deleted = json["deleted"];
    email = json["email"];
    flags = json["flags"];
    publicFlags = json["public_flags"];
    purchasedFlags = json["purchased_flags"];
    premiumUsageFlags = json["premium_usage_flags"];
    rights = json["rights"];
    sessions = json["sessions"] == null ? null : (json["sessions"] as List).map((e) => Sessions1.fromJson(e)).toList();
    relationships = json["relationships"] == null ? null : (json["relationships"] as List).map((e) => Relationships1.fromJson(e)).toList();
    connectedAccounts = json["connected_accounts"] == null ? null : (json["connected_accounts"] as List).map((e) => ConnectedAccounts1.fromJson(e)).toList();
    data = json["data"] == null ? null : Data1.fromJson(json["data"]);
    fingerprints = json["fingerprints"] == null ? null : List<String>.from(json["fingerprints"]);
    settings = json["settings"] == null ? null : Settings1.fromJson(json["settings"]);
    extendedSettings = json["extended_settings"];
    securityKeys = json["security_keys"] == null ? null : (json["security_keys"] as List).map((e) => SecurityKeys1.fromJson(e)).toList();
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["discriminator"] = discriminator;
    _data["avatar"] = avatar;
    _data["accent_color"] = accentColor;
    _data["banner"] = banner;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["phone"] = phone;
    _data["desktop"] = desktop;
    _data["mobile"] = mobile;
    _data["premium"] = premium;
    _data["premium_type"] = premiumType;
    _data["bot"] = bot;
    _data["bio"] = bio;
    _data["system"] = system;
    _data["nsfw_allowed"] = nsfwAllowed;
    _data["mfa_enabled"] = mfaEnabled;
    _data["webauthn_enabled"] = webauthnEnabled;
    _data["totp_secret"] = totpSecret;
    _data["totp_last_ticket"] = totpLastTicket;
    _data["created_at"] = createdAt;
    _data["premium_since"] = premiumSince;
    _data["verified"] = verified;
    _data["disabled"] = disabled;
    _data["deleted"] = deleted;
    _data["email"] = email;
    _data["flags"] = flags;
    _data["public_flags"] = publicFlags;
    _data["purchased_flags"] = purchasedFlags;
    _data["premium_usage_flags"] = premiumUsageFlags;
    _data["rights"] = rights;
    if(sessions != null) {
      _data["sessions"] = sessions?.map((e) => e.toJson()).toList();
    }
    if(relationships != null) {
      _data["relationships"] = relationships?.map((e) => e.toJson()).toList();
    }
    if(connectedAccounts != null) {
      _data["connected_accounts"] = connectedAccounts?.map((e) => e.toJson()).toList();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    if(fingerprints != null) {
      _data["fingerprints"] = fingerprints;
    }
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["extended_settings"] = extendedSettings;
    if(securityKeys != null) {
      _data["security_keys"] = securityKeys?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    return _data;
  }
}

class SecurityKeys1 {
  String? userId;
  String? user;
  String? keyId;
  String? publicKey;
  int? counter;
  String? name;
  String? id;

  SecurityKeys1({this.userId, this.user, this.keyId, this.publicKey, this.counter, this.name, this.id});

  SecurityKeys1.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    keyId = json["key_id"];
    publicKey = json["public_key"];
    counter = json["counter"];
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["key_id"] = keyId;
    _data["public_key"] = publicKey;
    _data["counter"] = counter;
    _data["name"] = name;
    _data["id"] = id;
    return _data;
  }
}

class Settings1 {
  String? index;
  int? afkTimeout;
  bool? allowAccessibilityDetection;
  bool? animateEmoji;
  int? animateStickers;
  bool? contactSyncEnabled;
  bool? convertEmoticons;
  CustomStatus1? customStatus;
  bool? defaultGuildsRestricted;
  bool? detectPlatformAccounts;
  bool? developerMode;
  bool? disableGamesTab;
  bool? enableTtsCommand;
  int? explicitContentFilter;
  FriendSourceFlags1? friendSourceFlags;
  bool? gatewayConnected;
  bool? gifAutoPlay;
  List<GuildFolders1>? guildFolders;
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

  Settings1({this.index, this.afkTimeout, this.allowAccessibilityDetection, this.animateEmoji, this.animateStickers, this.contactSyncEnabled, this.convertEmoticons, this.customStatus, this.defaultGuildsRestricted, this.detectPlatformAccounts, this.developerMode, this.disableGamesTab, this.enableTtsCommand, this.explicitContentFilter, this.friendSourceFlags, this.gatewayConnected, this.gifAutoPlay, this.guildFolders, this.guildPositions, this.inlineAttachmentMedia, this.inlineEmbedMedia, this.locale, this.messageDisplayCompact, this.nativePhoneIntegrationEnabled, this.renderEmbeds, this.renderReactions, this.restrictedGuilds, this.showCurrentGame, this.status, this.streamNotificationsEnabled, this.theme, this.timezoneOffset});

  Settings1.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    afkTimeout = json["afk_timeout"];
    allowAccessibilityDetection = json["allow_accessibility_detection"];
    animateEmoji = json["animate_emoji"];
    animateStickers = json["animate_stickers"];
    contactSyncEnabled = json["contact_sync_enabled"];
    convertEmoticons = json["convert_emoticons"];
    customStatus = json["custom_status"] == null ? null : CustomStatus1.fromJson(json["custom_status"]);
    defaultGuildsRestricted = json["default_guilds_restricted"];
    detectPlatformAccounts = json["detect_platform_accounts"];
    developerMode = json["developer_mode"];
    disableGamesTab = json["disable_games_tab"];
    enableTtsCommand = json["enable_tts_command"];
    explicitContentFilter = json["explicit_content_filter"];
    friendSourceFlags = json["friend_source_flags"] == null ? null : FriendSourceFlags1.fromJson(json["friend_source_flags"]);
    gatewayConnected = json["gateway_connected"];
    gifAutoPlay = json["gif_auto_play"];
    guildFolders = json["guild_folders"] == null ? null : (json["guild_folders"] as List).map((e) => GuildFolders1.fromJson(e)).toList();
    guildPositions = json["guild_positions"] == null ? null : List<String>.from(json["guild_positions"]);
    inlineAttachmentMedia = json["inline_attachment_media"];
    inlineEmbedMedia = json["inline_embed_media"];
    locale = json["locale"];
    messageDisplayCompact = json["message_display_compact"];
    nativePhoneIntegrationEnabled = json["native_phone_integration_enabled"];
    renderEmbeds = json["render_embeds"];
    renderReactions = json["render_reactions"];
    restrictedGuilds = json["restricted_guilds"] == null ? null : List<String>.from(json["restricted_guilds"]);
    showCurrentGame = json["show_current_game"];
    status = json["status"];
    streamNotificationsEnabled = json["stream_notifications_enabled"];
    theme = json["theme"];
    timezoneOffset = json["timezone_offset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["afk_timeout"] = afkTimeout;
    _data["allow_accessibility_detection"] = allowAccessibilityDetection;
    _data["animate_emoji"] = animateEmoji;
    _data["animate_stickers"] = animateStickers;
    _data["contact_sync_enabled"] = contactSyncEnabled;
    _data["convert_emoticons"] = convertEmoticons;
    if(customStatus != null) {
      _data["custom_status"] = customStatus?.toJson();
    }
    _data["default_guilds_restricted"] = defaultGuildsRestricted;
    _data["detect_platform_accounts"] = detectPlatformAccounts;
    _data["developer_mode"] = developerMode;
    _data["disable_games_tab"] = disableGamesTab;
    _data["enable_tts_command"] = enableTtsCommand;
    _data["explicit_content_filter"] = explicitContentFilter;
    if(friendSourceFlags != null) {
      _data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    _data["gateway_connected"] = gatewayConnected;
    _data["gif_auto_play"] = gifAutoPlay;
    if(guildFolders != null) {
      _data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if(guildPositions != null) {
      _data["guild_positions"] = guildPositions;
    }
    _data["inline_attachment_media"] = inlineAttachmentMedia;
    _data["inline_embed_media"] = inlineEmbedMedia;
    _data["locale"] = locale;
    _data["message_display_compact"] = messageDisplayCompact;
    _data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    _data["render_embeds"] = renderEmbeds;
    _data["render_reactions"] = renderReactions;
    if(restrictedGuilds != null) {
      _data["restricted_guilds"] = restrictedGuilds;
    }
    _data["show_current_game"] = showCurrentGame;
    _data["status"] = status;
    _data["stream_notifications_enabled"] = streamNotificationsEnabled;
    _data["theme"] = theme;
    _data["timezone_offset"] = timezoneOffset;
    return _data;
  }
}

class GuildFolders1 {
  int? color;
  List<String>? guildIds;
  int? id;
  String? name;

  GuildFolders1({this.color, this.guildIds, this.id, this.name});

  GuildFolders1.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    guildIds = json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    if(guildIds != null) {
      _data["guild_ids"] = guildIds;
    }
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class FriendSourceFlags1 {
  bool? all;

  FriendSourceFlags1({this.all});

  FriendSourceFlags1.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["all"] = all;
    return _data;
  }
}

class CustomStatus1 {
  String? emojiId;
  String? emojiName;
  int? expiresAt;
  String? text;

  CustomStatus1({this.emojiId, this.emojiName, this.expiresAt, this.text});

  CustomStatus1.fromJson(Map<String, dynamic> json) {
    emojiId = json["emoji_id"];
    emojiName = json["emoji_name"];
    expiresAt = json["expires_at"];
    text = json["text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["emoji_id"] = emojiId;
    _data["emoji_name"] = emojiName;
    _data["expires_at"] = expiresAt;
    _data["text"] = text;
    return _data;
  }
}

class Data1 {
  String? validTokensSince;
  String? hash;

  Data1({this.validTokensSince, this.hash});

  Data1.fromJson(Map<String, dynamic> json) {
    validTokensSince = json["valid_tokens_since"];
    hash = json["hash"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["valid_tokens_since"] = validTokensSince;
    _data["hash"] = hash;
    return _data;
  }
}

class ConnectedAccounts1 {
  String? externalId;
  String? userId;
  String? user;
  bool? friendSync;
  String? name;
  bool? revoked;
  int? showActivity;
  String? type;
  bool? verified;
  int? visibility;
  List<String>? integrations;
  dynamic metadata;
  int? metadataVisibility;
  bool? twoWayLink;
  TokenData1? tokenData;
  String? id;

  ConnectedAccounts1({this.externalId, this.userId, this.user, this.friendSync, this.name, this.revoked, this.showActivity, this.type, this.verified, this.visibility, this.integrations, this.metadata, this.metadataVisibility, this.twoWayLink, this.tokenData, this.id});

  ConnectedAccounts1.fromJson(Map<String, dynamic> json) {
    externalId = json["external_id"];
    userId = json["user_id"];
    user = json["user"];
    friendSync = json["friend_sync"];
    name = json["name"];
    revoked = json["revoked"];
    showActivity = json["show_activity"];
    type = json["type"];
    verified = json["verified"];
    visibility = json["visibility"];
    integrations = json["integrations"] == null ? null : List<String>.from(json["integrations"]);
    metadata = json["metadata_"];
    metadataVisibility = json["metadata_visibility"];
    twoWayLink = json["two_way_link"];
    tokenData = json["token_data"] == null ? null : TokenData1.fromJson(json["token_data"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["external_id"] = externalId;
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["friend_sync"] = friendSync;
    _data["name"] = name;
    _data["revoked"] = revoked;
    _data["show_activity"] = showActivity;
    _data["type"] = type;
    _data["verified"] = verified;
    _data["visibility"] = visibility;
    if(integrations != null) {
      _data["integrations"] = integrations;
    }
    _data["metadata_"] = metadata;
    _data["metadata_visibility"] = metadataVisibility;
    _data["two_way_link"] = twoWayLink;
    if(tokenData != null) {
      _data["token_data"] = tokenData?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class TokenData1 {
  String? accessToken;
  String? tokenType;
  String? scope;
  String? refreshToken;
  int? expiresIn;
  int? expiresAt;
  int? fetchedAt;

  TokenData1({this.accessToken, this.tokenType, this.scope, this.refreshToken, this.expiresIn, this.expiresAt, this.fetchedAt});

  TokenData1.fromJson(Map<String, dynamic> json) {
    accessToken = json["access_token"];
    tokenType = json["token_type"];
    scope = json["scope"];
    refreshToken = json["refresh_token"];
    expiresIn = json["expires_in"];
    expiresAt = json["expires_at"];
    fetchedAt = json["fetched_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    _data["token_type"] = tokenType;
    _data["scope"] = scope;
    _data["refresh_token"] = refreshToken;
    _data["expires_in"] = expiresIn;
    _data["expires_at"] = expiresAt;
    _data["fetched_at"] = fetchedAt;
    return _data;
  }
}

class Relationships1 {
  String? fromId;
  String? from;
  String? toId;
  String? to;
  String? nickname;
  int? type;
  String? id;

  Relationships1({this.fromId, this.from, this.toId, this.to, this.nickname, this.type, this.id});

  Relationships1.fromJson(Map<String, dynamic> json) {
    fromId = json["from_id"];
    from = json["from"];
    toId = json["to_id"];
    to = json["to"];
    nickname = json["nickname"];
    type = json["type"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["from_id"] = fromId;
    _data["from"] = from;
    _data["to_id"] = toId;
    _data["to"] = to;
    _data["nickname"] = nickname;
    _data["type"] = type;
    _data["id"] = id;
    return _data;
  }
}

class Sessions1 {
  String? userId;
  String? user;
  String? sessionId;
  List<Activities1>? activities;
  ClientInfo1? clientInfo;
  String? status;
  String? id;

  Sessions1({this.userId, this.user, this.sessionId, this.activities, this.clientInfo, this.status, this.id});

  Sessions1.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    sessionId = json["session_id"];
    activities = json["activities"] == null ? null : (json["activities"] as List).map((e) => Activities1.fromJson(e)).toList();
    clientInfo = json["client_info"] == null ? null : ClientInfo1.fromJson(json["client_info"]);
    status = json["status"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["session_id"] = sessionId;
    if(activities != null) {
      _data["activities"] = activities?.map((e) => e.toJson()).toList();
    }
    if(clientInfo != null) {
      _data["client_info"] = clientInfo?.toJson();
    }
    _data["status"] = status;
    _data["id"] = id;
    return _data;
  }
}

class ClientInfo1 {
  String? client;
  String? os;
  int? version;

  ClientInfo1({this.client, this.os, this.version});

  ClientInfo1.fromJson(Map<String, dynamic> json) {
    client = json["client"];
    os = json["os"];
    version = json["version"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["client"] = client;
    _data["os"] = os;
    _data["version"] = version;
    return _data;
  }
}

class Activities1 {
  String? name;
  int? type;
  String? url;
  int? createdAt;
  Timestamps1? timestamps;
  String? applicationId;
  String? details;
  String? state;
  Emoji1? emoji;
  Party1? party;
  Assets1? assets;
  Secrets1? secrets;
  bool? instance;
  String? flags;
  String? id;
  String? syncId;
  Metadata1? metadata;
  String? sessionId;

  Activities1({this.name, this.type, this.url, this.createdAt, this.timestamps, this.applicationId, this.details, this.state, this.emoji, this.party, this.assets, this.secrets, this.instance, this.flags, this.id, this.syncId, this.metadata, this.sessionId});

  Activities1.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    type = json["type"];
    url = json["url"];
    createdAt = json["created_at"];
    timestamps = json["timestamps"] == null ? null : Timestamps1.fromJson(json["timestamps"]);
    applicationId = json["application_id"];
    details = json["details"];
    state = json["state"];
    emoji = json["emoji"] == null ? null : Emoji1.fromJson(json["emoji"]);
    party = json["party"] == null ? null : Party1.fromJson(json["party"]);
    assets = json["assets"] == null ? null : Assets1.fromJson(json["assets"]);
    secrets = json["secrets"] == null ? null : Secrets1.fromJson(json["secrets"]);
    instance = json["instance"];
    flags = json["flags"];
    id = json["id"];
    syncId = json["sync_id"];
    metadata = json["metadata"] == null ? null : Metadata1.fromJson(json["metadata"]);
    sessionId = json["session_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["type"] = type;
    _data["url"] = url;
    _data["created_at"] = createdAt;
    if(timestamps != null) {
      _data["timestamps"] = timestamps?.toJson();
    }
    _data["application_id"] = applicationId;
    _data["details"] = details;
    _data["state"] = state;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    if(party != null) {
      _data["party"] = party?.toJson();
    }
    if(assets != null) {
      _data["assets"] = assets?.toJson();
    }
    if(secrets != null) {
      _data["secrets"] = secrets?.toJson();
    }
    _data["instance"] = instance;
    _data["flags"] = flags;
    _data["id"] = id;
    _data["sync_id"] = syncId;
    if(metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    _data["session_id"] = sessionId;
    return _data;
  }
}

class Metadata1 {
  String? contextUri;
  String? albumId;
  List<String>? artistIds;

  Metadata1({this.contextUri, this.albumId, this.artistIds});

  Metadata1.fromJson(Map<String, dynamic> json) {
    contextUri = json["context_uri"];
    albumId = json["album_id"];
    artistIds = json["artist_ids"] == null ? null : List<String>.from(json["artist_ids"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["context_uri"] = contextUri;
    _data["album_id"] = albumId;
    if(artistIds != null) {
      _data["artist_ids"] = artistIds;
    }
    return _data;
  }
}

class Secrets1 {
  String? join;
  String? spectate;
  String? match;

  Secrets1({this.join, this.spectate, this.match});

  Secrets1.fromJson(Map<String, dynamic> json) {
    join = json["join"];
    spectate = json["spectate"];
    match = json["match"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["join"] = join;
    _data["spectate"] = spectate;
    _data["match"] = match;
    return _data;
  }
}

class Assets1 {
  String? largeImage;
  String? largeText;
  String? smallImage;
  String? smallText;

  Assets1({this.largeImage, this.largeText, this.smallImage, this.smallText});

  Assets1.fromJson(Map<String, dynamic> json) {
    largeImage = json["large_image"];
    largeText = json["large_text"];
    smallImage = json["small_image"];
    smallText = json["small_text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["large_image"] = largeImage;
    _data["large_text"] = largeText;
    _data["small_image"] = smallImage;
    _data["small_text"] = smallText;
    return _data;
  }
}

class Party1 {
  String? id;
  List<int>? size;

  Party1({this.id, this.size});

  Party1.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    size = json["size"] == null ? null : List<int>.from(json["size"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if(size != null) {
      _data["size"] = size;
    }
    return _data;
  }
}

class Emoji1 {
  String? name;
  String? id;
  bool? animated;

  Emoji1({this.name, this.id, this.animated});

  Emoji1.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["id"] = id;
    _data["animated"] = animated;
    return _data;
  }
}

class Timestamps1 {
  int? start;
  int? end;

  Timestamps1({this.start, this.end});

  Timestamps1.fromJson(Map<String, dynamic> json) {
    start = json["start"];
    end = json["end"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }
}

class Recipients {
  String? channelId;
  String? channel;
  String? userId;
  User? user;
  bool? closed;
  String? id;

  Recipients({this.channelId, this.channel, this.userId, this.user, this.closed, this.id});

  Recipients.fromJson(Map<String, dynamic> json) {
    channelId = json["channel_id"];
    channel = json["channel"];
    userId = json["user_id"];
    user = json["user"] == null ? null : User.fromJson(json["user"]);
    closed = json["closed"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["channel_id"] = channelId;
    _data["channel"] = channel;
    _data["user_id"] = userId;
    if(user != null) {
      _data["user"] = user?.toJson();
    }
    _data["closed"] = closed;
    _data["id"] = id;
    return _data;
  }
}

class User {
  String? username;
  String? discriminator;
  String? avatar;
  int? accentColor;
  String? banner;
  List<int>? themeColors;
  String? pronouns;
  String? phone;
  bool? desktop;
  bool? mobile;
  bool? premium;
  int? premiumType;
  bool? bot;
  String? bio;
  bool? system;
  bool? nsfwAllowed;
  bool? mfaEnabled;
  bool? webauthnEnabled;
  String? totpSecret;
  String? totpLastTicket;
  String? createdAt;
  String? premiumSince;
  bool? verified;
  bool? disabled;
  bool? deleted;
  String? email;
  String? flags;
  int? publicFlags;
  int? purchasedFlags;
  int? premiumUsageFlags;
  String? rights;
  List<Sessions>? sessions;
  List<Relationships>? relationships;
  List<ConnectedAccounts>? connectedAccounts;
  Data? data;
  List<String>? fingerprints;
  Settings? settings;
  String? extendedSettings;
  List<SecurityKeys>? securityKeys;
  String? id;

  User({this.username, this.discriminator, this.avatar, this.accentColor, this.banner, this.themeColors, this.pronouns, this.phone, this.desktop, this.mobile, this.premium, this.premiumType, this.bot, this.bio, this.system, this.nsfwAllowed, this.mfaEnabled, this.webauthnEnabled, this.totpSecret, this.totpLastTicket, this.createdAt, this.premiumSince, this.verified, this.disabled, this.deleted, this.email, this.flags, this.publicFlags, this.purchasedFlags, this.premiumUsageFlags, this.rights, this.sessions, this.relationships, this.connectedAccounts, this.data, this.fingerprints, this.settings, this.extendedSettings, this.securityKeys, this.id});

  User.fromJson(Map<String, dynamic> json) {
    username = json["username"];
    discriminator = json["discriminator"];
    avatar = json["avatar"];
    accentColor = json["accent_color"];
    banner = json["banner"];
    themeColors = json["theme_colors"] == null ? null : List<int>.from(json["theme_colors"]);
    pronouns = json["pronouns"];
    phone = json["phone"];
    desktop = json["desktop"];
    mobile = json["mobile"];
    premium = json["premium"];
    premiumType = json["premium_type"];
    bot = json["bot"];
    bio = json["bio"];
    system = json["system"];
    nsfwAllowed = json["nsfw_allowed"];
    mfaEnabled = json["mfa_enabled"];
    webauthnEnabled = json["webauthn_enabled"];
    totpSecret = json["totp_secret"];
    totpLastTicket = json["totp_last_ticket"];
    createdAt = json["created_at"];
    premiumSince = json["premium_since"];
    verified = json["verified"];
    disabled = json["disabled"];
    deleted = json["deleted"];
    email = json["email"];
    flags = json["flags"];
    publicFlags = json["public_flags"];
    purchasedFlags = json["purchased_flags"];
    premiumUsageFlags = json["premium_usage_flags"];
    rights = json["rights"];
    sessions = json["sessions"] == null ? null : (json["sessions"] as List).map((e) => Sessions.fromJson(e)).toList();
    relationships = json["relationships"] == null ? null : (json["relationships"] as List).map((e) => Relationships.fromJson(e)).toList();
    connectedAccounts = json["connected_accounts"] == null ? null : (json["connected_accounts"] as List).map((e) => ConnectedAccounts.fromJson(e)).toList();
    data = json["data"] == null ? null : Data.fromJson(json["data"]);
    fingerprints = json["fingerprints"] == null ? null : List<String>.from(json["fingerprints"]);
    settings = json["settings"] == null ? null : Settings.fromJson(json["settings"]);
    extendedSettings = json["extended_settings"];
    securityKeys = json["security_keys"] == null ? null : (json["security_keys"] as List).map((e) => SecurityKeys.fromJson(e)).toList();
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["username"] = username;
    _data["discriminator"] = discriminator;
    _data["avatar"] = avatar;
    _data["accent_color"] = accentColor;
    _data["banner"] = banner;
    if(themeColors != null) {
      _data["theme_colors"] = themeColors;
    }
    _data["pronouns"] = pronouns;
    _data["phone"] = phone;
    _data["desktop"] = desktop;
    _data["mobile"] = mobile;
    _data["premium"] = premium;
    _data["premium_type"] = premiumType;
    _data["bot"] = bot;
    _data["bio"] = bio;
    _data["system"] = system;
    _data["nsfw_allowed"] = nsfwAllowed;
    _data["mfa_enabled"] = mfaEnabled;
    _data["webauthn_enabled"] = webauthnEnabled;
    _data["totp_secret"] = totpSecret;
    _data["totp_last_ticket"] = totpLastTicket;
    _data["created_at"] = createdAt;
    _data["premium_since"] = premiumSince;
    _data["verified"] = verified;
    _data["disabled"] = disabled;
    _data["deleted"] = deleted;
    _data["email"] = email;
    _data["flags"] = flags;
    _data["public_flags"] = publicFlags;
    _data["purchased_flags"] = purchasedFlags;
    _data["premium_usage_flags"] = premiumUsageFlags;
    _data["rights"] = rights;
    if(sessions != null) {
      _data["sessions"] = sessions?.map((e) => e.toJson()).toList();
    }
    if(relationships != null) {
      _data["relationships"] = relationships?.map((e) => e.toJson()).toList();
    }
    if(connectedAccounts != null) {
      _data["connected_accounts"] = connectedAccounts?.map((e) => e.toJson()).toList();
    }
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    if(fingerprints != null) {
      _data["fingerprints"] = fingerprints;
    }
    if(settings != null) {
      _data["settings"] = settings?.toJson();
    }
    _data["extended_settings"] = extendedSettings;
    if(securityKeys != null) {
      _data["security_keys"] = securityKeys?.map((e) => e.toJson()).toList();
    }
    _data["id"] = id;
    return _data;
  }
}

class SecurityKeys {
  String? userId;
  String? user;
  String? keyId;
  String? publicKey;
  int? counter;
  String? name;
  String? id;

  SecurityKeys({this.userId, this.user, this.keyId, this.publicKey, this.counter, this.name, this.id});

  SecurityKeys.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    keyId = json["key_id"];
    publicKey = json["public_key"];
    counter = json["counter"];
    name = json["name"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["key_id"] = keyId;
    _data["public_key"] = publicKey;
    _data["counter"] = counter;
    _data["name"] = name;
    _data["id"] = id;
    return _data;
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

  Settings({this.index, this.afkTimeout, this.allowAccessibilityDetection, this.animateEmoji, this.animateStickers, this.contactSyncEnabled, this.convertEmoticons, this.customStatus, this.defaultGuildsRestricted, this.detectPlatformAccounts, this.developerMode, this.disableGamesTab, this.enableTtsCommand, this.explicitContentFilter, this.friendSourceFlags, this.gatewayConnected, this.gifAutoPlay, this.guildFolders, this.guildPositions, this.inlineAttachmentMedia, this.inlineEmbedMedia, this.locale, this.messageDisplayCompact, this.nativePhoneIntegrationEnabled, this.renderEmbeds, this.renderReactions, this.restrictedGuilds, this.showCurrentGame, this.status, this.streamNotificationsEnabled, this.theme, this.timezoneOffset});

  Settings.fromJson(Map<String, dynamic> json) {
    index = json["index"];
    afkTimeout = json["afk_timeout"];
    allowAccessibilityDetection = json["allow_accessibility_detection"];
    animateEmoji = json["animate_emoji"];
    animateStickers = json["animate_stickers"];
    contactSyncEnabled = json["contact_sync_enabled"];
    convertEmoticons = json["convert_emoticons"];
    customStatus = json["custom_status"] == null ? null : CustomStatus.fromJson(json["custom_status"]);
    defaultGuildsRestricted = json["default_guilds_restricted"];
    detectPlatformAccounts = json["detect_platform_accounts"];
    developerMode = json["developer_mode"];
    disableGamesTab = json["disable_games_tab"];
    enableTtsCommand = json["enable_tts_command"];
    explicitContentFilter = json["explicit_content_filter"];
    friendSourceFlags = json["friend_source_flags"] == null ? null : FriendSourceFlags.fromJson(json["friend_source_flags"]);
    gatewayConnected = json["gateway_connected"];
    gifAutoPlay = json["gif_auto_play"];
    guildFolders = json["guild_folders"] == null ? null : (json["guild_folders"] as List).map((e) => GuildFolders.fromJson(e)).toList();
    guildPositions = json["guild_positions"] == null ? null : List<String>.from(json["guild_positions"]);
    inlineAttachmentMedia = json["inline_attachment_media"];
    inlineEmbedMedia = json["inline_embed_media"];
    locale = json["locale"];
    messageDisplayCompact = json["message_display_compact"];
    nativePhoneIntegrationEnabled = json["native_phone_integration_enabled"];
    renderEmbeds = json["render_embeds"];
    renderReactions = json["render_reactions"];
    restrictedGuilds = json["restricted_guilds"] == null ? null : List<String>.from(json["restricted_guilds"]);
    showCurrentGame = json["show_current_game"];
    status = json["status"];
    streamNotificationsEnabled = json["stream_notifications_enabled"];
    theme = json["theme"];
    timezoneOffset = json["timezone_offset"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["afk_timeout"] = afkTimeout;
    _data["allow_accessibility_detection"] = allowAccessibilityDetection;
    _data["animate_emoji"] = animateEmoji;
    _data["animate_stickers"] = animateStickers;
    _data["contact_sync_enabled"] = contactSyncEnabled;
    _data["convert_emoticons"] = convertEmoticons;
    if(customStatus != null) {
      _data["custom_status"] = customStatus?.toJson();
    }
    _data["default_guilds_restricted"] = defaultGuildsRestricted;
    _data["detect_platform_accounts"] = detectPlatformAccounts;
    _data["developer_mode"] = developerMode;
    _data["disable_games_tab"] = disableGamesTab;
    _data["enable_tts_command"] = enableTtsCommand;
    _data["explicit_content_filter"] = explicitContentFilter;
    if(friendSourceFlags != null) {
      _data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    _data["gateway_connected"] = gatewayConnected;
    _data["gif_auto_play"] = gifAutoPlay;
    if(guildFolders != null) {
      _data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if(guildPositions != null) {
      _data["guild_positions"] = guildPositions;
    }
    _data["inline_attachment_media"] = inlineAttachmentMedia;
    _data["inline_embed_media"] = inlineEmbedMedia;
    _data["locale"] = locale;
    _data["message_display_compact"] = messageDisplayCompact;
    _data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    _data["render_embeds"] = renderEmbeds;
    _data["render_reactions"] = renderReactions;
    if(restrictedGuilds != null) {
      _data["restricted_guilds"] = restrictedGuilds;
    }
    _data["show_current_game"] = showCurrentGame;
    _data["status"] = status;
    _data["stream_notifications_enabled"] = streamNotificationsEnabled;
    _data["theme"] = theme;
    _data["timezone_offset"] = timezoneOffset;
    return _data;
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
    guildIds = json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    if(guildIds != null) {
      _data["guild_ids"] = guildIds;
    }
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class FriendSourceFlags {
  bool? all;

  FriendSourceFlags({this.all});

  FriendSourceFlags.fromJson(Map<String, dynamic> json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["all"] = all;
    return _data;
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
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["emoji_id"] = emojiId;
    _data["emoji_name"] = emojiName;
    _data["expires_at"] = expiresAt;
    _data["text"] = text;
    return _data;
  }
}

class Data {
  String? validTokensSince;
  String? hash;

  Data({this.validTokensSince, this.hash});

  Data.fromJson(Map<String, dynamic> json) {
    validTokensSince = json["valid_tokens_since"];
    hash = json["hash"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["valid_tokens_since"] = validTokensSince;
    _data["hash"] = hash;
    return _data;
  }
}

class ConnectedAccounts {
  String? externalId;
  String? userId;
  String? user;
  bool? friendSync;
  String? name;
  bool? revoked;
  int? showActivity;
  String? type;
  bool? verified;
  int? visibility;
  List<String>? integrations;
  dynamic metadata;
  int? metadataVisibility;
  bool? twoWayLink;
  TokenData? tokenData;
  String? id;

  ConnectedAccounts({this.externalId, this.userId, this.user, this.friendSync, this.name, this.revoked, this.showActivity, this.type, this.verified, this.visibility, this.integrations, this.metadata, this.metadataVisibility, this.twoWayLink, this.tokenData, this.id});

  ConnectedAccounts.fromJson(Map<String, dynamic> json) {
    externalId = json["external_id"];
    userId = json["user_id"];
    user = json["user"];
    friendSync = json["friend_sync"];
    name = json["name"];
    revoked = json["revoked"];
    showActivity = json["show_activity"];
    type = json["type"];
    verified = json["verified"];
    visibility = json["visibility"];
    integrations = json["integrations"] == null ? null : List<String>.from(json["integrations"]);
    metadata = json["metadata_"];
    metadataVisibility = json["metadata_visibility"];
    twoWayLink = json["two_way_link"];
    tokenData = json["token_data"] == null ? null : TokenData.fromJson(json["token_data"]);
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["external_id"] = externalId;
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["friend_sync"] = friendSync;
    _data["name"] = name;
    _data["revoked"] = revoked;
    _data["show_activity"] = showActivity;
    _data["type"] = type;
    _data["verified"] = verified;
    _data["visibility"] = visibility;
    if(integrations != null) {
      _data["integrations"] = integrations;
    }
    _data["metadata_"] = metadata;
    _data["metadata_visibility"] = metadataVisibility;
    _data["two_way_link"] = twoWayLink;
    if(tokenData != null) {
      _data["token_data"] = tokenData?.toJson();
    }
    _data["id"] = id;
    return _data;
  }
}

class TokenData {
  String? accessToken;
  String? tokenType;
  String? scope;
  String? refreshToken;
  int? expiresIn;
  int? expiresAt;
  int? fetchedAt;

  TokenData({this.accessToken, this.tokenType, this.scope, this.refreshToken, this.expiresIn, this.expiresAt, this.fetchedAt});

  TokenData.fromJson(Map<String, dynamic> json) {
    accessToken = json["access_token"];
    tokenType = json["token_type"];
    scope = json["scope"];
    refreshToken = json["refresh_token"];
    expiresIn = json["expires_in"];
    expiresAt = json["expires_at"];
    fetchedAt = json["fetched_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["access_token"] = accessToken;
    _data["token_type"] = tokenType;
    _data["scope"] = scope;
    _data["refresh_token"] = refreshToken;
    _data["expires_in"] = expiresIn;
    _data["expires_at"] = expiresAt;
    _data["fetched_at"] = fetchedAt;
    return _data;
  }
}

class Relationships {
  String? fromId;
  String? from;
  String? toId;
  String? to;
  String? nickname;
  int? type;
  String? id;

  Relationships({this.fromId, this.from, this.toId, this.to, this.nickname, this.type, this.id});

  Relationships.fromJson(Map<String, dynamic> json) {
    fromId = json["from_id"];
    from = json["from"];
    toId = json["to_id"];
    to = json["to"];
    nickname = json["nickname"];
    type = json["type"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["from_id"] = fromId;
    _data["from"] = from;
    _data["to_id"] = toId;
    _data["to"] = to;
    _data["nickname"] = nickname;
    _data["type"] = type;
    _data["id"] = id;
    return _data;
  }
}

class Sessions {
  String? userId;
  String? user;
  String? sessionId;
  List<Activities>? activities;
  ClientInfo? clientInfo;
  String? status;
  String? id;

  Sessions({this.userId, this.user, this.sessionId, this.activities, this.clientInfo, this.status, this.id});

  Sessions.fromJson(Map<String, dynamic> json) {
    userId = json["user_id"];
    user = json["user"];
    sessionId = json["session_id"];
    activities = json["activities"] == null ? null : (json["activities"] as List).map((e) => Activities.fromJson(e)).toList();
    clientInfo = json["client_info"] == null ? null : ClientInfo.fromJson(json["client_info"]);
    status = json["status"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["user_id"] = userId;
    _data["user"] = user;
    _data["session_id"] = sessionId;
    if(activities != null) {
      _data["activities"] = activities?.map((e) => e.toJson()).toList();
    }
    if(clientInfo != null) {
      _data["client_info"] = clientInfo?.toJson();
    }
    _data["status"] = status;
    _data["id"] = id;
    return _data;
  }
}

class ClientInfo {
  String? client;
  String? os;
  int? version;

  ClientInfo({this.client, this.os, this.version});

  ClientInfo.fromJson(Map<String, dynamic> json) {
    client = json["client"];
    os = json["os"];
    version = json["version"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["client"] = client;
    _data["os"] = os;
    _data["version"] = version;
    return _data;
  }
}

class Activities {
  String? name;
  int? type;
  String? url;
  int? createdAt;
  Timestamps? timestamps;
  String? applicationId;
  String? details;
  String? state;
  Emoji? emoji;
  Party? party;
  Assets? assets;
  Secrets? secrets;
  bool? instance;
  String? flags;
  String? id;
  String? syncId;
  Metadata? metadata;
  String? sessionId;

  Activities({this.name, this.type, this.url, this.createdAt, this.timestamps, this.applicationId, this.details, this.state, this.emoji, this.party, this.assets, this.secrets, this.instance, this.flags, this.id, this.syncId, this.metadata, this.sessionId});

  Activities.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    type = json["type"];
    url = json["url"];
    createdAt = json["created_at"];
    timestamps = json["timestamps"] == null ? null : Timestamps.fromJson(json["timestamps"]);
    applicationId = json["application_id"];
    details = json["details"];
    state = json["state"];
    emoji = json["emoji"] == null ? null : Emoji.fromJson(json["emoji"]);
    party = json["party"] == null ? null : Party.fromJson(json["party"]);
    assets = json["assets"] == null ? null : Assets.fromJson(json["assets"]);
    secrets = json["secrets"] == null ? null : Secrets.fromJson(json["secrets"]);
    instance = json["instance"];
    flags = json["flags"];
    id = json["id"];
    syncId = json["sync_id"];
    metadata = json["metadata"] == null ? null : Metadata.fromJson(json["metadata"]);
    sessionId = json["session_id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["type"] = type;
    _data["url"] = url;
    _data["created_at"] = createdAt;
    if(timestamps != null) {
      _data["timestamps"] = timestamps?.toJson();
    }
    _data["application_id"] = applicationId;
    _data["details"] = details;
    _data["state"] = state;
    if(emoji != null) {
      _data["emoji"] = emoji?.toJson();
    }
    if(party != null) {
      _data["party"] = party?.toJson();
    }
    if(assets != null) {
      _data["assets"] = assets?.toJson();
    }
    if(secrets != null) {
      _data["secrets"] = secrets?.toJson();
    }
    _data["instance"] = instance;
    _data["flags"] = flags;
    _data["id"] = id;
    _data["sync_id"] = syncId;
    if(metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    _data["session_id"] = sessionId;
    return _data;
  }
}

class Metadata {
  String? contextUri;
  String? albumId;
  List<String>? artistIds;

  Metadata({this.contextUri, this.albumId, this.artistIds});

  Metadata.fromJson(Map<String, dynamic> json) {
    contextUri = json["context_uri"];
    albumId = json["album_id"];
    artistIds = json["artist_ids"] == null ? null : List<String>.from(json["artist_ids"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["context_uri"] = contextUri;
    _data["album_id"] = albumId;
    if(artistIds != null) {
      _data["artist_ids"] = artistIds;
    }
    return _data;
  }
}

class Secrets {
  String? join;
  String? spectate;
  String? match;

  Secrets({this.join, this.spectate, this.match});

  Secrets.fromJson(Map<String, dynamic> json) {
    join = json["join"];
    spectate = json["spectate"];
    match = json["match"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["join"] = join;
    _data["spectate"] = spectate;
    _data["match"] = match;
    return _data;
  }
}

class Assets {
  String? largeImage;
  String? largeText;
  String? smallImage;
  String? smallText;

  Assets({this.largeImage, this.largeText, this.smallImage, this.smallText});

  Assets.fromJson(Map<String, dynamic> json) {
    largeImage = json["large_image"];
    largeText = json["large_text"];
    smallImage = json["small_image"];
    smallText = json["small_text"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["large_image"] = largeImage;
    _data["large_text"] = largeText;
    _data["small_image"] = smallImage;
    _data["small_text"] = smallText;
    return _data;
  }
}

class Party {
  String? id;
  List<int>? size;

  Party({this.id, this.size});

  Party.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    size = json["size"] == null ? null : List<int>.from(json["size"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    if(size != null) {
      _data["size"] = size;
    }
    return _data;
  }
}

class Emoji {
  String? name;
  String? id;
  bool? animated;

  Emoji({this.name, this.id, this.animated});

  Emoji.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    id = json["id"];
    animated = json["animated"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["id"] = id;
    _data["animated"] = animated;
    return _data;
  }
}

class Timestamps {
  int? start;
  int? end;

  Timestamps({this.start, this.end});

  Timestamps.fromJson(Map<String, dynamic> json) {
    start = json["start"];
    end = json["end"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["start"] = start;
    _data["end"] = end;
    return _data;
  }
}