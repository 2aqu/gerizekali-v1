
module.exports = {
    name: "meslek",
    description: "Oyuncunun Mesleğini Düzenlersin",
    role: "admin",

    options: [
        {
            type: "SUB_COMMAND",
            name: "ayarla",
            description: "Oyuncunun Mesleğini Yazınız.",
            options: [
                {
                    name: "id",
                    description: "Player's current id",
                    required: true,
                    type: "INTEGER",
                },
                {
                    name: "meslek",
                    description: "Meslek Verirsin!",
                    required: true,
                    type: "STRING",
                    /* choices: [ // If someone desired they could hard-code options to make it easier but there's a limit of 25 options allowed
                        { name: "Doctor / Ambulance", value: "ambulance" },
                        { name: "Police", value: "police" },
                    ],*/
                },
                {
                    name: "rütbe",
                    description: "Meslek Rütbesini Seçiniz.",
                    required: true,
                    type: "STRING",
                    choices: [
                        { name: "Rütbe 0", value: "0" },
                        { name: "Rütbe 1", value: "1" },
                        { name: "Rütbe 2", value: "2" },
                        { name: "Rütbe 3", value: "3" },
                        { name: "Rütbe 4", value: "4" },
                        { name: "Rütbe 5", value: "5" },
                        { name: "Rütbe 6", value: "6" },
                        { name: "Rütbe 7", value: "7" },
                        { name: "Rütbe 8", value: "8" },
                        { name: "Rütbe 9", value: "9" },
                        { name: "Rütbe 10", value: "10" },
                    ],
                },
            ],
        },
        {
            type: "SUB_COMMAND",
            name: "temizle",
            description: "Seçtiğiniz Oyuncunun Mesleğini Temizler.",
            options: [
                {
                    name: "id",
                    description: "Oyuncunun ID'si",
                    required: true,
                    type: "INTEGER",
                },
            ],
        },
        {
            type: "SUB_COMMAND",
            name: "bak",
            description: "Üzerinde Hangi Meslek Var Onu Öğrenirsiniz.",
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
        const player = client.QBCore.Functions.GetPlayer(args.id);
        const prevJob = `${player.PlayerData.job.name} (${player.PlayerData.job.grade.level})`;
        if (args.ayarla) {
            if (player.Functions.SetJob(args.meslek, args.rütbe)) {
                client.utils.log.info(`[${interaction.member.displayName}] Tarafından ${GetPlayerName(args.id)} (${args.id}) Kişinin Mesleği ${prevJob}'dan ${args.meslek} (${args.rütbe}) Olarak Düzenlendi.`);
                return interaction.reply({ content: `**${GetPlayerName(args.id)} (${args.id}) ${prevJob} Mesleğinden  ${args.meslek} (${args.rütbe}) Mesliğine Taşındı**`, ephemeral: false });
            } else {
                return interaction.reply({ content: "**Bu Mesleğin Bu Level'i Bulunamadı!**", ephemeral: false });
            }
        } else if (args.temizle) {
            player.Functions.SetJob("unemployed", "0");
            client.utils.log.info(`[${interaction.member.displayName}] Üzerinden ${GetPlayerName(args.id)} Adlı Kişinin ${args.id} Mesleğini Aldı! ${prevJob}`);
            return interaction.reply({ content: `**${GetPlayerName(args.id)} (${args.id}) Üzerinden ${prevJob} Mesleğini Başarıyla Aldım!**`, ephemeral: false });
        } else if (args.bak) {
            return interaction.reply({ content: `**${GetPlayerName(args.id)} (${args.id}) Oyuncunun Üzerinde ${prevJob} Mesleği Var.**`, ephemeral: false });
        }
    },
};
