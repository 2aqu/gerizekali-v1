
module.exports = {
    name: "fg",
    description: "Oyuncunun anasını siker CK atar.",
    role: "admin",

    options: [
        {
            name: "unban",
            description: "Oyuncunun Citizen ID'si",
            required: true,
            type: "STRING",
        },
        {
            name: "ban",
            description: "Oyuncunun Citizen ID'si",
            required: true,
            type: "STRING",
        },
        {
            name: "screenshot",
            description: "Oyuncunun Citizen ID'si",
            required: true,
            type: "STRING",
        },
    ],

    run: async (client, interaction, args) => {
        console.log("hi")
        if (!(args.citizenid)) return interaction.reply({ content: "**CitizenID Verilmedi!**", ephemeral: true });
        if ((args.citizenid).length === 8) {
            emit("syn:discord:deleteChar", "discord", args.citizenid)
            exports["arob-game"].DeleteCharacter(`${args.citizenid}`)
        } else {
            return interaction.reply({ content: "**CitizenID yanlış veya eksik!**", ephemeral: true })
        }
    },
};
