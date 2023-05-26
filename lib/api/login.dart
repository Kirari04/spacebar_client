import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spacebar_client/api/config.dart' as config;
import 'package:spacebar_client/api/login_error.dart';
import 'package:spacebar_client/api/res.dart';

Future<ApiRes<LoginRes, LoginResError>> apiPostLogin(
    String login, String password) async {
  final response = await http.post(
    Uri.parse('${config.apiEndpoint}/auth/login'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{
      "login": login,
      "password": password,
      "undelete": false,
      "captcha_key": "",
      "login_source": "",
      "gift_code_sku_id": ""
    }),
  );
  if (response.statusCode != 200) {
    return ApiRes(
      statusCode: response.statusCode,
      message: "Error",
      error: LoginResError.fromJson(jsonDecode(response.body)),
    );
  }

  return ApiRes(
    statusCode: response.statusCode,
    message: "ok",
    response: LoginRes.fromJson(jsonDecode(response.body)),
  );
}

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
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["token"] = token;
    if (settings != null) {
      _data["settings"] = settings?.toJson();
    }
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
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["index"] = index;
    _data["afk_timeout"] = afkTimeout;
    _data["allow_accessibility_detection"] = allowAccessibilityDetection;
    _data["animate_emoji"] = animateEmoji;
    _data["animate_stickers"] = animateStickers;
    _data["contact_sync_enabled"] = contactSyncEnabled;
    _data["convert_emoticons"] = convertEmoticons;
    if (customStatus != null) {
      _data["custom_status"] = customStatus?.toJson();
    }
    _data["default_guilds_restricted"] = defaultGuildsRestricted;
    _data["detect_platform_accounts"] = detectPlatformAccounts;
    _data["developer_mode"] = developerMode;
    _data["disable_games_tab"] = disableGamesTab;
    _data["enable_tts_command"] = enableTtsCommand;
    _data["explicit_content_filter"] = explicitContentFilter;
    if (friendSourceFlags != null) {
      _data["friend_source_flags"] = friendSourceFlags?.toJson();
    }
    _data["gateway_connected"] = gatewayConnected;
    _data["gif_auto_play"] = gifAutoPlay;
    if (guildFolders != null) {
      _data["guild_folders"] = guildFolders?.map((e) => e.toJson()).toList();
    }
    if (guildPositions != null) {
      _data["guild_positions"] = guildPositions;
    }
    _data["inline_attachment_media"] = inlineAttachmentMedia;
    _data["inline_embed_media"] = inlineEmbedMedia;
    _data["locale"] = locale;
    _data["message_display_compact"] = messageDisplayCompact;
    _data["native_phone_integration_enabled"] = nativePhoneIntegrationEnabled;
    _data["render_embeds"] = renderEmbeds;
    _data["render_reactions"] = renderReactions;
    if (restrictedGuilds != null) {
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
    guildIds =
        json["guild_ids"] == null ? null : List<String>.from(json["guild_ids"]);
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    if (guildIds != null) {
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
