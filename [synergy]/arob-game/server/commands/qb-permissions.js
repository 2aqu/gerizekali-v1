
module.exports = {
    name: "yetki",
    description: "Sunucuda Oyuncuya Yetki Verirsiniz.",
    role: "god",

    options: [
        {
            type: "SUB_COMMAND",
            name: "ver",
            description: "Oyuncuya Yetki Verirsiniz.",
            options: [
                {
                    name: "id",
                    description: "Oyuncunun ID'si",
                    required: true,
                    type: "INTEGER",
                },
                {
                    name: "yetki",
                    description: "Hangi Yetkiyi Vermek İstiyorsunuz?",
                    required: true,
                    type: "STRING",
                    choices: [
                        { name: "mod", value: "mod" },
                        { name: "admin", value: "admin" },
                        { name: "god", value: "god" },
                    ],
                },
            ],
        },
        {
            type: "SUB_COMMAND",
            name: "al",
            description: "Oyuncunun Yetkisi Alır.",
            options: [
                {
                    name: "id",
                    description: "Oyuncunun ID'si",
                    required: true,
                    type: "INTEGER",
                },
            ],
        },
    ],

    run: async (client, interaction, args) => {
        if (!GetPlayerName(args.id)) return interaction.reply({ content: "**Böyle Bir ID Sunucuda Bulunamadı!**", ephemeral: true });
        if (args.ver) {
            client.QBCore.Functions.AddPermission(args.id, args.yetki);
            client.utils.log.info(`[${interaction.member.displayName}] Tarafından ${args.id}'ye ${args.yetki} Yetkisi Verildi.`);
            return interaction.reply({ content: `**${GetPlayerName(args.id)} (${args.id}) Adlı Kişiye ${args.yetki} Yetkisi Verildi!**`, ephemeral: false });
        } else if (args.al) {
            client.QBCore.Functions.RemovePermission(args.id);
            client.utils.log.info(`[${interaction.member.displayName}] Tarafından ${args.id}'den Yetki Alındı!`);
            return interaction.reply({ content: `**${GetPlayerName(args.id)} (${args.id}) Kişinin Üzerinden Bütün Yetkileri Alındı!**`, ephemeral: false });
        }
    },
};
