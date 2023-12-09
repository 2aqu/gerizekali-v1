--In the feedback of our customers, we realised that server tokens were reached by cheating.
-- Therefore, we moved the discord and token-related systems here. Please make corrections here.

-- Discord Bot Token for player image --
Config.DiscordBotToken = "" -- Discord Bot Token
-- Discord Bot Name --
Config.username = "Codem - Banking" 
-- Discord Bot Avatar --
Config.avatar = "https://cdn.discordapp.com/attachments/862018783391252500/1042919699903692800/512x512_Logo.png"
-- Discord Bot Footer --
Config.communtiyName = "Codem"
-- Discord Bot Footer Avatar --
Config.communtiyLogo = "https://cdn.discordapp.com/attachments/862018783391252500/1042919699903692800/512x512_Logo.png"
-- true enabled - false disable
Config.Webhook = true 
-- discord log webhok---
Config.DiscordLogWebhook = {
    ['bills'] = 'https://discord.com/api/webhooks/1182774255507746937/MWjxAveQNdi-bFy9WurKIFX0QFaHNAuLTJVqG0u5j1JoDUoUURAzZ39ybTfMC15WKy7Q', -- your webhook
    ['withdraw'] = 'https://discord.com/api/webhooks/1182774255507746937/MWjxAveQNdi-bFy9WurKIFX0QFaHNAuLTJVqG0u5j1JoDUoUURAzZ39ybTfMC15WKy7Q', -- your webhook
    ['deposit'] = 'https://discord.com/api/webhooks/1182774255507746937/MWjxAveQNdi-bFy9WurKIFX0QFaHNAuLTJVqG0u5j1JoDUoUURAzZ39ybTfMC15WKy7Q', -- your webhook
    ['loan'] = 'https://discord.com/api/webhooks/1182774255507746937/MWjxAveQNdi-bFy9WurKIFX0QFaHNAuLTJVqG0u5j1JoDUoUURAzZ39ybTfMC15WKy7Q', -- your webhook
    ['transfer'] = 'https://discord.com/api/webhooks/1182774255507746937/MWjxAveQNdi-bFy9WurKIFX0QFaHNAuLTJVqG0u5j1JoDUoUURAzZ39ybTfMC15WKy7Q', -- your webhook
    ['societywithdraw'] = 'https://discord.com/api/webhooks/1182774255507746937/MWjxAveQNdi-bFy9WurKIFX0QFaHNAuLTJVqG0u5j1JoDUoUURAzZ39ybTfMC15WKy7Q', -- your webhook
    ['societydeposit'] = 'https://discord.com/api/webhooks/1182774255507746937/MWjxAveQNdi-bFy9WurKIFX0QFaHNAuLTJVqG0u5j1JoDUoUURAzZ39ybTfMC15WKy7Q', -- your webhook
    ['societytransfer'] = 'https://discord.com/api/webhooks/1182774255507746937/MWjxAveQNdi-bFy9WurKIFX0QFaHNAuLTJVqG0u5j1JoDUoUURAzZ39ybTfMC15WKy7Q' -- your webhook
}