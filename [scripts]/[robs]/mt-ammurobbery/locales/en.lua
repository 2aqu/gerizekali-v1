local Translations = {
  ammurobbery = {
    ["police_notification"] = "Gun Shop Soygunu",
    ["vitine_target_label"] = "Vitrini Soy",
    ["shelf_target_label"] = "Rafı Soy",
    ["animation_searching"] = "ARANIYOR...",
    ["error_inventory"] = "Üzerinde çok fazla eşya var.",
    ["error_empty_vitrine"] = "Burası boş...",
    ["error_failed"] = "Başarısız...",
    ["error_cooldown"] = "Bu işletme daha yeni soyulmuş...",
    ["error_no_police"] = "Yeterli sayıda polis yok...",
  },
}
Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
