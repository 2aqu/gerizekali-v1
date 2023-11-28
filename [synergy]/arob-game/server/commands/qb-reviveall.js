

module.exports = {
    name: "revive-all",
    description: "Sunucuda Ki Herkesi Revlersiniz.",
    role: "god",

    run: async (client, interaction, args) => {
        emitNet("hospital:client:Revive", -1);
        client.utils.log.info(`[${interaction.member.displayName}] Adlı Yetkili Herkesi Revledi!`);
        return interaction.reply({ content: "**Herkesi Başarıyla Revledim!**", ephemeral: false });
    },
};
