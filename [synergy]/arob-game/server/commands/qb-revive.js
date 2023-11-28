
module.exports = {
    name: "revive",
    description: "Seçtiğiniz Oyunucuyu Revlersiniz.",
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
        emitNet("hospital:client:Revive", args.id);
        client.utils.log.info(`[${interaction.member.displayName}] Tarafından ${GetPlayerName(args.id)} (${args.id}) Adlı Kişi Revlendi!`);
        return interaction.reply({ content: `**${GetPlayerName(args.id)} (${args.id}) Senin İçin Revledim!**`, ephemeral: false });
    },
};
