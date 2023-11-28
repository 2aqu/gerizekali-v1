
const fs = require("fs").promises;
const Buffer = require("buffer").Buffer;

module.exports = {
    name: "screenshot",
    description: "Seçtiğiniz Oyuncunun Anlık Ekran Görüntüsünü Alırsınız.",
    role: "god",

    options: [
        {
            name: "id",
            description: "Oyuncunun ID'si",
            required: true,
            type: "INTEGER",
        },
    ],

    run: async (client, interaction, args) => {
        if (!GetPlayerName(args.id)) return interaction.reply({ content: "**Böyle Bir ID Sunucuda Bulunamadı!**", ephemeral: true });
        if (GetResourceState("screenshot-basic") !== "started") return interaction.reply({ content: "This command requires citizenfx's `screenshot-basic` to work", ephemeral: false });
        await interaction.reply("Screenshoot Alınıyor...");
        const name = `${client.utils.log.timestamp(true)}_${args.id}.jpg`;
        const data = await takeScreenshot(args.id).catch(error => {
            client.utils.log.error(error);
            return interaction.editReply("**ScreenShoot Alırken Hata Oluştu!**");
        });
        const buffer = new Buffer.from(data, "base64");
        const embed = new client.Embed()
            .setTitle(`${GetPlayerName(args.id)}' Adlı Kişinin Ekran Görüntüsü`)
            .setImage(`attachment://${name}`)
            .setFooter({ text: `Ekran Görüntüsü Alındı. ${client.utils.log.timestamp()}` });
        await interaction.editReply({ content: null, embeds: [ embed ], files: [ { attachment: buffer, name: name } ] }).catch(console.error);
        if (client.config.SaveScreenshotsToServer) {
            await fs.mkdir(`${client.root}/screenshots`, { recursive: true }).catch();
            await fs.writeFile(`${client.root}/screenshots/${name}`, data, { encoding: "base64", flag:"w+" }).catch(client.utils.log.error);
        }
        return client.utils.log.info(`[${interaction.member.displayName}] İsimli Yetkili ${GetPlayerName(args.id)} Adlı Kişinin Ekran Görüntüsü Aldı (${args.id}) screen`);
    },
};

const takeScreenshot = async (id) => {
    return new Promise((resolve, reject) => {
        global.exports["screenshot-basic"]["requestClientScreenshot"](id, {}, async (error, data) => {
            if (error) return reject(error);
            resolve(data.split(";base64,").pop());
        });
    });
};
