
module.exports = {
    name: "aktifoyuncular",
    description: "Sunucuda Anlık Aktif Oyuncu Sayısını Gösteirir.",

    run: async (client, interaction) => {
        const playerNumber = GetNumPlayerIndices();
        let message = "**Şuan da Kimse Sunucuda Değil**";
        if (playerNumber === 1) message = "**Şuan da 1 Kişi Sunucuda Oynuyor.**";
        else if (playerNumber > 1) message = `Şuan da Sunucuda **${playerNumber}** Kişi Oynuyor.`;
        return interaction.reply({ content: message, ephemeral: false });
    },
};
