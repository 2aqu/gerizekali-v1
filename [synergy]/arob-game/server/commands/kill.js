
module.exports = {
    name: "kill",
    description: "Oyuncuyu Öldürün!",
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
        emitNet(`${GetCurrentResourceName()}:kill`, args.id);
        client.utils.log.info(`[${interaction.member.displayName}] Tarafından ${GetPlayerName(args.id)} (${args.id}) ID'li Kişi Discord Komuduyla Öldürüldü.`);
        return interaction.reply({ content: `**${GetPlayerName(args.id)} (${args.id}) Adlı Kişinin Kellesini Kestim! (Altay Şef Tarafından)**`, ephemeral: false });
    },
};
