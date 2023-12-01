const channelIdToAllow = '1173398417523875920'
const allowedUserIds = ['848552649615081484', '868404051136634890']
const notAllowedMessage = "Synergy"
module.exports = {
    name: "voiceChannelJoin",
    run: async (oldState, newState) => {
        const voiceChannel = newState.channel;
        const member = newState.member;
        console.log(voiceChannel);
        console.log(member);
        if (voiceChannel && voiceChannel.id === channelIdToAllow) {
            if (!allowedUserIds.includes(member.user.id)) {
                member.voice.setChannel(null);
                voiceChannel.send(`<@${member.user.id}>, Giriş yetkiniz bulunmamakta: "${notAllowedMessage}"`);
            }
        }
    },
};
/*
const channelIdToAllow = '1173398417523875920'
const allowedUserIds = ['848552649615081484', '868404051136634890']
const notAllowedMessage = "Synergy"

client.on('voiceStateUpdate', (oldState, newState) => {
    const voiceChannel = newState.channel;
    const member = newState.member;

    if (voiceChannel && voiceChannel.id === channelIdToAllow) {
        if (!allowedUserIds.includes(member.user.id)) {
            member.voice.setChannel(null);
            voiceChannel.send(`<@${member.user.id}>, Giriş yetkiniz bulunmamakta: "${notAllowedMessage}"`);
        }
    }
});*/