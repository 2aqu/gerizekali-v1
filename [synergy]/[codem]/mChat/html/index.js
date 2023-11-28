


const app = new Vue({
    el: '#app',
    data: {
        show: false,
        showChatInput: false,
        showId : true,
        chatTabs: {
            ['all']: 'ALL',
            ['me']: 'ME',
            ['do']: 'DO',
            //['pm']: 'PM',
            //['server']: 'SERVER',
            // ['admin']: 'ADMIN',
            // ['gang']: 'GANG',
        },
        logo : '',
        tags: {},
        currentChatTab: 'all',
        currentChatTabIndex: 0,
        settingsVisible: false,
        blacklistedWords : [],
        chatMessages: [],
        oldMessages: [],
        oldMessagesIndex: -1,
        newMessageTimeout: false,
        showInputTimeout: false,
        backingSuggestions: [],
        removedSuggestions: [],
        suggestionsSwiper: false,
        showEmoji: false,
        stopInterval: false,
        message: '',
        keyHandler: false,
        focusTimer: false,
        writingTimer: undefined,
        isNight: false,
        autofillText: false,
        resourceName : 'mChat',
        chatSettings: {
            position: 'left-top',
            visibility: 'ON_INPUT',
            dynamicBg: 'true',
            streamerMode: 'false',
            size: 1,
            sfx: 'true',

        },
        chatSettingsDefault: {
            position: 'left-top',
            visibility: 'ON_INPUT',
            dynamicBg: 'true',
            streamerMode: 'false',
            size: 1,
            sfx: 'true',
        },
    },
    methods: {
        SetLogo(val){
            this.logo = val
        },
        ShowID(val){
            this.showId = val
        },

        PlaySound(name) {
            if (this.chatSettings.sfx == 'true') {
                let audio = new Audio('./assets/sounds/' + name);
                audio.play();
                audio.volume = 0.10;
            }
        },
        SetBlacklistedWords(words){
            this.blacklistedWords = words
        },
        filterWords(chat, words) {
            for(let i = 0; i < words.length; i++){
                words[i] = words[i].toLowerCase()
            }
            let arr = chat.split(/\b/) 
            let newText = arr.map(word => words.includes(word.toLowerCase()) ? 
              '*'.repeat(word.length)
              :
              word)
        
            chat = newText.join(''); 
            return chat;
        },
        GetSettingValue(name) {
            let stored = localStorage.getItem(name);
            if (stored === null) {
                switch (name) {
                    case "visibility":
                        stored = this.chatSettingsDefault.visibility
                        break
                    case "dynamicBg":
                        stored = this.chatSettingsDefault.dynamicBg
                        break
                    case "position":
                        stored = this.chatSettingsDefault.position
                        break
                    case "size":
                        stored = this.chatSettingsDefault.size
                        break
                    case "streamerMode":
                        stored = this.chatSettingsDefault.streamerMode
                        break
                    case "sfx":
                        stored = this.chatSettingsDefault.sfx
                        break
                    default:
                        stored = false
                        break
                }
            }
            return stored
        },
        SetSettingValue(name, val) {
            this.chatSettings[name] = val
            localStorage.setItem(name, val);
            this.PlaySound("click.MP3")

        },
        SetResourceName(val){
            this.resourceName = val
        },
        IsNight(val) {
            this.isNight = val
        },
        SetupSuggestionsSwiper() {
            if (!this.suggestionsSwiper) {
                Vue.nextTick(() => {
                    this.suggestionsSwiper = new Swiper(".suggestion-swiper", {
                        speed: 700,
                        slidesPerView: 'auto',
                        spaceBetween: 8,

                    });

                })

            }
        },
        ToggleChat(val) {
            this.stopInterval = false
            if (val) {
                this.$nextTick(() => {

                    this.$refs.messages.scrollTop = this.$refs.messages.scrollHeight;
                    this.$refs.textarea.focus()
                    if (this.showInputTimeout) {
                        clearTimeout(this.showInputTimeout)
                        this.showInputTimeout = false
                    }
                    if (this.newMessageTimeout) {
                        clearTimeout(this.newMessageTimeout)
                        this.newMessageTimeout = false
                    }
                    this.focusTimer = setInterval(() => {
                        if (this.$refs.textarea) {
                            if(!this.showEmoji && !this.stopInterval){
                                this.$refs.textarea.focus()
                            }

                        }
                    }, 100);
                    setTimeout(() => {
                        this.SetupSuggestionsSwiper()
                    }, 200)

                });
            } else {
                this.settingsVisible = false
                clearInterval(this.focusTimer);
            }
            this.show = val
            this.showChatInput = val
            this.message = ''
            this.showEmoji = false
            let visibility = this.GetSettingValue("visibility")

            if(visibility == 'VISIBLE'){
                this.show = true
            }
        },
        Close() {
            if (this.settingsVisible) {
                this.settingsVisible = false
                return
            }
            $.post(`https://${this.resourceName}/close`);

        },
        StartChatTimer() {
            if (this.newMessageTimeout) {
                clearTimeout(this.newMessageTimeout)
                this.newMessageTimeout = false
            }
            this.newMessageTimeout = setTimeout(() => {
                this.show = false
                this.settingsVisible = false

            }, 4000)
        },
        StartInputTimer() {
            if (this.showInputTimeout) {
                clearTimeout(this.showInputTimeout)
                this.showInputTimeout = false
            }

            this.showInputTimeout = setTimeout(() => {
                this.showChatInput = false
            }, 4000)
        },
        closeEmoji() {
            this.showEmoji = false
        },
        colorize(str) {
            function wrapEmojis(txt) {
                var regex = /(?:[\u2700-\u27bf]|(?:\ud83c[\udde6-\uddff]){2}|[\ud800-\udbff][\udc00-\udfff]|[\u0023-\u0039]\ufe0f?\u20e3|\u3299|\u3297|\u303d|\u3030|\u24c2|\ud83c[\udd70-\udd71]|\ud83c[\udd7e-\udd7f]|\ud83c\udd8e|\ud83c[\udd91-\udd9a]|\ud83c[\udde6-\uddff]|[\ud83c[\ude01\uddff]|\ud83c[\ude01-\ude02]|\ud83c\ude1a|\ud83c\ude2f|[\ud83c[\ude32\ude02]|\ud83c\ude1a|\ud83c\ude2f|\ud83c[\ude32-\ude3a]|[\ud83c[\ude50\ude3a]|\ud83c[\ude50-\ude51]|\u203c|\u2049|[\u25aa-\u25ab]|\u25b6|\u25c0|[\u25fb-\u25fe]|\u00a9|\u00ae|\u2122|\u2139|\ud83c\udc04|[\u2600-\u26FF]|\u2b05|\u2b06|\u2b07|\u2b1b|\u2b1c|\u2b50|\u2b55|\u231a|\u231b|\u2328|\u23cf|[\u23e9-\u23f3]|[\u23f8-\u23fa]|\ud83c\udccf|\u2934|\u2935|[\u2190-\u21ff])/g;
                return txt.replace(regex, function (emoji) { return '<span class="emoji">' + emoji + '</span>' });
            }
            let s = "<span>" + colorTrans(str) + "</span>";
            s = wrapEmojis(s)
            const styleDict = {
                '*': 'font-weight: bold;',
                '_': 'text-decoration: underline;',
                '~': 'text-decoration: line-through;',
                '=': 'text-decoration: underline line-through;',
                'r': 'text-decoration: none;font-weight: normal;',
            };

            const styleRegex = /\^(\_|\*|\=|\~|\/|r)(.*?)(?=$|\^r|<\/em>)/;
            while (s.match(styleRegex)) { //Any better solution would be appreciated :P
                s = s.replace(styleRegex, (str, style, inner) => `<em style="${styleDict[style]}">${inner}</em>`)
            }
            return s.replace(/<span[^>]*><\/span[^>]*>/g, '');

            function colorTrans(str) {
                return str
                    .replace(/\^([0-9])/g, (str, color) => `</span><span class="color-${color}">`)
                    .replace(/\^#([0-9A-F]{3,6})/gi, (str, color) => `</span><span class="color" style="color: #${color}">`)
                    .replace(/~([a-z])~/g, (str, color) => `</span><span class="gameColor-${color}">`);
            }
        },




        OnNewMessage(message) {

            if (this.chatSettings.visibility == 'ON_INPUT') {
                if (!this.show) {
                    // this.showChatInput = true
                    this.show = true
                    // this.StartInputTimer()
                    this.StartChatTimer()
                }
            }
            for (let i = 0; i < message.args.length; i++) {
                message.args[i] = this.colorize(message.args[i]);
                if (this.chatSettings.streamerMode == 'true') {
                    message.args[i] = this.filterWords(message.args[i], this.blacklistedWords);
                }

            }
            this.chatMessages.push(message)
            this.$nextTick(() => {
                this.$refs.messages.scrollTop = this.$refs.messages.scrollHeight;
            });
        },
        SetTags(val) {
            this.tags = val
        },
        OnSuggestionAdd(suggestion) {
            this.removedSuggestions = this.removedSuggestions.filter(a => a !== suggestion.name);
            const duplicateSuggestion = this.backingSuggestions.find(
                a => a.name == suggestion.name
            );
            if (duplicateSuggestion) {
                if (suggestion.help || suggestion.params) {
                    duplicateSuggestion.help = suggestion.help || "";
                    duplicateSuggestion.params = suggestion.params || [];
                }
                return;
            }
            if (!suggestion.params) {
                suggestion.params = []; //TODO Move somewhere else
            }
            this.backingSuggestions.push(suggestion);

        },
        OnSuggestionRemove(name) {
            if (this.removedSuggestions.indexOf(name) <= -1) {
                this.removedSuggestions.push(name);

            }
        },

        Send() {
            let visibility = this.GetSettingValue("visibility")
            this.stopInterval = true
            if (this.message !== "") {
                $.post(`https://${this.resourceName}/chatResult`, JSON.stringify({ message: this.message, channel: this.currentChatTab }));
                this.oldMessages.unshift(this.message);
                this.oldMessagesIndex = -1;
                this.message = ''
                this.showEmoji = false
                this.PlaySound('click.MP3')
                this.Close()
            }else{
                if(visibility != 'VISIBLE'){
                    this.Close()
                }

            }
            if(visibility == 'VISIBLE'){
                return
            }
            this.StartInputTimer()
            this.StartChatTimer()
        },
        SaveSize() {
            this.SetSettingValue('size', this.chatSettings.size)
        },

        ToggleCustomChatTab(data) {
            if (data.show) {
                this.chatTabs[data.name] = data.label
            } else {
                delete this.chatTabs[data.name]
            }
        },
        SetCurrentTabKey(key, index) {
            this.currentChatTab = key
            this.currentChatTabIndex = index
            this.$nextTick(() => {
                this.$refs.messages.scrollTop = this.$refs.messages.scrollHeight;
                if(key == 'server'){
                    this.message = ''
                    this.showEmoji = false
                }
            })

        },
        ClearChat() {
            this.chatMessages = []
            this.oldMessages = [];
            this.oldMessagesIndex = -1;
        },
        OnInput(e) {
            if (this.writingTimer != undefined) {
                clearTimeout(this.writingTimer)
            }



            this.writingTimer = setTimeout(() => {
                if (this.message.startsWith('/')) {

                    this.suggestionsSwiper.update()
                    this.suggestionsSwiper.slideToLoop(0, 500)
                }
                this.writingTimer = undefined
            }, 350)
        },
        moveOldMessageIndex(up) {
            if (up && this.oldMessages.length > this.oldMessagesIndex + 1) {
                this.oldMessagesIndex += 1;
                this.message = this.oldMessages[this.oldMessagesIndex];
            } else if (!up && this.oldMessagesIndex - 1 >= 0) {
                this.oldMessagesIndex -= 1;
                this.message = this.oldMessages[this.oldMessagesIndex];
            } else if (!up && this.oldMessagesIndex - 1 === -1) {
                this.oldMessagesIndex = -1;
                this.message = "";
            }
        },
    },
    watch: {
        message(newVal, oldVal) {
            this.autofillText = this.currentSuggestions.filter((e) => {
                return e.name.match(newVal)
            })
        },
    },
    created() {
        this.keyHandler = (e) => {
            if (e.which == 33) {
                var buf = document.getElementsByClassName("chat-messages")[0];
                buf.scrollTop = buf.scrollTop - 100;
            } else if (e.which == 34) {
                var buf = document.getElementsByClassName("chat-messages")[0];
                buf.scrollTop = buf.scrollTop + 100;
            } else if (e.which === 38 || e.which === 40) {
                e.preventDefault();
                this.moveOldMessageIndex(e.which === 38);
            } else if (e.which == 27) {
                this.Close()
            } else if (e.which == 112) {
                $.post(`https://${this.resourceName}/toggleCursor`);

            } else if (e.which == 9) {
                if (this.autofillText[0] && this.autofillText[0].name) {
                    this.message = this.autofillText[0].name
                    this.autofillText = false
                } else {
                    const newIndex = this.currentChatTabIndex + 1
                    if (newIndex >= Object.keys(this.chatTabs).length) {
                        for (const key in this.chatTabs) {
                            this.SetCurrentTabKey(key, 0)
                            break
                        }
                    } else {
                        let index = 0

                        for (const key in this.chatTabs) {
                            if (index == newIndex) {
                                this.SetCurrentTabKey(key, newIndex)
                                break
                            }
                            index++

                        }
                    }
                }

                e.preventDefault()
            }
        }


        window.addEventListener('keyup', this.keyHandler);
    },
    beforeDestroy() {
        window.removeEventListener('keyup', this.keyHandler);
    },
    computed: {
        SendButton() {
            const styledButtons = ["do", "me", "ooc", "pm"]
            return styledButtons.indexOf(this.currentChatTab) == -1 ? 'default' : this.currentChatTab
        },
        currentSuggestions() {
            if (this.message === '') {

                return [];
            }
            const currentSuggestions = this.suggestions.filter((s) => {
                if (!s.name.startsWith(this.message)) {
                    const suggestionSplitted = s.name.split(' ');
                    const messageSplitted = this.message.split(' ');
                    for (let i = 0; i < messageSplitted.length; i += 1) {
                        if (i >= suggestionSplitted.length) {
                            return i < suggestionSplitted.length + s.params.length;
                        }
                        if (suggestionSplitted[i] !== messageSplitted[i]) {
                            return false;
                        }
                    }
                }
                return true;
            }).slice(0, 10);

            currentSuggestions.forEach((s) => {
                // eslint-disable-next-line no-param-reassign
                s.disabled = !s.name.startsWith(this.message);

                s.params.forEach((p, index) => {
                    const wType = (index === s.params.length - 1) ? '.' : '\\S';
                    const regex = new RegExp(`${s.name} (?:\\w+ ){${index}}(?:${wType}*)$`, 'g');

                    // eslint-disable-next-line no-param-reassign
                    // @ts-ignore
                    p.disabled = this.message.match(regex) == null;
                });
            });

            return currentSuggestions;
        },
        suggestions() {
            return this.backingSuggestions.filter(
                el => this.removedSuggestions.indexOf(el.name) <= -1
            );
        },

    },
    mounted() {

        const emojiSelect = (e) => {
            this.message += e.native
        }
        const pickerOptions = { onEmojiSelect: emojiSelect }
        const picker = new EmojiMart.Picker(pickerOptions)

        this.$refs.emoji.appendChild(picker)

        this.$nextTick(() => {
            this.$refs.messages.scrollTop = this.$refs.messages.scrollHeight;
        });
        $("#app > div > div.chat-input-container > div.chat-input > div:nth-child(1) > textarea").on("focus", function() {if (this.value.length === 0) {this.value = "/"}})
        $("#app > div > div.chat-input-container > div.chat-input > div:nth-child(1) > textarea").on("keypress", function(e,a){
            if (e.charCode === 47) {
                
                    if (this.value[0] === "/") {
                        e.preventDefault()
                    }
                
            }
        })


        let position = this.GetSettingValue("position")
        let visibility = this.GetSettingValue("visibility")
        let dynamicBg = this.GetSettingValue("dynamicBg")
        let streamerMode = this.GetSettingValue("streamerMode")
        let size = this.GetSettingValue("size")
        let sfx = this.GetSettingValue("sfx")

        this.chatSettings = {
            position,
            visibility,
            dynamicBg,
            streamerMode,
            size,
            sfx
        }
        if(visibility == 'VISIBLE'){
            this.show = true
        }
        window.addEventListener('message', (event) => {
            switch (event.data.action) {
                case "TOGGLE_CHAT":
                    this.ToggleChat(event.data.payload)
                    break;
                case "PLAY_TAG_SOUND":
                    this.PlaySound('tag.wav')
                    break
                case "CHAT_LOADED":
                    $.post(`https://${event.data.payload}/loaded`);
                    this.SetResourceName(event.data.payload)
                    break
                case "ON_MESSAGE":

                    this.OnNewMessage(event.data.payload)
                    break
                case "SET_LOGO":
                    this.SetLogo(event.data.payload)
                    break
                case "ON_SUGGESTION_ADD":
                    this.OnSuggestionAdd(event.data.payload)
                    break
                case "ON_SUGGESTION_REMOVE":
                    this.OnSuggestionRemove(event.data.payload)
                    break
                case "ON_CLEAR":
                    this.ClearChat()
                    break
                case "IS_NIGHT":
                    this.IsNight(event.data.payload)
                    break
                case "SET_TAGS":
                    this.SetTags(event.data.payload)
                    break
                case "TOGGLE_CUSTOM_CHAT_TAB":
                    this.ToggleCustomChatTab(event.data.payload)
                    break
                case "SHOW_ID":
                    this.ShowID(event.data.payload)
                    break
                case "SET_BLACKLISTEDWORDS":
                    this.SetBlacklistedWords(event.data.payload);
                    break;
                default:
                    break;
            }
        });
    }
})
