

const { MessageEmbed } = require("discord.js");


class TimedMessage {
    constructor(z) {
        // Minutes
        this.timerDelay = 5;
        // Channel id to send server status updates
        this.channelId = "00000000000000000";

        this.z = z;
        on("arobigdo:ready", async () => {
            this.post();
            this.start();
        });
    }

    async start() {
        setInterval(() => {
            this.post();
        }, 1000 * 60 * this.timerDelay);
    }

    async post() {
        try {
            const guild = this.z.bot.guilds.cache.get(this.z.config.DiscordGuildId);
            const channel = guild.channels.cache.get(this.channelId);
            const embed = new MessageEmbed();
            embed.setTitle("Server Status")
                .setColor("#f2449e")
                .setDescription(`**Uptime:** ${(GetGameTimer() / 1000 / 60).toFixed(2)} minutes
                **Server IP:** ${this.z.config.FiveMServerIP}
                **Online Players:** ${GetNumPlayerIndices()}/${GetConvar("sv_maxClients", "64")}
                **Discord Invite:** ${this.z.config.DiscordInviteLink}`);
            channel.send({ embeds: [ embed ] }).catch();
        } catch {
            // Just incase something unforseen happens
        }
    }

}

module.exports = TimedMessage;
