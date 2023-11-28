
module.exports = {
    name: "server",
    description: "Sunucunun Fivem ve Discord Bilgileri",

    run: async (client, interaction) => {
        if (client.isRolePresent(interaction.member, [client.config.DiscordModRoleId, client.config.DiscordAdminRoleId, client.config.DiscordGodRoleId])) {
            const embed = new client.Embed()
                .setThumbnail(interaction.guild.iconURL({ format: "png", size: 512 }))
                .addField("FiveM Server:", `**Version:** ${GetConvar("version", "Unknown")}
                    **Server Adı:** ${client.config.FiveMServerName}
                    **Server IP:** ${client.config.FiveMServerIP}
                    **Script Sayısı:** ${GetNumResources()}
                    **Max Oyuncu Sayısı:** ${GetConvar("sv_maxClients", "Unknown")}
                    **OneSync:** ${GetConvar("onesync_enabled", "Unknown")}
                    **Uptime:** ${(GetGameTimer() / 1000 / 60).toFixed(2)} Dakika
                    **Online Oyuncular:** ${GetNumPlayerIndices()}`, false)
                .addField("Discord Server:", `**ID:** ${interaction.guildId}
                    **Davet Linki:** ${client.config.DiscordInviteLink}
                    **Roller:** ${interaction.guild.roles.cache.size}
                    **Kanallar:** ${interaction.guild.channels.cache.filter((chan) => chan.type === "GUILD_TEXT").size}
                    **Üyeler:** ${interaction.guild.memberCount}${getWhitelisted(client, interaction)}
                    **Owner:** <@${interaction.guild.ownerId}> (${interaction.guild.ownerId})`, true)
                .setFooter({ text: "arobisgod" });
            return interaction.reply({ embeds: [ embed ] });
        } else {
            const embed = new client.Embed()
                .setThumbnail(interaction.guild.iconURL({ format: "png", size: 512 }))
                .addField(client.config.FiveMServerName, `**Server IP:** ${client.config.FiveMServerIP}
                    **Uptime:** ${(GetGameTimer() / 1000 / 60).toFixed(2)} Dakika
                    **Max Oyuncu Sayısı:** ${GetNumPlayerIndices()}/${GetConvar("sv_maxClients", "Unknown")}`, false)
                .setFooter({ text: "arobisgod" });
            return interaction.reply({ embeds: [ embed ] });
        }
    },
};


function getWhitelisted(client, interaction) {
    if (!client.config.EnableWhitelistChecking) return "";
    const membersWithRole = interaction.guild.members.cache.filter(member => {
        let found = false;
        client.config.DiscordWhitelistRoleIds.forEach(role => {
            if (member.roles.cache.has(role)) found = true;
        });
        return found;
    });
    return `\n**Whitelisted:** ${membersWithRole.size}`;
}
