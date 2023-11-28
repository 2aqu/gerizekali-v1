

module.exports = {
    name: "mesaj",
    description: "Oyun İçinden Görebileceği Bir Mesaj Yollarsın!",
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
            description: "Atmak İstediğiniz Mesaj",
            required: true,
            type: "STRING",
        },
    ],

    run: async (client, interaction, args) => {
        if (!GetPlayerName(args.id)) return interaction.reply({ content: "**Böyle Bir ID Sunucuda Bulunamadı!**", ephemeral: true });
        client.utils.chatMessage(args.id, client.z.locale.directMessage, args.mesaj);
        client.utils.log.info(`[${interaction.member.displayName}] Tarafından ${GetPlayerName(args.id)} (${args.id}): Adlı Kişiye Şu Mesaj Yollandı ${args.mesaj}`);
        return interaction.reply({ content: `**Başarıyla Mesajını ${GetPlayerName(args.id)} (${args.id}). Yolladım!**`, ephemeral: false });
    },
};
