
const LanguageLocaleCode = "tr";

const FiveMServerName = "Coast V";
const DiscordInviteLink = "discord.gg/coastv";
const FiveMServerIP = "193.53.40.31";

const DebugLogs = false;


const EnableDiscordBot = true;

const DiscordBotToken = "MTE3NzAwOTE2NTIwMjM2MjQ5OA.GH6mfl.mGcoqigGAMlMXMKM8SUNPgoSUo9_TdJuqAeGwY";
const DiscordGuildId = "933014209376182313";

const EnableStaffChatForwarding = false;
const DiscordStaffChannelId = "1176995746768224326";
const AdditionalStaffChatRoleIds = [
    // "1143960491631329431",
];

const EnableWhitelistChecking = false;
const DiscordWhitelistRoleIds = "";

const EnableDiscordSlashCommands = true;
const DiscordModRoleId = "1167182271992832070";
const DiscordAdminRoleId = "1171187270796198069";
const DiscordGodRoleId = "1177013532294922250";

const EnableBotStatusMessages = true;
const BotStatusMessages = [
    "Coast V",
    "{playercount} Oyuncu",
];

const EnableAutoAcePermissions = true;
const AutoAcePermissions = {
    "group.god": "1170637541167337492",
    "group.admin": "1170637541167337492",
};

const SaveScreenshotsToServer = false;



const EnableLoggingWebhooks = true;
const LoggingWebhookName = "arob-game";
const LoggingAlertPingId = "&1052320531371798592";
const LoggingWebhooks = {
    "arob-game": "https://discord.com/api/webhooks/1177010241733402726/Z3N3HfhU5fOIB79ZFiL--o3fuUfrbUPQkf4I2frbHvb_cQ0NwSXHFfoOyxia02ELHuts",
};


module.exports = {
    EnableDiscordBot: getConBool("discord_enable_bot", EnableDiscordBot),
    EnableStaffChatForwarding: getConBool("discord_enable_staff_chat", EnableStaffChatForwarding),
    EnableLoggingWebhooks: getConBool("discord_enable_logging_webhooks", EnableLoggingWebhooks),
    DebugLogs: getConBool("discord_debug", DebugLogs),
    DiscordBotToken: GetConvar("discord_token", DiscordBotToken),
    DiscordGuildId: GetConvar("discord_guild_id", DiscordGuildId),
    LanguageLocaleCode: GetConvar("discord_lang", LanguageLocaleCode),
    FiveMServerName: GetConvar("discord_server_name", FiveMServerName),
    DiscordInviteLink: GetConvar("discord_invite", DiscordInviteLink),
    FiveMServerIP: GetConvar("discord_server_ip", FiveMServerIP),
    EnableWhitelistChecking: getConBool("discord_enable_whitelist", EnableWhitelistChecking),
    DiscordWhitelistRoleIds: getConList("discord_whitelist_roles", DiscordWhitelistRoleIds),
    EnableDiscordSlashCommands: getConBool("discord_enable_commands", EnableDiscordSlashCommands),
    DiscordModRoleId: GetConvar("discord_mod_role", DiscordModRoleId),
    DiscordAdminRoleId: GetConvar("discord_admin_role", DiscordAdminRoleId),
    DiscordGodRoleId: GetConvar("discord_god_role", DiscordGodRoleId),
    EnableBotStatusMessages: getConBool("discord_enable_status", EnableBotStatusMessages),
    BotStatusMessages: BotStatusMessages,
    EnableAutoAcePermissions: getConBool("discord_enable_ace_perms", EnableAutoAcePermissions),
    AutoAcePermissions: AutoAcePermissions,
    SaveScreenshotsToServer: getConBool("discord_save_screenshots", SaveScreenshotsToServer),
    DiscordStaffChannelId: GetConvar("discord_staff_channel_id", DiscordStaffChannelId),
    LoggingWebhooks: LoggingWebhooks,
    LoggingAlertPingId: GetConvar("discord_logging_ping_id", LoggingAlertPingId),
    LoggingWebhookName: GetConvar("discord_logging_name", LoggingWebhookName),
    StaffChatRoleIds: [
        GetConvar("discord_mod_role", DiscordModRoleId),
        GetConvar("discord_admin_role", DiscordAdminRoleId),
        GetConvar("discord_god_role", DiscordGodRoleId),
        ...AdditionalStaffChatRoleIds,
    ],
};

/** 
 * @param {boolean|string|number} con - Convar name
 * @param {boolean|string|number} def - Default fallback value
 * @returns {boolean} - parsed bool */
function getConBool(con, def) {
    if (typeof def == "boolean") def = def.toString();
    const ret = GetConvar(con, def);
    if (typeof ret == "boolean") return ret;
    if (typeof ret == "string") return ["true", "on", "yes", "y", "1"].includes(ret.toLocaleLowerCase().trim());
    if (typeof ret == "number") return ret > 0;
    return false;
}

/** 
 * @param {string} con - 
 * @param {string|Array} def - 
 * @returns {object} -  */
function getConList(con, def) {
    const ret = GetConvar(con, def);
    if (typeof ret == "string") return ret.replace(/[^0-9,]/g, "").replace(/(,$)/g, "").split(",");
    if (Array.isArray(ret)) return ret;
    if (!ret) return [];
}
