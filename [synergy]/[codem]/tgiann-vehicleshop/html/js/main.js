let carData = {}
let lastRemove = ""
let selectedCar = {}
let inSuleyman = false
let notifActive = false
let dealerBuyPercentage = 0

window.addEventListener('message', (event) => {
    if (event.data.type === 'open') {
        inSuleyman = event.data.suleyman
        $(".test-menu-money").html(event.data.testCarPrice+"$ ("+event.data.testCarTime+" Second Test Drive)")
        testCarTime = 
        menuOpen(event.data.carData)
    } else if (event.data.type === 'notif') { 
        if (!notifActive) {
            notifActive = true
            $("#notif").html(event.data.text)
            $( "#notif" ).animate({
                left: "0",
            }, 300, function() {
                setTimeout(() => {
                    $( "#notif" ).animate({
                        left: "-50%",
                    }, 300, function() {
                        notifActive = false
                    });
                }, 3500);
            });
        }
    }
});

document.addEventListener('mousedown', function(e) {
    if (e.button === 2) {
        $(".rightClickNone").css("opacity", "0.0")
        $.post('https://tgiann-vehicleshop/rightClick', JSON.stringify({}), function() {
            $(".rightClickNone").css("opacity", "1.0")
        });
    }
});

function menuOpen(newCarData) {
    carData = {}
    Object.keys(newCarData).forEach(function(element) {
        carData[element] = []
        Object.keys(newCarData[element]).forEach(function(carD) {
            const data = newCarData[element][carD]
            carData[element].push({carName: data.name, price: data.price, carModel: data.model, class: element, count: data.count})
        });
    });

    let topMenuButton = ""
    $(".car-slider").html("")
    let first = true
    Object.keys(carData).forEach(function(element) {

        if (first) {
            topMenuButton = topMenuButton + `
                <div class="top-menu-button topMenuFontSize" id="topMenu${element.replace(/\s/g, '')}">${element}</div>
            `
            lastRemove = element.replace(/\s/g, '')
            carSliderContent = `<div class="car-slider-2" id=${element.replace(/\s/g, '')}>`
            setCarInfo(carData[element][0])
        } else {
            topMenuButton = topMenuButton + `
                <div class="top-menu-button" id="topMenu${element.replace(/\s/g, '')}">${element}</div>
            `
            carSliderContent = `<div class="car-slider-2 displayNone" id=${element.replace(/\s/g, '')}>`
        }

        for (let index = 0; index < carData[element].length; index++) {
            const xelement = carData[element][index];
            if (xelement.count > 0) {
                carSliderContent = carSliderContent + `
                    <div class="car-slider-content" style="background-image: url(img/${xelement.carModel}.png);" data-id="${index}" data-class="${element}">
                        ${xelement.carName}
                    </div>   
                `
            } else {
                carSliderContent = carSliderContent + `
                    <div class="car-slider-content" style="background-image: url(img/${xelement.carModel}.png);" data-id="${index}" data-class="${element}">
                        ${xelement.carName}
                    </div>   
                `
            }
           
            if (first) {
                first = false
                selectedCar = carData[element][index]
            }
        }

        carSliderContent = carSliderContent + "</div>"
        $( ".car-slider").append(carSliderContent);
        setSliderData(element.replace(/\s/g, ''))
    });
    $(".top-menu").html(topMenuButton)
    $(".main").css("display", "flex")
};

$(document).on("click",".top-menu-button", function(e) {
    let id = $(this).html().replace(/\s/g, '')
    if (id != lastRemove) {
        $("#"+id).removeClass("displayNone")
        $("#"+lastRemove).addClass("displayNone")

        $("#topMenu"+id).addClass("topMenuFontSize")
        $("#topMenu"+lastRemove).removeClass("topMenuFontSize")
        lastRemove = id
        selectedCar = carData[$(this).html()][$('#'+id+ ' .slick-current').attr("data-slick-index") || 0]
        setCarInfo(selectedCar)
    }
});

function setSliderData(className) {
    $('#'+ className).slick({
        dots: false,
        infinite: false,
        variableWidth: true,
        centerMode: true,
        arrows: false,
        draggable: false,
        focusOnSelect: true,
        initialSlide: 3,
        draggable: false,
    });
}

$('.car-slider').on('afterChange', function(event, slick, currentSlide){
    selectedCar = carData[$(slick.$slides.get(currentSlide)).data("class")][$(slick.$slides.get(currentSlide)).data("id")]
    setCarInfo(selectedCar)   
});

function setCarInfo(data) {
    $(".buy-menu").css("display", "none")
    $(".test-menu").css("display", "none")
    $.post('https://tgiann-vehicleshop/getCarDataAndSpawnCar', JSON.stringify({model: data.carModel}), function(cbData) {
        if (inSuleyman) {
            $("#npcPriceMenu").css("display", "flex")
            $("#dealerPriceMenu").css("display", "none")
            $("#vehPrice").html(setCurrency(data.price))
        } else {
            $("#npcPriceMenu").css("display", "none")
            $("#dealerPriceMenu").css("display", "block")
            dealerBuyPercentage = cbData.dealerBuyPercentage
            $("#vehBuyPrice").html(setCurrency(Math.round(data.price*dealerBuyPercentage)))
            $("#vehSellPrice").html(setCurrency(data.price))
        }
        $("#box-speed-bar").css("width", cbData.topspeed+"%")
        $("#box-handling-bar").css("width", cbData.handling+"%")
        $("#box-braking-bar").css("width", cbData.braking+"%")
        $("#box-accel-bar").css("width", cbData.accel+"%")
    });
    if (data.count > 0) {
        $(".car-buy-button").html("Buy Car")
    } else {
        $(".car-buy-button").html("Out of Stock")
    }
}

$(document).on("click","#close", function() {
    closeMenu(false)
});

function closeMenu(buy, test) {
    $.post('https://tgiann-vehicleshop/closeMenu', JSON.stringify({buy: buy, test:test}));
    $(".main").fadeOut(500)
};

// Buy Button
$(document).on("click",".car-buy-button", function() {
    if (inSuleyman) {
        $(".buy-menu-money").html(setCurrency(selectedCar.price)) 
    } else {
        $(".buy-menu-money").html(setCurrency(Math.round(selectedCar.price)*dealerBuyPercentage)) 
    }
    $(".buy-menu").css("display", "flex")
});

$(document).on("click","#buy-menu-cancel", function() {
    $(".buy-menu").css("display", "none")
});

$(document).on("click","#buy-menu-accept", function() {
    $.post('https://tgiann-vehicleshop/buyCar', JSON.stringify({selectedCar}), function() {
        closeMenu(true)
    });
});

// Test Button
$(document).on("click",".car-test-button", function() {
    $(".test-menu").css("display", "flex")
});

$(document).on("click","#test-menu-cancel", function() {
    $(".test-menu").css("display", "none")
});

$(document).on("click","#test-menu-accept", function() {
    $.post('https://tgiann-vehicleshop/testCar', JSON.stringify({selectedCar}), function() {
        closeMenu(false, true)
    });
});

function setCurrency(price) {
    return (price).toLocaleString('tr-TR', {style: 'currency',currency: 'USD', maximumFractionDigits: 0, minimumFractionDigits: 0})
}

$(document).on("click",".color-box", function(e) {
    $.post('https://tgiann-vehicleshop/carColor', JSON.stringify({id: $(this).data("id")}));
});

document.onkeyup = function(data) {
    if(data.which == 27) {
        closeMenu(false)
    }
};