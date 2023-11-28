
const z = {};

const { readdirSync } = require("fs");
z.root = GetResourcePath(GetCurrentResourceName());
z.config = require(`${z.root}/config`);
z.locale = require(`${z.root}/locales/${z.config.LanguageLocaleCode}`);
z.utils = require(`${z.root}/server/utils`);

try {
    z.QBCore = global.exports["qb-core"].GetCoreObject();
    if (z.QBCore) z.utils.log.info("QBCore found! Supported QB commands will be loaded.");
} catch { z.QBCore = false; }

const Bot = require(`${z.root}/server/bot`);
z.bot = new Bot(z);

const addons = readdirSync(`${z.root}/server/addons`).filter(file => file.endsWith(".js"));
for (const file of addons) {
    try {
        const Addon = require(`${z.root}/server/addons/${file}`);
        z[file.slice(0, -3)] = new Addon(z);
        z.utils.log.info(`[ADDON] ${file} addon found and loaded`);
    } catch (e) {
        z.utils.log.error(`[ADDON] ${file} errored and could not be loaded`);
        z.utils.log.error(e);
    }
}


SetConvarReplicated("arobigdo_servername", z.config.FiveMServerName);
SetConvarReplicated("arobigdo_discordinvite", z.config.DiscordInviteLink);
SetConvarReplicated("arobigdo_serverip", z.config.FiveMServerIP);
SetConvarReplicated("arobigdo_userpresence", String(z.config.enableUserPresence));

on("playerJoining", (oldId) => {
    const source = global.source;
    if (!z.config.EnableDiscordBot) return;
    const member = z.bot.getMemberFromSource(source);
    if (z.config.EnableAutoAcePermissions) {
        for (const [group, role] of Object.entries(z.config.AutoAcePermissions)) {
            if (z.bot.isRolePresent(member, role)) { 
                ExecuteCommand(`add_principal "player.${source}" "${group}"`);
            }
        }
    }
    if (z.bot.isRolePresent(member, z.config.StaffChatRoleIds)) {
        ExecuteCommand(`add_principal "player.${source}" group.arobigdostaff`);
    }
});

on("playerDropped", (reason) => {
    const source = global.source;
    if (!z.config.EnableDiscordBot) return false;
    if (z.config.EnableAutoAcePermissions) {
        for (const [group, role] of Object.entries(z.config.AutoAcePermissions)) {
            ExecuteCommand(`remove_principal "player.${source}" "${group}"`);
        }
    }
});

if (z.config.EnableStaffChatForwarding) {
    RegisterCommand("staff", (source, args, raw) => {
        if (!IsPlayerAceAllowed(source, "arobigdo.staffchat")) return;
        z.utils.sendStaffChatMessage(z, GetPlayerName(source), raw.substring(6));
        if (!z.config.EnableDiscordBot) return;
        const staffChannel = z.bot.channels.cache.get(z.config.DiscordStaffChannelId);
        if (!staffChannel) return z.utils.log.warn("DiscordStaffChannelId was not found, staff message not sent.");
        staffChannel.send({ content: `${GetPlayerName(source)}: ${raw.substring(6)}`, allowMentions: false }).catch((e) => {
            z.utils.log.error("I don't seem to have the required permissions to forward the staffchat to the configured staffchannel");
        });
    }, false);

    RegisterCommand("stafftoggle", (source, args, raw) => {
        if (IsPlayerAceAllowed(source, "arobigdo.staffchat")) {
            ExecuteCommand(`remove_principal "player.${source}" group.arobigdostaff`);
            z.utils.chatMessage(source, z.locale.staffchat, "Staff chat disabled.", { color: [ 255, 255, 0 ] });
        } else {
            const member = z.bot.getMemberFromSource(source);
            if (z.bot.isRolePresent(member, z.config.StaffChatRoleIds)) {
                ExecuteCommand(`add_principal "player.${source}" group.arobigdostaff`);
                z.utils.chatMessage(source, z.locale.staffchat, "Staff chat enabled.", { color: [ 255, 255, 0 ] });
            }
        }
    }, false);

    setImmediate(() => {
        emit("chat:addSuggestion", "/staff", "Send message to other staff (Staff only)", [
            { name:"Message", help:"Message to send to other staff" },
        ]);
        emit("chat:addSuggestion", "/stafftoggle", "Toggle staff chat messages", []);
    });
}

// EXPORTS

global.exports("isRolePresent", (identifier, role) => {
    return z.bot.isRolePresent(identifier, role);
});

global.exports("getRoles", (identifier) => {
    return z.bot.getMemberRoles(identifier);
});

global.exports("getName", (identifier) => {
    const member = z.bot.parseMember(identifier);
    return member.displayName || false;
});

global.exports("getDiscordId", (identifier) => {
    return z.utils.getPlayerDiscordId(identifier);
});
