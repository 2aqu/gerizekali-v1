
module.exports = {
    name: "announcement",
    description: "Sunucuya Duyuru Atarsın.",
    role: "mod",

    options: [
        {
            name: "message",
            description: "Sunucuya Duyuru Atarsın.",
            required: true,
            type: "STRING",
        },
    ],

    run: async (client, interaction, args) => {
        client.utils.chatMessage(-1, client.z.locale.announcement, args.message, { color: [ 255, 0, 0 ] });
        client.utils.log.info(`[${interaction.member.displayName}] Announcement: ${args.message}`);
        interaction.reply({ content: "Anons'u Başarıyla Yolladım!", ephemeral: false });
    },
};
