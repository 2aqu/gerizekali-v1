
module.exports = {
    name: "karakterekranı",
    description: "Seçtiğiniz Oyuncuyu Karakter Seçim Ekranına Geri Gönderirsiniz.",
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

        client.QBCore.Player.Logout(args.id);
        emitNet("qb-multicharacter:client:chooseChar", args.id);

        client.utils.log.info(`[${interaction.member.displayName}] Tarafından ${GetPlayerName(args.id)} (${args.id}) Adlı Kişi Discord Komuduyla Karakter Ekranına Gönderildi!`);
        return interaction.reply({ content: `**${GetPlayerName(args.id)} (${args.id}) Başarıyla Karakter Ekranına Gönderdim.**`, ephemeral: false });
    },
};
