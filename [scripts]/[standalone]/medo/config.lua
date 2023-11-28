-- ## 3dme : shared config file

Config = {
    language = 'en',
    visual = {
        color = { r = 70, g = 101, b = 154, a = 255 }, -- Text color
        font = 0, -- Text font
        time = 5000, -- Duration to display the text (in ms)
        scale = 0.5, -- Text scale
        dist = 20, -- Min. distance to draw 
    },
	
	visuals = {
        color = { r = 79, g = 210, b = 150, a = 255 }, -- Text color
        font = 0, -- Text font
        time = 5000, -- Duration to display the text (in ms)
        scale = 0.5, -- Text scale
        dist = 20, -- Min. distance to draw 
    },
}

Languages = {
    ['en'] = {
        commandName = 'me',
        commandDescription = '',
        commandSuggestion = {{ name = 'action', help = 'yaptığınız eylemleri belirtmenize yarar.'}},
        prefix = ''
    },
    ['fr'] = {
        commandName = 'me',
        commandDescription = 'Affiche une action au dessus de votre tête.',
        commandSuggestion = {{ name = 'action', help = '"se gratte le nez" par exemple.'}},
        prefix = 'l\'individu '
    },
}
