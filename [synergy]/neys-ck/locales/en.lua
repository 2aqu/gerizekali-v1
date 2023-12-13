local Translations = {
    info = {
        kick_message = "Karakteriniz silindi (Birazdan tekrar giriş yapabilirsiniz!)",
        command_executed = "Karakter silindi!",
    },
    command = {
        info = "Oyuncunun karakterini öldür",
        playerid = "Player ID",
        player_not_found = "Bulunamadı"
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})