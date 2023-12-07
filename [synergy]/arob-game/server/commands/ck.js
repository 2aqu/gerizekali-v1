
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
<<<<<<< HEAD
            emit("syn:discord:deleteChar", "discord", args.citizenid)
=======
            exports["arob-game"].DeleteCharacter(`${args.citizenid}`)
>>>>>>> 9b811a154317fd6c063f3eb5c259addbf88db50c
        } else {
            return interaction.reply({ content: "**CitizenID yanlış veya eksik!**", ephemeral: true })
        }
    },
};
