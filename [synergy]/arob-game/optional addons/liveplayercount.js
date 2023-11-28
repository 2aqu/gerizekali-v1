
class LivePlayerCount {
    constructor(z) {
        // Id for the voice channel name to update
        this.voiceChannelId = "1066741449384788048";

        this.z = z;
        on("arobigdo:ready", async () => {
            this.syncChannel();
            this.start();
        });
    }

    async start() {
        setInterval(() => {
            this.syncChannel();
        }, 1000 * 60 * 5);
    }

    async syncChannel() {
        try {
            const guild = this.z.bot.guilds.resolve(this.z.config.DiscordGuildId);
            const channel = guild.channels.cache.get(this.voiceChannelId);
            channel.setName(`Oyuncu Online: ${GetNumPlayerIndices()}`).catch();
        } catch {
            // Just incase something unforseen happens
        }
    }

}

module.exports = LivePlayerCount;
