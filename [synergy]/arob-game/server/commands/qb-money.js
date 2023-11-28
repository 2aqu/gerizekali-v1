
module.exports = {
    name: "para",
    description: "Oyuncunun Parasına Bakarsın.",
    role: "admin",

    options: [
        {
            type: "SUB_COMMAND",
            name: "ekle",
            description: "Oyuncuya Para Eklersin",
            options: [
                {
                    name: "id",
                    description: "Oyuncunun ID'si",
                    required: true,
                    type: "INTEGER",
                },
                {
                    name: "paracinsi",
                    description: "Para Cinsine Göre Verirsin.",
                    required: true,
                    type: "STRING",
                    choices: [
                        { name: "Cash", value: "cash" },
                        { name: "Bank", value: "bank" },
                        { name: "Crypto", value: "Crypto" },
                    ],
                },
                {
                    name: "miktar",
                    description: "Yazdığın Miktar Kadar.",
                    required: true,
                    type: "INTEGER",
                },
            ],
        },
        {
            type: "SUB_COMMAND",
            name: "sil",
            description: "Oyuncunun Üzerinden Para Silersin",
            options: [
                {
                    name: "id",
                    description: "Oyuncunun ID'si",
                    required: true,
                    type: "INTEGER",
                },
                {
                    name: "paracinsi",
                    description: "Para Cinsine Göre Silersin.",
                    required: true,
                    type: "STRING",
                    choices: [
                        { name: "Cash", value: "cash" },
                        { name: "Bank", value: "bank" },
                        { name: "Crypto", value: "Crypto" },
                    ],
                },
                {
                    name: "miktar",
                    description: "Yazdığın Miktar Kadar.",
                    required: true,
                    type: "INTEGER",
                },
            ],
        },
        {
            type: "SUB_COMMAND",
            name: "düzenle",
            description: "Oyuncunun Parasını Düzenlersin.",
            options: [
                {
                    name: "id",
                    description: "Oyuncunun ID'si",
                    required: true,
                    type: "INTEGER",
                },
                {
                    name: "paracinsi",
                    description: "Para Cinsine Göre Düzenlersin.",
                    required: true,
                    type: "STRING",
                    choices: [
                        { name: "Cash", value: "cash" },
                        { name: "Bank", value: "bank" },
                        { name: "Crypto", value: "Crypto" },
                    ],
                },
                {
                    name: "miktar",
                    description: "Yazdığın Miktar Kadar.",
                    required: true,
                    type: "INTEGER",
                },
            ],
        },
        {
            type: "SUB_COMMAND",
            name: "incele",
            description: "Oyuncunun Parasını Listeler.",
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
        const characterName = `${player.PlayerData.charinfo.firstname} ${player.PlayerData.charinfo.lastname}`;
        const reason = "Staff Yetkilisi";
        if (args.incele) {
            const embed = new client.Embed().setTitle(`${characterName} Adlı Karakterin Parası`);
            let desc = "";
            Object.entries(player.PlayerData.money).forEach(([type, value]) => {
                desc += `**${type}:** $${value.toLocaleString("en-US")}\n`;
            });
            embed.setDescription(desc);
            return interaction.reply({ embeds: [ embed ], ephemeral: false });
        }
        if (args.miktar < 0) return interaction.reply({ content: "**Lütfen Sadece Pozitif Rakam Girin!**", ephemeral: true });
        const prevMoney = player.Functions.GetMoney(args.paracinsi);
        if (args.ekle) {
            if (player.Functions.AddMoney(args.paracinsi, args.miktar, reason)) {
                client.utils.log.info(`[${interaction.member.displayName}] Tarafından ${args.miktar} Miktar ${GetPlayerName(args.id)} (${args.id}) ${args.paracinsi} Para Üzerine Eklendi. [Eklenmeden Önceki Parası: ${prevMoney}]`);
                return interaction.reply({ content: `**${characterName} (${args.id}) Adlı Karaktere ${args.paracinsi} Olarak Parası ${prevMoney} Miktardan Bu ${player.Functions.GetMoney(args.paracinsi)} Miktara Arttırıldı!**`, ephemeral: false });
            } else {
                return interaction.reply({ content: `**${characterName} (${args.id}) Adlı Karaktere ${args.paracinsi} Olarak Parası ${prevMoney} Miktardan Bu ${player.Functions.GetMoney(args.paracinsi)} Miktara Arttırıldı!**`, ephemeral: false });
            }
        } else if (args.sil) {
            if (player.Functions.RemoveMoney(args.paracinsi, args.miktar, reason)) {
                client.utils.log.info(`[${interaction.member.displayName}] Tarafından ${args.miktar} Miktar ${GetPlayerName(args.id)} (${args.id})'s ${args.paracinsi} Para Üzerinden Silindi. [Silinmeden Önceki Parası: ${prevMoney}]`);
                return interaction.reply({ content: `**${characterName} (${args.id}) Adlı Karaktere ${args.paracinsi} Olarak Parası ${prevMoney} Miktardan Bu ${player.Functions.GetMoney(args.paracinsi)} Miktara Düşürüldü!**`, ephemeral: false });
            } else {
                return interaction.reply({ content: `**${characterName} (${args.id}) Adlı Karaktere ${args.paracinsi} Olarak Parası ${prevMoney} Miktardan Bu ${player.Functions.GetMoney(args.paracinsi)} Miktara Düşürüldü!**`, ephemeral: false });
            }
        } else if (args.düzenle) {
            if (player.Functions.SetMoney(args.paracinsi, args.miktar, reason)) {
                client.utils.log.info(`[${interaction.member.displayName}] Tarafından ${GetPlayerName(args.id)} (${args.id}) Kişinin Parası ${args.paracinsi}'dan ${args.miktar} Olarak Düzenlendi! [Düzenlenmeden Önceki Parası: ${prevMoney}]`);
                return interaction.reply({ content: `**${characterName} (${args.id}) Parası Düzenlendi! ${args.paracinsi} Olarak Parası ${player.Functions.GetMoney(args.paracinsi)} Olarak Düzenlendi! [Düzenlenmeden Önceki Parası: ${prevMoney})`, ephemeral: false });
            } else {
                return interaction.reply({ content: `**${characterName} (${args.id}) Parası Düzenlendi! ${args.paracinsi} Olarak Parası ${player.Functions.GetMoney(args.paracinsi)} Olarak Düzenlendi! [Düzenlenmeden Önceki Parası: ${prevMoney})`, ephemeral: false });
            }
        }
    },
};
