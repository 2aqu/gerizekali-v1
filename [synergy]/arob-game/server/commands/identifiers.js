
module.exports = {
    name: "oyuncubilgi",
    description: "Oyunda ki Oyuncunun Bütün Bilgilerini Gösterir.",
    role: "admin",

    options: [
        {
            name: "id",
            description: "Oyuncunun ID'si",
            required: true,
            type: "INTEGER",
        },
    ],

    run: async (client, interaction, args) => {
        if (!GetPlayerName(args.id)) return interaction.reply({ content: "**Böyle Bir ID Sunucuda Bulunamadı!**", ephemeral: true });
        const embed = new client.Embed()
            .setColor(client.config.embedColor)
            .setTitle(`${GetPlayerName(args.id)} Steam Adlı Oyuncunun Bilgileri`)
            .setFooter({ text: "arobisgod." });
        let desc = "";
        for (const [key, value] of Object.entries(client.utils.getPlayerIdentifiers(args.id))) {
            if (key == "discord") desc += `**${key}:** <@${value}> (${value})\n`;
            else desc += `**${key}:** ${value}\n`;
        }
        embed.setDescription(desc);
        client.utils.log.info(`[${interaction.member.displayName}] pulled identifiers on ${GetPlayerName(args.id)} (${args.id})`);
        return interaction.reply({ embeds: [embed], ephemeral: false }).catch();
    },
};
