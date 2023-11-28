

module.exports = {
    name: "jail",
    description: "Seçtiğiniz Kişiyi Hapis'e Yollarsınız.",
    role: "mod",

    options: [
        {
            type: "SUB_COMMAND",
            name: "yolla",
            description: "Oyuncuyu Hapis'e Gönderirsiniz.",
            options: [
                {
                    name: "id",
                    description: "Oyuncunun ID'si",
                    required: true,
                    type: "INTEGER",
                },
                {
                    name: "zaman",
                    description: "Kaç Dakika Hapis'e Tıkmak İstiyorsunuz.",
                    required: true,
                    type: "INTEGER",
                },
            ],
        },
        {
            type: "SUB_COMMAND",
            name: "çıkar",
            description: "Oyuncuyu Hapisten Çıkarırsınız.",
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
        if (args.yolla) {
            if (args.zaman < 5) return interaction.reply({ content: "Jail Süresi Bu Kadar Kısa Olamaz.", ephemeral: true });
            const player = client.QBCore.Functions.GetPlayer(args.id);
            const d = new Date();
            // Stupid hack to replicate lua's os.date("*t") for the prison jail script is stupid..
            const currentDate = {
                ["month"]: d.getDate(),
                ["sec"]: d.getSeconds(),
                ["year"]: d.getFullYear(),
                ["day"]: (d.getDate() > 30) ? 30 : d.getDate(),
                ["min"]: d.getMinutes(),
                ["wday"]: d.getDay() + 1,
                ["isdst"]: false,
                ["yday"]: (Date.UTC(d.getFullYear(), d.getMonth(), d.getDate()) - Date.UTC(d.getFullYear(), 0, 0)) / 24 / 60 / 60 / 1000,
                ["hour"]: d.getHours(),
            };
            player.Functions.SetMetaData("injail", args.zaman);
            player.Functions.SetMetaData("criminalrecord", { ["hasRecord"]: true, ["date"]: currentDate });
            emitNet("police:client:SendToJail", args.id, parseInt(args.zaman));
            emitNet("QBCore:Notify", args.id, `Siz Bu Hapis'e ${args.zaman} Ay Mahkum Edildiniz!`);
            client.utils.log.info(`[${interaction.member.displayName}] jailed ${GetPlayerName(args.id)} (${args.id}) for ${args.zaman} seconds`);
            return interaction.reply({ content: `**${GetPlayerName(args.id)} (${args.id}) Adlı Oyuncu ${args.zaman} Ay Hapise Atıldı!**`, ephemeral: false });
        } else if (args.çıkar) {
            emitNet("prison:client:UnjailPerson", args.id);
            client.utils.log.info(`[${interaction.member.displayName}] Tarafından ${GetPlayerName(args.id)} (${args.id}) Adlı Oyuncu Hapisten Kurtarıldı!`);
            return interaction.reply({ content: `**${GetPlayerName(args.id)} (${args.id}) Artık Özgürsün, Uç Dolaş Adeta Bir C-01 Gibi.**`, ephemeral: false });
        }
    },
};
