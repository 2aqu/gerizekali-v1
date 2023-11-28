
module.exports = {
    name: "kick",
    description: "Sunucudan Oyuncuyu Kicklersiniz.",
    role: "mod",

    options: [
        {
            name: "id",
            description: "Oyuncunun ID'si",
            required: true,
            type: "INTEGER",
        },
        {
            name: "mesaj",
            description: "Kicklediğiniz Oyuncuya İletmek İstediğiniz Mesaj",
            required: false,
            type: "STRING",
        },
    ],

    run: async (client, interaction, args) => {
        if (!GetPlayerName(args.id)) return interaction.reply({ content: "**Böyle Bir ID Sunucuda Bulunamadı!**", ephemeral: true });
        const reason = client.utils.replaceGlobals(client, args.mesaj || client.z.locale.kickedWithoutReason);
        DropPlayer(args.id, reason);
        client.utils.log.info(`[${interaction.member.displayName}] Adlı Yetkili ${GetPlayerName(args.id)} (${args.id}). Kişiyi Kickledi, Sebep: ${reason}`);
        return interaction.reply({ content: `**${GetPlayerName(args.id)} (${args.id}) Başarıyla ID'li Kişiyi Sunucudan Kickledim!**`, ephemeral: false });
    },
};
