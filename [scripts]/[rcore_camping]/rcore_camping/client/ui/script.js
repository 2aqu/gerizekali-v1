function close() {
    $.post('https://rcore_camping/close', JSON.stringify({}))
}

var app = new Vue({
    el: '#app',
    data: {
        visible: false,
        menu: {},
        progbar: false,
        progbarTime: 0,
        progbarTimeCurrent: null,
        progbarPercent: 100,
        currentTimer: null,
    },
    methods: {
        onClick: function (itemName) {
            $.post('https://rcore_camping/click', JSON.stringify({
                item: itemName
            }), (data) => {
                app.visible = false;
                close();
            });
        }
    },
    computed: {}
});

$(document).ready(function () {
    window.addEventListener('message', function (event) {
        if (event.data.menu) {
            if (event.data.action == 'turnoff') {
                app.menu = {};
                app.visible = false;
            }

            if (event.data.action == 'turnon') {
                app.menu = event.data.menu;
                app.visible = true;
            }
        }

        if(event.data.action == 'progbar'){
            app.progbar = true;
            app.progbarTime = event.data.time;
            app.progbarTimeCurrent = event.data.time;
            app.progbarPercent = 100

            if(app.currentTimer !== null) {
                clearInterval(app.currentTimer)
            }

            app.currentTimer = setInterval(() => {
                if(app.progbar) {
                    if((app.progbarTimeCurrent-250) <= 0) {
                        app.progbar = false;
                        app.progbarTimeCurrent = null;
                        $.post('https://rcore_camping/progbarDone')

                        console.log('Progress bar is done')
                    }

                    var progbar1Percent = (app.progbarTime/100)
                    app.progbarTimeCurrent = app.progbarTimeCurrent - 250;
                    app.progbarPercent = app.progbarTimeCurrent / progbar1Percent;
                }
            }, 250)
        }
    });

    var closeKeys = [27, 8];

    $(document.body).bind("keyup", function (key) {
        if (closeKeys.includes(key.which)) {

            close()
        }
    });

});
