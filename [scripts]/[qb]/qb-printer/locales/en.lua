local Translations = {
    error = {
        invalid_ext = "Bu link gecerli değil.",
        allowed_ext = "Bu link geçerli.",

    },
    info = {
        use_printer = "Yazıcı"

    },
    command = {
        spawn_printer = "Spawn a printer"
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})