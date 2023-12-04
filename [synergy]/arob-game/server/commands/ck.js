
module.exports = {
    name: "ck",
    description: "Oyuncunun anasını siker CK atar.",
    role: "admin",

    options: [
        {
            name: "citizenid",
            description: "Oyuncunun Citizen ID'si",
            required: true,
            type: "STRING",
        },
    ],

    run: async (client, interaction, args) => {
        console.log("hi")
        if (!(args.citizenid)) return interaction.reply({ content: "**CitizenID Verilmedi!**", ephemeral: true });
        if ((args.citizenid).length === 8) {
            console.log("hi2")
            //MySQL.query('DELETE FROM players WHERE citizenid = ?', { citizenid: args.citizenid })
            //exports["arob-game"].DeleteCharacter(args.citizenid)
            return

            const QBCore = exports['qb-core'].GetCoreObject()
            console.log("hi2.5")
            const player = QBCore.GetPlayerByCitizenId(args.citizenid)
            if (player) {
                console.log("hi3")
                QBCore.Functions.Kick(player.source, 'Karakteriniz silinmiştir. Tekrar yeni karakterinizi oluşturabilirsiniz.', true, true)
                return interaction.reply({ content: "**Karakter silinmiştir!**", ephemeral: true });
            } else {
                console.log("hi4")
                return interaction.reply({ content: "**Karakter silinmiştir!**", ephemeral: true });
            }
        } else {
            return interaction.reply({ content: "**CitizenID yanlış veya eksik!**", ephemeral: true })
        }
    },
};
