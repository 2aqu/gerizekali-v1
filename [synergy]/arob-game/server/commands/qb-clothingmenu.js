
module.exports = {
    name: "kıyafet-menü",
    description: "Seçtiğiniz Oyuncuya Kıyafet Menüsü Verirsiniz.",
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
        emitNet("qb-clothing:client:openMenu", args.id);
        client.utils.log.info(`[${interaction.member.displayName}] İsimli Yetkili ${args.id} ID'li Kişiye Kıyafet-Menü Verdi!`);
        return interaction.reply({ content: `**${GetPlayerName(args.id)} (${args.id}) Senin İçin Ona Kıyafet Menü Verdim!**`, ephemeral: false });
    },
};
