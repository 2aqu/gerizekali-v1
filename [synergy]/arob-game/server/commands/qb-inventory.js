
module.exports = {
    name: "envanter",
    description: "Oyuncunun Envanterine Bakarsınız!",
    role: "admin",

    options: [
        {
            type: "SUB_COMMAND",
            name: "ver",
            description: "Oyuncuya İtem Verirsiniz.",
            options: [
                {
                    name: "id",
                    description: "Oyuncunun ID'si",
                    required: true,
                    type: "INTEGER",
                },
                {
                    name: "item",
                    description: "Verilecek İtem",
                    required: true,
                    type: "STRING",
                },
                {
                    name: "miktar",
                    description: "Kaç Tane Vermek İstiyorsunuz?",
                    required: false,
                    type: "INTEGER",
                },
            ],
        },
        {
            type: "SUB_COMMAND",
            name: "al",
            description: "Oyuncudan İtem Almanızı Sağlar.",
            options: [
                {
                    name: "id",
                    description: "Oyuncunun ID'si",
                    required: true,
                    type: "INTEGER",
                },
                {
                    name: "item",
                    description: "İtem'i Alırsınız.",
                    required: true,
                    type: "STRING",
                },
                {
                    name: "miktar",
                    description: "Eğer Girmezseniz Hepsini Alır, Girerseniz Seçtiğiniz Miktar Kadar.",
                    required: false,
                    type: "INTEGER",
                },
            ],
        },
        {
            type: "SUB_COMMAND",
            name: "bak",
            description: "Oyuncunun Envanterine Bakarsınız.",
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
        const amount = args.count || 1;
        if (!GetPlayerName(args.id)) return interaction.reply({ content: "**Böyle Bir ID Sunucuda Bulunamadı!**", ephemeral: true });
        const player = client.QBCore.Functions.GetPlayer(args.id);
        if (args.ver) {
            const badItems = [ "id_card", "harness", "markedbills", "labkey", "printerdocument"];
            const itemData = client.QBCore.Shared.Items[args.item.toLowerCase()];
            if (!itemData) return interaction.reply({ content: "**İtem Bulunumadı!**", ephemeral: false });
            if (badItems.includes(itemData["name"])) return interaction.reply({ content: "**Bu İtemi Maalesef Veremiyorum.**", ephemeral: false });
            if (amount > 1 && itemData.unique) return interaction.reply({ content: "Bu Eşyadan Sadece 1 Tane Verilebilir.", ephemeral: false });
            if (player.Functions.AddItem(itemData["name"], amount, false)) {
                client.utils.log.info(`[${interaction.member.displayName}] Tarafından ${GetPlayerName(args.id)} (${args.id}) ${amount} ${args.item} Adlı Kişiye İtem Verilmiş.`);
                return interaction.reply({ content: `**${GetPlayerName(args.id)} (${args.id}) Adlı Kişiye ${amount} Adet ${itemData.label} Verildi.**`, ephemeral: false });
            } else {
                return interaction.reply({ content: "**Bu İtemi Vermeye Çalışırken Bir Şeyler Ters Gitti!**", ephemeral: false });
            }
        } else if (args.al) {
            const itemData = client.QBCore.Shared.Items[args.item.toLowerCase()];
            if (!itemData) return interaction.reply({ content: "**Böyle Bir İtem Bulunumadı!**", ephemeral: false });
            if (player.Functions.RemoveItem(args.item, amount)) {
                client.utils.log.info(`[${interaction.member.displayName}] Tarafından ${GetPlayerName(args.id)} (${args.id}) Adlı Kişinin Envanterinden (${amount} Adet ${args.item}) Silindi`);
                return interaction.reply({ content: `**${amount} Adet ${itemData.label} ${GetPlayerName(args.id)} (${args.id}) Kişisinin Üstünden Alındı!**`, ephemeral: false });
            } else {
                return interaction.reply({ content: `**${GetPlayerName(args.id)} (${args.id}) Üzerinden İtemi Silmeye Çalışırken Bir Hata Oldu!**`, ephemeral: false });
            }
        } else if (args.bak) {
            const embed = new client.Embed().setTitle(`${GetPlayerName(args.id)} (${args.id}) Adlı Kişinin Envanteri`);
            const items = player.PlayerData.items;
            let desc = "";
            if (typeof items === "object") {
                Object.entries(items).forEach(([key, i]) => {
                    desc += `[${i.slot}] ${i.amount}x - **${i.label}** (${i.name})\n`;
                });
            } else {
                items.forEach((i) => {
                    desc += `[${i.slot}] ${i.amount}x - **${i.label}** (${i.name})\n`;
                });
            }
            embed.setDescription(desc);
            return interaction.reply({ embeds: [ embed ], ephemeral: false });
        }

    },
};
