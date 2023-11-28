var marketsayi = 0;
var marketler = {};
var items = {};
var basketitems = {};
var manageitems = {};
var marketdata = {};
var selx = 0;
var extendx = 0;
var Lang = {};

window.addEventListener('message', function(event) {
    let data = event.data
    switch(data.action){
        case 'SetLangEtc':
            selx = data.sellpercantage;
            extendx = data.extendpercentange;
            Lang = data.Lang;
        break;
        case 'OpenWhoSaller':
            basketitems = {};
            items = data.items;
            $('body').fadeIn(500);
            $(".ShopScreenWholeSaler").fadeIn(500);
            $(".whosalleritems").empty();
            $(".whosallerbasket").empty();
            document.getElementById("whosallertotalprice").textContent = 0 + "$";
            var Items = "";
            for (var i = 0; i < Object.entries(items).length; i++) {
                $(document).off('click', '[id^="sepeteat"]');
                $(document).off('click', '[id^="increasebutton"]');
                $(document).off('click', '[id^="decreasebutton"]');
                $(document).off('change', '[id^="input"]');
                var element = items[i]
                Items += `
                <div id="${element.label}" style="width: 22.7%; height: 28%; display: flex; align-items: center; justify-content: flex-start; flex-direction: column;">
                    <div style="width: 100%; height: 76%; border-radius: 0.3vw; border: 0.15vw solid #454545; background: radial-gradient(70.12% 70.12% at 50% 50%, rgba(255, 255, 255, 0.00) 0%, rgba(11, 10, 14, 0.10) 100%);">
                    <div style="display: flex; align-items: center; justify-content: flex-start; flex-direction: row; width: 100%; height: 100%; background-image: url(./img/whosellerinsidegray.png); background-position: center; background-size: 100% 100%; background-repeat: no-repeat;">
                        <div style="background-image: url(./img/items/${element.itemname}.png); background-position: center; background-size: 100% auto; background-repeat: no-repeat; width: 35%; height: 70%;"></div>
                        <div style="width: 65%; height: 80%; display: flex; align-items: center; justify-content: flex-start; flex-direction: column;">
                        <div style="width: 100%; height: 20%;"></div>
                        <div class="whosalerlabelgray" style="width: 80%; height: 25%; display: flex; align-items: center; justify-content: flex-start;">${element.label}</div>
                        <div style="width: 100%; height: 13%;"></div>
                        <div style="width: 100%; height: 18%; display: flex; align-items: center; justify-content: flex-start; flex-direction: row;">
                            <div style="width: 12%; height: 100%;"></div>
                            <div style="width: 10%; height: 100%; background-image: url(./img/dolaricongray.png); background-size: auto 100%; background-position: center; background-repeat: no-repeat;"></div>
                            <div class="whosalerprice gray" style="width: 30%; height: 100%; display: flex; align-items: center; justify-content: flex-start;">${element.price}</div>
                        </div>
                        </div>
                    </div>
                    </div>
                    <div style="width: 10%; height: 7%;"></div>
                    <div style="width: 100%; height: 20%; display: flex; align-items: center; justify-content: flex-start; flex-direction: row;">
                    <div id="sepeteat${i}" class="buyitemtext" style="width: 100%; height: 100%; border-radius: 0px 0px 0.081vw 0.081vw; background: #B0B0B0; display: flex; align-items: center; justify-content: center;">BUY ITEM</div>
                    </div>
                </div>
                `;
            }
            $(".whosalleritems").html(Items);
        break;
        case 'OpenItemManagement':
            $(".ItemManagement").fadeIn(500);
            $(".itemmanage").empty();
            manageitems = data.items;
            marketdata = data.marketdata;
            document.getElementById("changeshopname").textContent = marketdata.marketname;
            document.getElementById("changeshopname2").textContent = marketdata.marketname;
            document.getElementById("changeshopname3").textContent = marketdata.marketname;
            document.getElementById("changeshopname4").textContent = marketdata.marketname;
            var Items = "";
            for (var itemname in manageitems) {
                var element = manageitems[itemname];
                Items += `
                <div style="display: flex; align-items: center; justify-content: flex-start; flex-direction: row; background-image: url(./img/manageitemsinside.png); background-repeat: no-repeat; background-position: center; background-size: 100% 100%; width: 30.2%; height: 14.3%; border-radius: 0.057vw; border: 0.065vw solid #3C3C3C;">
                    <div style="width: 13%; height: 100%; background-image: url(./img/items/${element.itemname}.png); background-position: center; background-repeat: no-repeat; background-size: auto 70%;"></div>
                    <div style="width: 2.5%; height: 10%;"></div>
                    <div style="width: 34%; height: 70%; display: flex; align-items: center; justify-content: flex-start; flex-direction: column;">
                    <div class="manageitemtext" style="width: 100%; height: 50%; display: flex; align-items: center; justify-content: flex-start;">${element.label}</div>
                    <div style="width: 100%; height: 50%; display: flex; align-items: center; justify-content: flex-start; flex-direction: row;">
                        <div style="width: 15%; height: 10%;"></div>
                        <div id="stock${element.itemname}" class="manageitemstock" style="width: 85; height: 100%; display: flex; align-items: center; justify-content: flex-start;">${element.stock}</div>
                    </div>
                    </div>
                    <div style="width: 1.5%; height: 10%;"></div>
                    <div style="width: 30%; height: 65%;">
                    <div style="width: 100%; height: 50%; display: flex; align-items: center; justify-content: center;">
                        <input
                        id="manageitemprice${element.itemname}"
                        type="text"
                        class="manageitem-input"
                        placeholder="$${element.price}"
                        />
                    </div>
                    <div style="width: 100%; height: 50%; display: flex; align-items: center; justify-content: center;">
                        <input
                        id="manageitemstock${element.itemname}"
                        type="text"
                        class="manageitem-input"
                        placeholder="${element.stock}"
                        />
                    </div>
                    </div>
                    <div style="width: 1%; height: 10%;"></div>
                    <div id="manageitemsdelete${element.itemname}" class="manageitemsdelete btn-delete" style="background: #FF3030; width: 16%; height: 62%; display: flex; align-items: center; justify-content: center;">DELETE</div>
                </div>
                `;
            }
            
            $(".itemmanage").html(Items);

            $(".btn-delete").click(function () {
                $(this).parent().remove(); // Tıklanan düğmenin üstündeki div elementini sil
                var itemname = this.id.replace("manageitemsdelete", ""); // Tıklanan düğmenin ID'sinden öğe adını alın
                $.post("https://arob-shops/RemoveItemStock", JSON.stringify({item: itemname}));
                notify(Lang["remove_stock"])
            });
            
            // Timeout süresi (örneğin, 1000 ms = 1 saniye)
            var timeoutDuration = 500;

            // manageitemprice inputlarını seçerek her birine bir event listener ekleyelim.
            document.querySelectorAll('.manageitem-input[type="text"][id^="manageitemprice"]').forEach(function(input) {
                var timeout;

                input.addEventListener("input", function(event) {
                    clearTimeout(timeout); // Önceki timeout'u temizle

                    // Yeni bir timeout başlat
                    timeout = setTimeout(function() {
                        var itemname = event.target.id.replace("manageitemprice", "");
                        var price = event.target.value;

                        if (price < 0) {
                            event.target.value = 0;
                            notify(Lang["negative_number"]);
                            price = 0;
                        } else {
                            $.post("https://arob-shops/ChangeItemPrice", JSON.stringify({item: itemname, newprice: price}));
                            notify(Lang["price_changed"]);
                        }
                    }, timeoutDuration);
                });
            });

            // manageitemstock inputlarını seçerek her birine bir event listener ekleyelim.
            document.querySelectorAll('.manageitem-input[type="text"][id^="manageitemstock"]').forEach(function(input) {
                var timeout;

                input.addEventListener("input", function(event) {
                    clearTimeout(timeout); // Önceki timeout'u temizle

                    // Yeni bir timeout başlat
                    timeout = setTimeout(function() {
                        var itemname = event.target.id.replace("manageitemstock", "");
                        var amount = event.target.value;
                        var maxamount = event.target.placeholder;

                        if (amount < 1) {
                            event.target.value = "";
                            notify(Lang["negative_number"]);
                            amount = 0;
                            return;
                        } else {
                            if (amount <= Number(maxamount)) {
                                $.post("https://arob-shops/GetStockBack", JSON.stringify({item: itemname, amount: amount}));
                                notify(Lang["turn_back_item"] + amount);
                                event.target.placeholder = maxamount - amount;
                                event.target.value = "";
                                document.getElementById("stock" + itemname).textContent = maxamount - amount;
                            } else {
                                notify(Lang["no_stock"]);
                                event.target.value = "";
                                amount = maxamount;
                            }
                        }
                    }, timeoutDuration);
                });
            });
        break;
        case 'OpenDashBoard':
            $(".dashboarditems").empty();
            $(".workersbox").empty();
            $(".Dashboard").fadeIn(500);
            
            manageitems = data.items;
            marketdata = data.marketdata;
            workers = marketdata.workers;
            document.getElementById("changeshopname").textContent = marketdata.marketname;
            document.getElementById("changeshopname2").textContent = marketdata.marketname;
            document.getElementById("changeshopname3").textContent = marketdata.marketname;
            document.getElementById("changeshopname4").textContent = marketdata.marketname;
            document.getElementById("remainingtime").textContent = marketdata.remainingtime;
            document.getElementById("totalemployess").textContent = marketdata.workersamount;
            document.getElementById("marketname").textContent = marketdata.marketname;
            document.getElementById("marketowner").textContent = marketdata.marketowner;
            document.getElementById("totalearn").textContent = marketdata.totalearn + " $";
            
            var inputmoneyaq = document.getElementById("input-money-wd");
            inputmoneyaq.placeholder = marketdata.money + "$";
            
            inputmoneyaq.addEventListener("input", function() {
                var inputValue = inputmoneyaq.value;
                if (inputValue < 0) {
                    notify(Lang["negative_number"]);
                    inputmoneyaq.value = 0;
                }
            });
            var Items = "";
            for (var itemname in manageitems) {
                var element = manageitems[itemname];
            
                Items += `
                    <div style="flex-shrink: 0; border-radius: 0.057vw; border: 0.065vw solid #3C3C3C; background: radial-gradient(70.12% 70.12% at 50% 50%, rgba(255, 255, 255, 0.00) 0%, rgba(11, 10, 14, 0.10) 100%); width: 100%; height: 19.7%; background-image: url(./img/dashboarditems.png); background-position: center; background-size: 100% 100%; background-repeat: no-repeat; display: flex; align-items: center; justify-content: flex-start; flex-direction: row;">
                        <div style="width: 16%; height: 80%; background-image: url(./img/items/${itemname}.png); background-position: center; background-size: auto 100%; background-repeat: no-repeat;"></div>
                        <div style="width: 30%; height: 70%; display: flex; flex-direction: column;">
                            <div class="dashboarditemname" style="width: 100%; height: 45%;">${element.label}</div>
                            <div style="width: 100%; height: 11%; "></div>
                            <div style="width: 100%; height: 37%; display: flex; flex-direction: row;">
                                <div style="width: 17%; height: 100%;"></div>
                                <div class="dashboarditemcount" style="width: 83%; height: 100%;">${element.count}</div>
                            </div>
                        </div>
                        <div style="width: 5%; height: 10%;"></div>
                        <div style="width: 30.2%; height: 63%;; display: flex; flex-direction: column;">
                            <div style="width: 100%; height: 50%; display: flex; align-items: center; justify-content: center;">
                                <input
                                    id="inputstock${itemname}"
                                    type="number"
                                    class="dashboard-price-input"
                                    placeholder="SET A PRICE"
                                />
                            </div>
                            <div style="width: 100%; height: 50%; display: flex; align-items: center; justify-content: center;">
                                <input
                                    id="inputprice${itemname}"
                                    type="number"
                                    class="dashboard-stock-input"
                                    placeholder="SET A STOCK"
                                />
                            </div>
                        </div>
                        <div style="width: 0.5%; height: 10%;"></div>
                        <div id="additemstock${itemname}" class="dashboardadditembutton" style="width: 15.8%; height: 63%; background: #FFEA30; display: flex; align-items: center; justify-content: center;">ADD ITEM</div>
                    </div>
                `;
            }
            $(".dashboarditems").html(Items);
            for (var itemname in manageitems) {
                (function(itemname) {
                    var element = manageitems[itemname];
                    var button = "#additemstock" + itemname;
            
                    $(button).click(function () {
                        var label = element.label;
                        var price = document.getElementById("inputstock" + itemname).value;
                        var stock = document.getElementById("inputprice" + itemname).value;
            
                        if (price < 1) {
                            notify(Lang["enter_price"]);
                            return;
                        }
                        if (stock < 1) {
                            notify(Lang["enter_stock"]);
                            return;
                        }
                        $(this).parent().remove();
                        notify(Lang["stock_added"])
                        $.post("https://arob-shops/AddStockForShop", JSON.stringify({item: itemname, stock: stock, price: price, label: label}));
                    });
            
                    var inputElement = document.getElementById("inputstock" + itemname);
                    (function(inputElement, element) {
                        inputElement.addEventListener("input", function() {
                            var inputValue = inputElement.value;
                            if (inputValue < 0) {
                                notify(Lang["negative_number"]);
                                inputElement.value = 0;
                            }
                            if (inputValue > Number(element.count)) {
                                inputValue = Number(element.count);
                                notify(Lang["max_stock"] + element.count);
                            }
                            inputElement.value = inputValue; // Girilen değeri güncelle
                        });
                    })(document.getElementById("inputprice" + itemname), element);
                })(itemname);
            }

            var Workers = "";
            for (var itemname in workers) {
                var element = workers[itemname];
                if (element.photo) {
                    Workers += `
                    <div style="flex-shrink: 0; display: flex; align-items: center; justify-content: flex-start; flex-direction: row; width: 100%; height: 21%; background-image: url(./img/dashboardworkerbg.png); background-position: center; background-repeat: no-repeat; background-size: 100% 100%; border-radius: 0.062vw; border: 0.07vw solid #3C3C3C;">
                        <div style="width: 2.3%; height: 10%;"></div>
                        <div id="photoaq${itemname}" class="photoaq${itemname}" style="width: 13.8%; height: 75%; background-image: url(${element.photo}); background-position: center; background-repeat: no-repeat; background-size: 100% auto;"></div>
                        <div style="width: 2.9%; height: 10%;"></div>
                        <div style="width: 28.9%; height: 60%;display: flex; flex-direction: column;">
                          <div style="width: 100%; height: 10%;"></div>
                          <div class="workername" style="width: 100%; height: 40%;display: flex; align-items: center; justify-content: flex-start;">${element.name}</div>
                          <div style="width: 100%; height: 5%;"></div>
                          <div class="workerrank" style="width: 100%; height: 30%;display: flex; align-items: flex-start; justify-content: flex-start;">WORKER</div>
                        </div>
                        <div class="dashboardpermbuttonstext fire-btn" data-token="${itemname}" style="width: 50.2%; height: 65%; background: #FF3131; display: flex; align-items: center; justify-content: center;">FIRE <br/> PERSON</div>
                      </div>
                    `;
                } else {
                    Workers += `
                    <div style="flex-shrink: 0; display: flex; align-items: center; justify-content: flex-start; flex-direction: row; width: 100%; height: 21%; background-image: url(./img/dashboardworkerbg.png); background-position: center; background-repeat: no-repeat; background-size: 100% 100%; border-radius: 0.062vw; border: 0.07vw solid #3C3C3C;">
                        <div style="width: 2.3%; height: 10%;"></div>
                        <div id="photoaq${itemname}" class="photoaq${itemname}" style="width: 13.8%; height: 75%; background-image: url(./img/pp.png); background-position: center; background-repeat: no-repeat; background-size: 100% auto;"></div>
                        <div style="width: 2.9%; height: 10%;"></div>
                        <div style="width: 28.9%; height: 60%;display: flex; flex-direction: column;">
                          <div style="width: 100%; height: 10%;"></div>
                          <div class="workername" style="width: 100%; height: 40%;display: flex; align-items: center; justify-content: flex-start;">${element.name}</div>
                          <div style="width: 100%; height: 5%;"></div>
                          <div class="workerrank" style="width: 100%; height: 30%;display: flex; align-items: flex-start; justify-content: flex-start;">WORKER</div>
                        </div>
                        <div class="dashboardpermbuttonstext fire-btn" data-token="${itemname}" style="width: 50.2%; height: 65%; background: #FF3131; display: flex; align-items: center; justify-content: center;">FIRE <br/> PERSON</div>
                      </div>
                    `;
                }
            }
            $(".workersbox").html(Workers);

            $(".fire-btn").click(function () {
                $(this).parent().remove(); // Tıklanan düğmenin üstündeki div elementini sil
                var identifier = $(this).data("token");
                $.post("https://arob-shops/FirePerson", JSON.stringify({identifier: identifier}));
                notify(Lang["fired_person"])
            });

        break;
        case 'OpenMarket':
            basketitems = {}
            $('body').fadeIn(500);
            $(".ShopScreenNormal").fadeIn(500);
            $(".normalitems").empty();
            $(".normalsepet").empty();
            document.getElementById("totalpricenumberyellow").textContent = "$" + 0
            document.getElementById("totalpricenumberyellow2").textContent = "$" + 0
            
            document.getElementById("changeshopname").textContent = data.MarketName;
            document.getElementById("changeshopname2").textContent = data.MarketName;
            document.getElementById("changeshopname3").textContent = data.MarketName;
            document.getElementById("changeshopname4").textContent = data.MarketName;

            items = data.Items
            Items = "";
            for (var i = 0; i < Object.entries(data.Items).length; i++) {
                var element = data.Items[i]
                if (element.stock > 0) {
                    Items += `
                    <div id="changestyle${i}" class="searchnormalitem" style="flex-direction: column; display: flex; align-items: center; justify-content: flex-start; width: 15%; height: 36%; border-radius: 0.081vw; border: 0.092vw solid #242226; background-image: url(./img/itembox.png); background-position: center; background-repeat: no-repeat; background-clip: 100% auto;">
                        <div style="width: 60%; height: 55%; background-image: url(./img/items/${element.itemname}.png); background-position: center; background-size: auto 100%; background-repeat: no-repeat;"></div>
                        <div class="itemname" style="width: 100%; height: 13%; display: flex; align-items: center; justify-content: center;">${element.label}</div>
                        <div style="width: 100%; height: 15%; display: flex; align-items: center; justify-content: flex-start; flex-direction: row;">
                        <div style="width: 22%; height: 10%;"></div>
                        <div style="width: 10%; height: 50%; background-image: url(./img/boxgray.png); background-repeat: no-repeat; background-position: center; background-size: 75% 75%;"></div>
                        <div style="width: 2%;"></div>
                        <div class="itemamounttext" style="width: 18%; height: 50%; display: flex; align-items: center; justify-content: flex-start;">${element.stock}</div>
                        <div style="width: 5%; height: 50%; background-image: url(./img/dolaricongray.png); background-position: center; background-repeat: no-repeat; background-size: 100% 100%;"></div>
                        <div style="width: 4%; height: 5%;"></div>
                        <div class="itempricetext" style="width: 30%; height: 50%; display: flex; align-items: center; justify-content: flex-start;">${element.price}</div>
                        </div>
                        <div style="width: 10%; height: 3.3%;"></div>
                        <div id="sepeteat${i}" data-token="changestyle${i}" data-sira="${i}" class="stocktext" style="width: 100%; height: 13.7%; border-radius: 0px 0px 0.081vw 0.081vw; background: #A4A4A4; display: flex; align-items: center; justify-content: center;">BUY ITEM</div>
                    </div>
                    `;
                } else {
                    Items += `
                    <div class="searchnormalitem" style="flex-direction: column; display: flex; align-items: center; justify-content: flex-start; width: 15%; height: 36%; border-radius: 0.081vw; border: 0.092vw solid #242226; background-image: url(./img/itembox.png); background-position: center; background-repeat: no-repeat; background-clip: 100% auto;">
                        <div class="blackandwhite" style="width: 60%; height: 55%; background-image: url(./img/items/${element.itemname}.png); background-position: center; background-size: auto 100%; background-repeat: no-repeat;"></div>
                        <div class="itemname" style="width: 100%; height: 13%; display: flex; align-items: center; justify-content: center;">${element.label}</div>
                        <div style="width: 100%; height: 15%; display: flex; align-items: center; justify-content: flex-start; flex-direction: row;">
                        <div style="width: 22%; height: 10%;"></div>
                        <div style="width: 10%; height: 50%; background-image: url(./img/boxgray.png); background-repeat: no-repeat; background-position: center; background-size: 75% 75%;"></div>
                        <div style="width: 2%;"></div>
                        <div class="itemamounttext" style="width: 18%; height: 50%; display: flex; align-items: center; justify-content: flex-start;">${element.stock}</div>
                        <div style="width: 5%; height: 50%; background-image: url(./img/dolaricongray.png); background-position: center; background-repeat: no-repeat; background-size: 100% 100%;"></div>
                        <div style="width: 4%; height: 5%;"></div>
                        <div class="itempricetext" style="width: 30%; height: 50%; display: flex; align-items: center; justify-content: flex-start;">${element.price}</div>
                        </div>
                        <div style="width: 10%; height: 3.3%;"></div>
                        <div class="stocktext" style="width: 100%; height: 13.7%; border-radius: 0px 0px 0.081vw 0.081vw; background: #A4A4A4; display: flex; align-items: center; justify-content: center;">OUT OF STOCK!</div>
                    </div>
                    `;
                }
            }
            $(".normalitems").html(Items);

            $("#NormalMarketSearchButton").on("input", function() {
                var searchTerm = $(this).val().toLowerCase();
        
                // .item sınıfına sahip tüm öğeleri seçiyoruz
                $(".searchnormalitem").each(function() {
                    var itemText = $(this).find(".itemname").text().toLowerCase();
                    
        
                    // Arama metni ile öğe metnini karşılaştırıyoruz
                    if (itemText.includes(searchTerm)) {
                        $(this).css("display", "flex");
                    } else {
                        $(this).css("display", "none");
                    }
                });
            });

            for (var i = 0; i < Object.entries(data.Items).length; i++) {
                var button = "#sepeteat" + i;
                $(button).click(function () {
                    var yeniDiv = document.createElement("div");
                    yeniDiv.id = "changestyle" + $(this).data("sira")
                    yeniDiv.style = "flex-direction: column; display: flex; align-items: center; justify-content: flex-start; width: 15%; height: 36%; border-radius: 0.081vw; border: 0.092vw solid #FFEA30; background: radial-gradient(70.12% 70.12% at 50% 50%, rgba(255, 255, 255, 0.00) 0%, rgba(11, 10, 14, 0.10) 100%); box-shadow: 0px 0px 2.364vw 0px rgba(255, 234, 48, 0.28); background-image: url(./img/itemboxyellow.png); background-position: center; background-repeat: no-repeat; background-clip: 100% auto;"
                    var elementaq = items[$(this).data("sira")]
                    basketitems[elementaq.itemname] = 1
                    var sira = $(this).data("sira")
                    var stok = elementaq.stock
                    FiyatHesapla($(this).data("sira"))
                    yeniDiv.innerHTML = `
                        <div style="width: 60%; height: 55%; background-image: url(./img/items/${elementaq.itemname}.png); background-position: center; background-size: auto 100%; background-repeat: no-repeat;"></div>
                        <div class="itemname yellow" style="width: 100%; height: 13%; display: flex; align-items: center; justify-content: center;">${elementaq.label}</div>
                        <div style="width: 100%; height: 15%; display: flex; align-items: center; justify-content: flex-start; flex-direction: row;">
                        <div style="width: 22%; height: 10%;"></div>
                        <div style="width: 10%; height: 50%; background-image: url(./img/boxyellow.png); background-repeat: no-repeat; background-position: center; background-size: 75% 75%;"></div>
                        <div style="width: 2%;"></div>
                        <div class="itemamounttext yellow" style="width: 18%; height: 50%; display: flex; align-items: center; justify-content: flex-start;">${elementaq.stock}</div>
                        <div style="width: 5%; height: 50%; background-image: url(./img/dolaricon.png); background-position: center; background-repeat: no-repeat; background-size: 100% 100%;"></div>
                        <div style="width: 4%; height: 5%;"></div>
                        <div class="itempricetext yellow" style="width: 30%; height: 50%; display: flex; align-items: center; justify-content: flex-start;">${elementaq.price}</div>
                        </div>
                        <div style="width: 10%; height: 3.3%;"></div>
                        <div style="width: 100%; height: 13.7%; display: flex; align-items: center; justify-content: flex-start; flex-direction: row;">
                        <div style="width: 100%; height: 100%; border-radius: 0px 0px 0.078vw 0.078vw; background: #FFEA30;">
                            <input
                                type="number"
                                id="inputaq${$(this).data("sira")}"
                                class="input-item"
                                placeholder="ON BASKET"
                                readonly
                            />
                        </div>
                        </div>
                    `;
                    var eskiDiv = document.getElementById($(this).data("token"));
                    eskiDiv.parentNode.replaceChild(yeniDiv, eskiDiv);
                    
                    var SepetItem = document.createElement("div");
                    SepetItem.style = "flex-shrink: 0; width: 100%; height: 29.3%; border-radius: 0.095vw; border: 0.108vw solid #242226; display: flex; align-items: center; justify-content: flex-start; flex-direction: row; background-image: url(./img/marketitem.png); background-repeat: no-repeat; background-size: 100% 100%;"
                    SepetItem.id = "sagbasketbox" + sira;
                    SepetItem.innerHTML = `
                        <div style="width: 16.3%; height: 100%; background-image: url(./img/items/${items[sira].itemname}.png); background-position: center; background-size: 100% auto; background-repeat: no-repeat;"></div>
                        <div style="width: 62%; height: 60%;">
                        <div class="itemtext" style="width: 100%; height: 60%; display: flex; align-items: center; justify-content: flex-start;">${items[sira].label}</div>
                        <div style="width: 62%; height: 40%; display: flex; flex-direction: row;">
                            <div style="width: 32%; height: 100%; display: flex; flex-direction: row;">
                            <div style="width: 30%; height: 100%; background-image: url(./img/boxgray.png); background-repeat: no-repeat; background-position: center; background-size: 100% 65%;"></div>
                            <div style="width: 5%;"></div>
                            <div class="itemamount" style="width: 65%; height: 70%; justify-self: center; align-self: center;">X${items[sira].stock}</div>
                            </div>
                            <div style="width: 8%; height: 100%; background-image: url(./img/dolaricon.png); background-position: center; background-repeat: no-repeat; background-size: 70% 70%;"></div>
                            <div class="itemprice" style="width: 60%; height: 70%; align-self: center; justify-self: center; display: flex; align-items: center; justify-content: flex-start;">${items[sira].price}</div>
                        </div>
                        </div>
                        <div style="gap: 3.2%; width: 17.5%; height: 90%; display: flex; align-items: center; justify-content: flex-start; flex-direction: column;">
                        <div id="arttirbutton${sira}" class="inputbutton" style="width: 100%; height: 35%; background-image: url(./img/plusbutton.png); background-position: center; background-repeat: no-repeat; background-size: 100% 90%;"></div>
                        <div style="width: 96%; height: 29.3%; border-radius: 0px 0px 0.078vw 0.078vw; background: #FFEA30;">
                            <input
                            type="number"
                            id="inputsag${sira}"
                            class="input-item"
                            placeholder="10x"
                            value="1"
                        />
                        </div>
                        <div id="indirbutton${sira}" class="inputbutton" style="width: 100%; height: 35%; background-image: url(./img/decreasebutton.png); background-position: center; background-repeat: no-repeat; background-size: 100% 90%;"></div>
                        </div>
                  `;
                  document.getElementById("normalsepet").appendChild(SepetItem);

                    var inputElement = document.getElementById("inputsag" + sira);
                    inputElement.addEventListener("input", function() {
                        var inputValue = inputElement.value;
                        if (inputValue < 0) {
                            notify(Lang["negative_number"])
                            inputElement.value = 0;
                            FiyatHesapla(sira)
                        }
                        if (inputValue >  Number(items[sira].stock)) {
                            inputValue = Number(items[sira].stock)
                            basketitems[items[sira].itemname] = Number(inputValue)
                            notify(Lang["max_stock"] + items[sira].stock);
                            inputElement.value = items[sira].stock;
                            FiyatHesapla(sira)
                        } else {
                            basketitems[items[sira].itemname] = Number(inputValue)
                            FiyatHesapla(sira)
                        }
                    });

                    var arttirbuton = "#arttirbutton" + sira;
                    $(arttirbuton).click(function () {
                        var inputId = "inputsag" + sira;
                        var inputElement = document.getElementById(inputId);
                        var currentValue = parseInt(inputElement.value, 10); // Mevcut değeri integer'a çeviriyoruz
                        if (!isNaN(currentValue)) { // Eğer mevcut değer bir sayıysa
                            if (currentValue + 1 <= items[sira].stock) {
                                inputElement.value = currentValue + 1; // Yeni değeri ayarla
                                basketitems[elementaq.itemname] = basketitems[elementaq.itemname] + 1
                                FiyatHesapla(sira)
                            } else {
                                notify(Lang["cannot_increase"])
                            }
                        }
                    });

                    var arttirbuton2 = "#indirbutton" + sira;
                    $(arttirbuton2).click(function () {
                        var inputId = "inputsag" + sira;
                        var inputElement = document.getElementById(inputId);
                        var currentValue = parseInt(inputElement.value, 10); // Mevcut değeri integer'a çeviriyoruz
                        if (!isNaN(currentValue)) { // Eğer mevcut değer bir sayıysa
                            if (currentValue - 1 < 0) {
                                notify(Lang["cannot_decrease"])
                            } else {
                                if (currentValue - 1 == 0) {
                                    notify(Lang["removed_on_basket"])
                                    inputElement.value = currentValue - 1; // Yeni değeri ayarla
                                    basketitems[elementaq.itemname] = basketitems[elementaq.itemname] - 1
                                    FiyatHesapla(sira)
                                } else {
                                    inputElement.value = currentValue - 1; // Yeni değeri ayarla
                                    basketitems[elementaq.itemname] = basketitems[elementaq.itemname] - 1
                                    FiyatHesapla(sira)
                                }
                            }
                        }
                    });
                });
            }
        break;
        case 'OpenMarketMine':
            basketitems = {}
            $('body').fadeIn(500);
            $(".ShopScreenManageable").fadeIn(500);
            $(".manageitems").empty();
            $(".yonetmesepet").empty();
            document.getElementById("totalpricenumberyellow").textContent = "$" + 0
            document.getElementById("totalpricenumberyellow2").textContent = "$" + 0
            document.getElementById("changeshopname").textContent = data.MarketName;
            document.getElementById("changeshopname2").textContent = data.MarketName;
            document.getElementById("changeshopname3").textContent = data.MarketName;
            document.getElementById("changeshopname4").textContent = data.MarketName;

            items = data.Items
            Items = "";
            for (var i = 0; i < Object.entries(data.Items).length; i++) {
                var element = data.Items[i]
                if (element.stock > 0) {
                    Items += `
                    <div id="changestyle${i}" class="searchmanageitem" style="flex-direction: column; display: flex; align-items: center; justify-content: flex-start; width: 15%; height: 36%; border-radius: 0.081vw; border: 0.092vw solid #242226; background-image: url(./img/itembox.png); background-position: center; background-repeat: no-repeat; background-clip: 100% auto;">
                        <div style="width: 60%; height: 55%; background-image: url(./img/items/${element.itemname}.png); background-position: center; background-size: auto 100%; background-repeat: no-repeat;"></div>
                        <div class="itemname" style="width: 100%; height: 13%; display: flex; align-items: center; justify-content: center;">${element.label}</div>
                        <div style="width: 100%; height: 15%; display: flex; align-items: center; justify-content: flex-start; flex-direction: row;">
                        <div style="width: 22%; height: 10%;"></div>
                        <div style="width: 10%; height: 50%; background-image: url(./img/boxgray.png); background-repeat: no-repeat; background-position: center; background-size: 75% 75%;"></div>
                        <div style="width: 2%;"></div>
                        <div class="itemamounttext" style="width: 18%; height: 50%; display: flex; align-items: center; justify-content: flex-start;">${element.stock}</div>
                        <div style="width: 5%; height: 50%; background-image: url(./img/dolaricongray.png); background-position: center; background-repeat: no-repeat; background-size: 100% 100%;"></div>
                        <div style="width: 4%; height: 5%;"></div>
                        <div class="itempricetext" style="width: 30%; height: 50%; display: flex; align-items: center; justify-content: flex-start;">${element.price}</div>
                        </div>
                        <div style="width: 10%; height: 3.3%;"></div>
                        <div id="sepeteat${i}" data-token="changestyle${i}" data-sira="${i}" class="stocktext" style="width: 100%; height: 13.7%; border-radius: 0px 0px 0.081vw 0.081vw; background: #A4A4A4; display: flex; align-items: center; justify-content: center;">BUY ITEM</div>
                    </div>
                    `;
                } else {
                    Items += `
                    <div class="searchmanageitem" style="flex-direction: column; display: flex; align-items: center; justify-content: flex-start; width: 15%; height: 36%; border-radius: 0.081vw; border: 0.092vw solid #242226; background-image: url(./img/itembox.png); background-position: center; background-repeat: no-repeat; background-clip: 100% auto;">
                        <div class="blackandwhite" style="width: 60%; height: 55%; background-image: url(./img/items/${element.itemname}.png); background-position: center; background-size: auto 100%; background-repeat: no-repeat;"></div>
                        <div class="itemname" style="width: 100%; height: 13%; display: flex; align-items: center; justify-content: center;">${element.label}</div>
                        <div style="width: 100%; height: 15%; display: flex; align-items: center; justify-content: flex-start; flex-direction: row;">
                        <div style="width: 22%; height: 10%;"></div>
                        <div style="width: 10%; height: 50%; background-image: url(./img/boxgray.png); background-repeat: no-repeat; background-position: center; background-size: 75% 75%;"></div>
                        <div style="width: 2%;"></div>
                        <div class="itemamounttext" style="width: 18%; height: 50%; display: flex; align-items: center; justify-content: flex-start;">${element.stock}</div>
                        <div style="width: 5%; height: 50%; background-image: url(./img/dolaricongray.png); background-position: center; background-repeat: no-repeat; background-size: 100% 100%;"></div>
                        <div style="width: 4%; height: 5%;"></div>
                        <div class="itempricetext" style="width: 30%; height: 50%; display: flex; align-items: center; justify-content: flex-start;">${element.price}</div>
                        </div>
                        <div style="width: 10%; height: 3.3%;"></div>
                        <div class="stocktext" style="width: 100%; height: 13.7%; border-radius: 0px 0px 0.081vw 0.081vw; background: #A4A4A4; display: flex; align-items: center; justify-content: center;">OUT OF STOCK!</div>
                    </div>
                    `;
                }
            }
            $(".manageitems").html(Items);

            $("#ManageableMarketSearchButton").on("input", function() {
                var searchTerm = $(this).val().toLowerCase();
        
                // .item sınıfına sahip tüm öğeleri seçiyoruz
                $(".searchmanageitem").each(function() {
                    var itemText = $(this).find(".itemname").text().toLowerCase();
                    
        
                    // Arama metni ile öğe metnini karşılaştırıyoruz
                    if (itemText.includes(searchTerm)) {
                        $(this).css("display", "flex");
                    } else {
                        $(this).css("display", "none");
                    }
                });
            });

            for (var i = 0; i < Object.entries(data.Items).length; i++) {
                var button = "#sepeteat" + i;
                $(button).click(function () {
                    var yeniDiv = document.createElement("div");
                    yeniDiv.id = "changestyle" + $(this).data("sira")
                    yeniDiv.style = "flex-direction: column; display: flex; align-items: center; justify-content: flex-start; width: 15%; height: 36%; border-radius: 0.081vw; border: 0.092vw solid #FFEA30; background: radial-gradient(70.12% 70.12% at 50% 50%, rgba(255, 255, 255, 0.00) 0%, rgba(11, 10, 14, 0.10) 100%); box-shadow: 0px 0px 2.364vw 0px rgba(255, 234, 48, 0.28); background-image: url(./img/itemboxyellow.png); background-position: center; background-repeat: no-repeat; background-clip: 100% auto;"
                    var elementaq = items[$(this).data("sira")]
                    basketitems[elementaq.itemname] = 1
                    var sira = $(this).data("sira")
                    var stok = elementaq.stock
                    FiyatHesapla($(this).data("sira"))
                    yeniDiv.innerHTML = `
                        <div style="width: 60%; height: 55%; background-image: url(./img/items/${elementaq.itemname}.png); background-position: center; background-size: auto 100%; background-repeat: no-repeat;"></div>
                        <div class="itemname yellow" style="width: 100%; height: 13%; display: flex; align-items: center; justify-content: center;">${elementaq.label}</div>
                        <div style="width: 100%; height: 15%; display: flex; align-items: center; justify-content: flex-start; flex-direction: row;">
                        <div style="width: 22%; height: 10%;"></div>
                        <div style="width: 10%; height: 50%; background-image: url(./img/boxyellow.png); background-repeat: no-repeat; background-position: center; background-size: 75% 75%;"></div>
                        <div style="width: 2%;"></div>
                        <div class="itemamounttext yellow" style="width: 18%; height: 50%; display: flex; align-items: center; justify-content: flex-start;">${elementaq.stock}</div>
                        <div style="width: 5%; height: 50%; background-image: url(./img/dolaricon.png); background-position: center; background-repeat: no-repeat; background-size: 100% 100%;"></div>
                        <div style="width: 4%; height: 5%;"></div>
                        <div class="itempricetext yellow" style="width: 30%; height: 50%; display: flex; align-items: center; justify-content: flex-start;">${elementaq.price}</div>
                        </div>
                        <div style="width: 10%; height: 3.3%;"></div>
                        <div style="width: 100%; height: 13.7%; display: flex; align-items: center; justify-content: flex-start; flex-direction: row;">
                        <div style="width: 100%; height: 100%; border-radius: 0px 0px 0.078vw 0.078vw; background: #FFEA30;">
                            <input
                                type="number"
                                id="inputaq${$(this).data("sira")}"
                                class="input-item"
                                placeholder="ON BASKET"
                                readonly
                            />
                        </div>
                        </div>
                    `;
                    var eskiDiv = document.getElementById($(this).data("token"));
                    eskiDiv.parentNode.replaceChild(yeniDiv, eskiDiv);
                    
                    var SepetItem = document.createElement("div");
                    SepetItem.style = "flex-shrink: 0; width: 100%; height: 29.3%; border-radius: 0.095vw; border: 0.108vw solid #242226; display: flex; align-items: center; justify-content: flex-start; flex-direction: row; background-image: url(./img/marketitem.png); background-repeat: no-repeat; background-size: 100% 100%;"
                    SepetItem.id = "sagbasketbox" + sira;
                    SepetItem.innerHTML = `
                        <div style="width: 16.3%; height: 100%; background-image: url(./img/items/${items[sira].itemname}.png); background-position: center; background-size: 100% auto; background-repeat: no-repeat;"></div>
                        <div style="width: 62%; height: 60%;">
                        <div class="itemtext" style="width: 100%; height: 60%; display: flex; align-items: center; justify-content: flex-start;">${items[sira].label}</div>
                        <div style="width: 62%; height: 40%; display: flex; flex-direction: row;">
                            <div style="width: 32%; height: 100%; display: flex; flex-direction: row;">
                            <div style="width: 30%; height: 100%; background-image: url(./img/boxgray.png); background-repeat: no-repeat; background-position: center; background-size: 100% 65%;"></div>
                            <div style="width: 5%;"></div>
                            <div class="itemamount" style="width: 65%; height: 70%; justify-self: center; align-self: center;">X${items[sira].stock}</div>
                            </div>
                            <div style="width: 8%; height: 100%; background-image: url(./img/dolaricon.png); background-position: center; background-repeat: no-repeat; background-size: 70% 70%;"></div>
                            <div class="itemprice" style="width: 60%; height: 70%; align-self: center; justify-self: center; display: flex; align-items: center; justify-content: flex-start;">${items[sira].price}</div>
                        </div>
                        </div>
                        <div style="gap: 3.2%; width: 17.5%; height: 90%; display: flex; align-items: center; justify-content: flex-start; flex-direction: column;">
                        <div id="arttirbutton${sira}" class="inputbutton" style="width: 100%; height: 35%; background-image: url(./img/plusbutton.png); background-position: center; background-repeat: no-repeat; background-size: 100% 90%;"></div>
                        <div style="width: 96%; height: 29.3%; border-radius: 0px 0px 0.078vw 0.078vw; background: #FFEA30;">
                            <input
                            type="number"
                            id="inputsag${sira}"
                            class="input-item"
                            placeholder="10x"
                            value="1"
                        />
                        </div>
                        <div id="indirbutton${sira}" class="inputbutton" style="width: 100%; height: 35%; background-image: url(./img/decreasebutton.png); background-position: center; background-repeat: no-repeat; background-size: 100% 90%;"></div>
                        </div>
                  `;
                  document.getElementById("yonetmesepet").appendChild(SepetItem);

                    var inputElement = document.getElementById("inputsag" + sira);
                    inputElement.addEventListener("input", function() {
                        var inputValue = inputElement.value;
                        if (inputValue < 0) {
                            notify(Lang["negative_number"])
                            inputElement.value = 0;
                            FiyatHesapla(sira)
                        }
                        if (inputValue >  Number(items[sira].stock)) {
                            inputValue = Number(items[sira].stock)
                            basketitems[items[sira].itemname] = Number(inputValue)
                            notify(Lang["max_stock"] + items[sira].stock);
                            inputElement.value = items[sira].stock;
                            FiyatHesapla(sira)
                        } else {
                            basketitems[items[sira].itemname] = Number(inputValue)
                            FiyatHesapla(sira)
                        }
                    });

                    var arttirbuton = "#arttirbutton" + sira;
                    $(arttirbuton).click(function () {
                        var inputId = "inputsag" + sira;
                        var inputElement = document.getElementById(inputId);
                        var currentValue = parseInt(inputElement.value, 10); // Mevcut değeri integer'a çeviriyoruz
                        if (!isNaN(currentValue)) { // Eğer mevcut değer bir sayıysa
                            if (currentValue + 1 <= items[sira].stock) {
                                inputElement.value = currentValue + 1; // Yeni değeri ayarla
                                basketitems[elementaq.itemname] = basketitems[elementaq.itemname] + 1
                                FiyatHesapla(sira)
                            } else {
                                notify(Lang["cannot_increase"])
                            }
                        }
                    });

                    var arttirbuton2 = "#indirbutton" + sira;
                    $(arttirbuton2).click(function () {
                        var inputId = "inputsag" + sira;
                        var inputElement = document.getElementById(inputId);
                        var currentValue = parseInt(inputElement.value, 10); // Mevcut değeri integer'a çeviriyoruz
                        if (!isNaN(currentValue)) { // Eğer mevcut değer bir sayıysa
                            if (currentValue - 1 < 0) {
                                notify(Lang["cannot_decrease"])
                            } else {
                                if (currentValue - 1 == 0) {
                                    notify(Lang["removed_on_basket"])
                                    inputElement.value = currentValue - 1; // Yeni değeri ayarla
                                    basketitems[elementaq.itemname] = basketitems[elementaq.itemname] - 1
                                    FiyatHesapla(sira)
                                } else {
                                    inputElement.value = currentValue - 1; // Yeni değeri ayarla
                                    basketitems[elementaq.itemname] = basketitems[elementaq.itemname] - 1
                                    FiyatHesapla(sira)
                                }
                            }
                        }
                    });
                });
            }
        break;
        case 'Notify':
            notify(data.text)
        break;
        case 'CloseMenu':
            closemenu()
        break;
        case 'OpenBuyShop':
            $(".sagmarketbox").empty();
            $('body').fadeIn(500);
            $(".BuyMarket").fadeIn(500);
            $(".shops").empty();
            Shops = "";
            marketler = data.shops
            for (var i = 0; i < Object.entries(data.shops).length; i++) {
                var element = data.shops[i]
                if (element.MarketOwner == undefined) {
                    Shops += `
                    <div class="marketbox" style="flex-shrink: 0; width: 100%; height: 20.5%; display: flex; align-items: center; justify-content: flex-start; flex-direction: row;">
                        <div style="width: 0.8%;"></div>
                        <div style="width: 21.2%; height: 85.4%; background-image: url(${element.image}); background-size: 100% 100%; background-repeat: no-repeat;"></div>
                        <div style="width: 4%;"></div>
                        <div style="width: 15%; height: 40%; flex-direction: column;">
                        <div class="marketboxmarketname" style="width: 100%; height: 35%; display: flex; align-items: flex-start; justify-content: flex-start;">MARKET NAME</div>
                        <div class="marketboxmarketname2" style="width: 100%; height: 65%;">${element.MarketName}</div>
                        </div>
                        <div style="width: 6.7%; height: 1%;"></div>
                        <div style="width: 15%; height: 40%; flex-direction: column;">
                        <div class="marketboxmarketname" style="width: 100%; height: 35%; display: flex; align-items: flex-start; justify-content: flex-start;">MARKET OWNER</div>
                        <div class="marketboxmarketname2" style="width: 100%; height: 65%;">NO OWNER</div>
                        </div>
                        <div style="width: 4%; height: 1%;"></div>
                        <div style="width: 11.8%; height: 40%; flex-direction: column;">
                        <div class="marketboxmarketname" style="width: 100%; height: 35%; display: flex; align-items: flex-start; justify-content: flex-start;">WEEKLY PRICE</div>
                        <div class="marketboxpricetext" style="width: 100%; height: 65%;">$${element.Price}</div>
                        </div>
                        <div id="seedetails${i}" data-token="${i}" class="seedetailstext" style="width: 18%; height: 50%; border-radius: 0.029vw; background: #FFAC30; display: flex; align-items: center; justify-content: center;">SEE DETAILS</div>
                        <div style="width: 1.9%; height: 1%;"></div>
                        <div style="width: 1.2%; height: 83%; border-radius: 0.269vw 0vw 0vw 0.269vw; background: #FFAC30;"></div>
                    </div>
                    `;
                } else {
                    Shops += `
                    <div class="marketbox" style="opacity: 0.5; flex-shrink: 0; width: 100%; height: 20.5%; display: flex; align-items: center; justify-content: flex-start; flex-direction: row;">
                        <div style="width: 0.8%;"></div>
                        <div style="width: 21.2%; height: 85.4%; background-image: url(${element.image}); background-size: 100% 100%; background-repeat: no-repeat;"></div>
                        <div style="width: 4%;"></div>
                        <div style="width: 15%; height: 40%; flex-direction: column;">
                        <div class="marketboxmarketname" style="width: 100%; height: 35%; display: flex; align-items: flex-start; justify-content: flex-start;">MARKET NAME</div>
                        <div class="marketboxmarketname2" style="width: 100%; height: 65%;">${element.MarketName}</div>
                        </div>
                        <div style="width: 6.7%; height: 1%;"></div>
                        <div style="width: 15%; height: 40%; flex-direction: column;">
                        <div class="marketboxmarketname" style="width: 100%; height: 35%; display: flex; align-items: flex-start; justify-content: flex-start;">MARKET OWNER</div>
                        <div class="marketboxmarketname2" style="width: 100%; height: 65%;">${element.MarketOwnerName}</div>
                        </div>
                        <div style="width: 4%; height: 1%;"></div>
                        <div style="width: 11.8%; height: 40%; flex-direction: column;">
                        <div class="marketboxmarketname" style="width: 100%; height: 35%; display: flex; align-items: flex-start; justify-content: flex-start;">WEEKLY PRICE</div>
                        <div class="marketboxpricetextinactive" style="width: 100%; height: 65%;">$${element.Price}</div>
                        </div>
                        <div id="seedetails${i}" data-token="${i}" class="seedetailstext" style="width: 18%; height: 50%; border-radius: 0.029vw; background: #727272; display: flex; align-items: center; justify-content: center;">SEE DETAILS</div>
                        <div style="width: 1.9%; height: 1%;"></div>
                    </div>
                    `;
                }
            }
            $(".shops").html(Shops);

            for (var i = 0; i < Object.entries(data.shops).length; i++) {
                var button = "#seedetails" + i;
                var market = marketler[i];
                $(button).click((function(market) {
                    return function() {
                        SetMarketDetails(market);
                    };
                })(market));
            }
        break;
    }
});

function SetMarketDetails(market) {
    $(".sagmarketbox").empty();
    Shop = "";
    if (market.MarketOwner == undefined) {
        Shop += `
            <div style="height: 2.5%;"></div>
                <div style="width: 94%; height: 29%; background-image: url(${market.image}); background-size: 100% 100%; background-repeat: no-repeat;"></div>
                <div style="width: 100%; height: 3%;"></div>
                <div style="width: 100%; height: 10%; display: flex; flex-direction: row;">
                <div style="width: 50%; height: 100%; display: flex; align-items: center; justify-content: center; flex-direction: column;">
                    <div class="sagboxtext1" style="width: 90%; height: 30%; display: flex; align-items: center; justify-content: flex-start;">MARKET NAME</div>
                    <div class="sagboxtext2" style="width: 90%; height: 70%; display: flex; align-items: center; justify-content: flex-start;">${market.MarketName}</div>
                </div>
                <div style="width: 50%; height: 100%; display: flex; align-items: center; justify-content: center; flex-direction: column;">
                    <div class="sagboxtext1" style="width: 47%; height: 30%; display: flex; align-items: center; justify-content: flex-end;">MARKET OWNER</div>
                    <div class="sagboxtext2" style="width: 80%; height: 70%; display: flex; align-items: center; justify-content: flex-end;">NO OWNER</div>
                </div>
                </div>
                <div style="width: 100%; height: 3%;"></div>
                <div class="marketboxtextaq" style="width: 92.9%; height: 10%; display: flex; align-items: flex-start; justify-content: flex-start; overflow-y: scroll;overflow-x: hidden;">${market.description}</div>
                <div style="width: 100%; height: 3.8%;"></div>
                <div style="width: 94%; height: 13%; background: linear-gradient(90deg, rgba(255, 172, 48, 0.13) 0.06%, rgba(255, 172, 48, 0.00) 103.06%); align-items: center; justify-content: flex-start; display: flex; flex-direction: row;">
                <div style="width: 3.2%;"></div>
                <div style="width: 40%; height: 70%; display: flex; align-items: flex-start; justify-content: flex-start; flex-direction: column;">
                    <div class="totalpricetext" style="width: 70%; height: 30%;">TOTAL PRICE</div>
                    <div class="totalpricenumber" style="width: 70%; height: 70%;">${market.Price}$</div>
                </div>
                <div style="width: 44%; height: 10%;"></div>
                <div style="width: 7.2%; height: 40%; background-image: url(./img/box.png); background-size: 100% 100%; background-repeat: no-repeat;"></div>
                </div>
                <div style="width: 100%; height: 4.3%;"></div>
                <div id="paywithcash" data-token="false" data-id=${market.id} class="paytext" style="width: 94%; height: 8.5%; border-radius: 0.111vw; background: #FFAC30; display: flex; align-items: center; justify-content: center;">PAY WITH CASH</div>
                <div style="width: 100%; height: 1.5%;"></div>
                <div id="paywithcard" data-token="false" data-id=${market.id} class="paytext" style="width: 94%; height: 8.5%; border-radius: 0.111vw; background: #525252; display: flex; align-items: center; justify-content: center;">PAY WITH CARD</div>
            </div>
        `;
    } else {
        Shop += `
            <div style="height: 2.5%;"></div>
                <div style="width: 94%; height: 29%; background-image: url(${market.image}); background-size: 100% 100%; background-repeat: no-repeat;"></div>
                <div style="width: 100%; height: 3%;"></div>
                <div style="width: 100%; height: 10%; display: flex; flex-direction: row;">
                <div style="width: 50%; height: 100%; display: flex; align-items: center; justify-content: center; flex-direction: column;">
                    <div class="sagboxtext1" style="width: 90%; height: 30%; display: flex; align-items: center; justify-content: flex-start;">MARKET NAME</div>
                    <div class="sagboxtext2" style="width: 90%; height: 70%; display: flex; align-items: center; justify-content: flex-start;">${market.MarketName}</div>
                </div>
                <div style="width: 50%; height: 100%; display: flex; align-items: center; justify-content: center; flex-direction: column;">
                    <div class="sagboxtext1" style="width: 47%; height: 30%; display: flex; align-items: center; justify-content: flex-end;">MARKET OWNER</div>
                    <div class="sagboxtext2" style="width: 80%; height: 70%; display: flex; align-items: center; justify-content: flex-end;">${market.MarketOwnerName}</div>
                </div>
                </div>
                <div style="width: 100%; height: 3%;"></div>
                <div class="marketboxtextaq" style="width: 92.9%; height: 10%; display: flex; align-items: flex-start; justify-content: flex-start; overflow-y: scroll;overflow-x: hidden;">${market.description}</div>
                <div style="width: 100%; height: 3.8%;"></div>
                <div style="width: 94%; height: 13%; background: linear-gradient(90deg, rgba(255, 172, 48, 0.13) 0.06%, rgba(255, 172, 48, 0.00) 103.06%); align-items: center; justify-content: flex-start; display: flex; flex-direction: row;">
                <div style="width: 3.2%;"></div>
                <div style="width: 40%; height: 70%; display: flex; align-items: flex-start; justify-content: flex-start; flex-direction: column;">
                    <div class="totalpricetext" style="width: 70%; height: 30%;">TOTAL PRICE</div>
                    <div class="totalpricenumber" style="width: 70%; height: 70%;">${market.Price}$</div>
                </div>
                <div style="width: 44%; height: 10%;"></div>
                <div style="width: 7.2%; height: 40%; background-image: url(./img/box.png); background-size: 100% 100%; background-repeat: no-repeat;"></div>
                </div>
                <div style="width: 100%; height: 4.3%;"></div>
                <div id="paywithcash" data-token="true" data-id=${market.id} class="paytext" style="width: 94%; height: 8.5%; border-radius: 0.111vw; background: #FFAC30; display: flex; align-items: center; justify-content: center;">PAY WITH CASH</div>
                <div style="width: 100%; height: 1.5%;"></div>
                <div id="paywithcard" data-token="true" data-id=${market.id} class="paytext" style="width: 94%; height: 8.5%; border-radius: 0.111vw; background: #525252; display: flex; align-items: center; justify-content: center;">PAY WITH CARD</div>
            </div>
        `;
    }
    $(".sagmarketbox").html(Shop);

    $("#paywithcard").click(function () {
        if (!$(this).data("token")) {
            $.post("https://arob-shops/BuyMarketBank", JSON.stringify({id: $(this).data("id")}))
        } else {
            notify(Lang["has_owner_market"])
        }
    });   

    $("#paywithcash").click(function () {
        if (!$(this).data("token")) {
            $.post("https://arob-shops/BuyMarketCash", JSON.stringify({id: $(this).data("id")}))
        } else {
            notify(Lang["has_owner_market"])
        }
    });   
}

$(document).on("keydown", function () {
	switch (event.keyCode) {
		case 27: // ESC
		closemenu();
		break;
	}
});

function closemenu() {
	$(".BuyMarket").fadeOut(500);
	$(".ShopScreenNormal").fadeOut(500)
	$(".ShopScreenManageable").fadeOut(500)
	$(".ShopScreenWholeSaler").fadeOut(500)
	$(".ItemManagement").fadeOut(500)
	$(".Dashboard").fadeOut(500)
    $(".SellConfirm").fadeOut(500)
    $(".ExtendConfirm").fadeOut(500)
    $(".CloseMarket").fadeOut(500)
    $('body').fadeOut(500);
    $.post("https://arob-shops/closeMenu", JSON.stringify());
}

$(function () {
    $("#closex").click(function () {
		closemenu()
    });
	$("#closex2").click(function () {
		closemenu()
    });
	$("#closex3").click(function () {
		closemenu()
    });
	$("#closex4").click(function () {
		closemenu()
    });
	$("#closex5").click(function () {
		closemenu()
    });
	$("#closex6").click(function () {
		closemenu()
    });

    $("#confirmclose").click(function () {
        $(".SellConfirm").fadeOut(500)
        $(".ExtendConfirm").fadeOut(500)
        $(".CloseMarket").fadeOut(500)
    });

    $("#confirmclose2").click(function () {
        $(".SellConfirm").fadeOut(500)
        $(".ExtendConfirm").fadeOut(500)
        $(".CloseMarket").fadeOut(500)
    });

    $("#confirmclose3").click(function () {
        $(".SellConfirm").fadeOut(500)
        $(".ExtendConfirm").fadeOut(500)
        $(".CloseMarket").fadeOut(500)
    });

    $("#whosallerbank").click(function () {
		$.post("https://arob-shops/WhoSallerBasketCard", JSON.stringify({totalprice: FiyatHesaplaSatinAl(), items: basketitems}))
    });

    $("#whosallercash").click(function () {
		$.post("https://arob-shops/WhoSallerBasketCash", JSON.stringify({totalprice: FiyatHesaplaSatinAl(), items: basketitems}))
    });

    $("#basketpaywithcard").click(function () {
		$.post("https://arob-shops/BasketCard", JSON.stringify({totalprice: FiyatHesaplaSatinAl(), items: basketitems}))
    });

    $("#basketpaywithcard2").click(function () {
		$.post("https://arob-shops/BasketCard", JSON.stringify({totalprice: FiyatHesaplaSatinAl(), items: basketitems}))
    });

    $("#basketpaywithcash").click(function () {
		$.post("https://arob-shops/BasketCash", JSON.stringify({totalprice: FiyatHesaplaSatinAl(), items: basketitems}))
    });

    $("#basketpaywithcash2").click(function () {
		$.post("https://arob-shops/BasketCash", JSON.stringify({totalprice: FiyatHesaplaSatinAl(), items: basketitems}))
    });

    $("#dashboard").click(function () {
        $(".ShopScreenManageable").fadeOut(500)
        setTimeout(() => {
            $.post("https://arob-shops/OpenDashBoard", JSON.stringify({}))
        }, 500);
    });

    $("#itemmanagement").click(function () {
        $(".ShopScreenManageable").fadeOut(500)
        setTimeout(() => {
            $.post("https://arob-shops/OpenItemManagement", JSON.stringify({}))
        }, 500);
    });

    $("#paracek").click(function () {
        var inputmoneyaq = document.getElementById("input-money-wd");
        var para = inputmoneyaq.value
        if (para) {
            if (para <= marketdata.money) {
                $.post("https://arob-shops/WithdrawMoney", JSON.stringify({para: para}))
                inputmoneyaq.value = ""
                closemenu()
            } else {
                notify(Lang["nomoney"])
            }
        } else {
            notify(Lang["enter_price"])
        }
    });

    $("#parayatir").click(function () {
        var inputmoneyaq = document.getElementById("input-money-wd");
        var para = inputmoneyaq.value
        if (para) {
            $.post("https://arob-shops/DepositMoney", JSON.stringify({para: para}))
            inputmoneyaq.value = ""
            $(".BuyMarket").fadeOut(500);
            $(".ShopScreenNormal").fadeOut(500)
            $(".ShopScreenManageable").fadeOut(500)
            $(".ShopScreenWholeSaler").fadeOut(500)
            $(".ItemManagement").fadeOut(500)
            $(".SellConfirm").fadeOut(500)
            $(".ExtendConfirm").fadeOut(500)
            $(".CloseMarket").fadeOut(500)
        } else {
            notify(Lang["enter_price"])
        }
    });

    $(".whosalleritems").on('click', '.buyitemtext', function() {
        var buttonId = this.id; // Tıklanan düğmenin kimliğini alın
        var itemIndex = buttonId.replace("sepeteat", "");
        var selectedItem = items[itemIndex];
        var clickedDiv = $(this).closest('div'); // Tıklanan .buyitemtext div'i
        var parentDiv = clickedDiv.parent(); // Tıklanan div'in bir üst div'i
        var grandparentDiv = parentDiv.parent(); // Bir üst div'in bir üst div'i
        var yeniIcerik = `
        <div id="${selectedItem.label}" style="width: 22.7%; height: 28%; display: flex; align-items: center; justify-content: flex-start; flex-direction: column;">
            <div style="width: 100%; height: 76%; border-radius: 0.3vw; border: 0.15vw solid #FF3062; background: radial-gradient(70.12% 70.12% at 50% 50%, rgba(255, 255, 255, 0.00) 0%, rgba(11, 10, 14, 0.10) 100%); box-shadow: 0px 0px 2.364vw 0px rgba(255, 48, 98, 0.28);">
            <div style="display: flex; align-items: center; justify-content: flex-start; flex-direction: row; width: 100%; height: 100%; background-image: url(./img/whosellerinsidered.png); background-position: center; background-size: 100% 100%; background-repeat: no-repeat;">
                <div style="background-image: url(./img/items/${selectedItem.itemname}.png); background-position: center; background-size: 100% auto; background-repeat: no-repeat; width: 35%; height: 70%;"></div>
                <div style="width: 65%; height: 80%; display: flex; align-items: center; justify-content: flex-start; flex-direction: column;">
                <div style="width: 100%; height: 20%;"></div>
                <div class="whosalerlabel" style="width: 80%; height: 25%; display: flex; align-items: center; justify-content: flex-start;">${selectedItem.label}</div>
                <div style="width: 100%; height: 13%;"></div>
                <div style="width: 100%; height: 18%; display: flex; align-items: center; justify-content: flex-start; flex-direction: row;">
                    <div style="width: 12%; height: 100%;"></div>
                    <div style="width: 10%; height: 100%; background-image: url(./img/dolariconred.png); background-size: auto 100%; background-position: center; background-repeat: no-repeat;"></div>
                    <div class="whosalerprice" style="width: 30%; height: 100%; display: flex; align-items: center; justify-content: flex-start;">${selectedItem.price}</div>
                </div>
                </div>
            </div>
            </div>
            <div style="width: 10%; height: 7%;"></div>
            <div style="width: 100%; height: 20%; display: flex; align-items: center; justify-content: flex-start; flex-direction: row;">
            <div class="buyitemtext" style="width: 100%; height: 100%; border-radius: 0px 0px 0.081vw 0.081vw; background: #FF3062; display: flex; align-items: center; justify-content: center;">BUY ITEM</div>
            </div>
        </div>
        `;
        grandparentDiv.replaceWith(yeniIcerik);
        var itemIndex = buttonId.replace("sepeteat", ""); // Düğme kimliğinden ürün dizinini alın
        var selectedItem = items[itemIndex]; // Doğru ürünü alın
        basketitems[selectedItem.itemname] = 1;
        FiyatHesaplaWhoSaller()

        var SepetItem = document.createElement("div");
        SepetItem.style = "flex-shrink: 0; width: 100%; height: 29.3%; border-radius: 0.095vw; border: 0.108vw solid #242226; display: flex; align-items: center; justify-content: flex-start; flex-direction: row; background-image: url(./img/marketitem.png); background-repeat: no-repeat; background-size: 100% 100%;"
        SepetItem.id = "sagbasketbox" + buttonId;
        SepetItem.innerHTML = `
            <div style="width: 16.3%; height: 100%; background-image: url(./img/items/${selectedItem.itemname}.png); background-position: center; background-size: 100% auto; background-repeat: no-repeat;"></div>
            <div style="width: 62%; height: 60%;">
            <div class="itemtext" style="width: 100%; height: 60%; display: flex; align-items: center; justify-content: flex-start;">${selectedItem.label}</div>
            <div style="width: 62%; height: 40%; display: flex; flex-direction: row;">
                <div style="width: 8%; height: 100%; background-image: url(./img/dolariconred.png); background-position: center; background-repeat: no-repeat; background-size: 70% 70%;"></div>
                <div class="itemprice red" style="width: 60%; height: 70%; align-self: center; justify-self: center; display: flex; align-items: center; justify-content: flex-start;">${selectedItem.price}</div>
            </div>
            </div>
            <div style="gap: 3.2%; width: 17.5%; height: 90%; display: flex; align-items: center; justify-content: flex-start; flex-direction: column;">
            <div id="increasebutton${itemIndex}" class="inputbutton" style="width: 100%; height: 35%; background-image: url(./img/plusbuttonred.png); background-position: center; background-repeat: no-repeat; background-size: 100% 90%;"></div>
            <div style="width: 96%; height: 29.3%; border-radius: 0px 0px 0.078vw 0.078vw; background: #FF3062;">
                <input
                type="number"
                id="input${itemIndex}"
                class="input-item"
                placeholder="10x"
                value="1"
                />
            </div>
            <div id="decreasebutton${itemIndex}" class="inputbutton" style="width: 100%; height: 35%; background-image: url(./img/decreasebuttonred.png); background-position: center; background-repeat: no-repeat; background-size: 100% 90%;"></div>
        </div>
        `;
        document.getElementById("whosallerbasket").appendChild(SepetItem);
    });

    $(".whosallerbasket").on('click', '.inputbutton[id^="increasebutton"]', function() {
        var buttonId = this.id; // Tıklanan düğmenin kimliğini alın
        var itemIndex = buttonId.replace("increasebutton", ""); // Düğme kimliğinden ürün dizinini alın

        // Input elementini bulun
        var inputElement = document.getElementById(`input${itemIndex}`);

        // Input değerini arttırın
        var currentValue = parseInt(inputElement.value, 10);
        inputElement.value = currentValue + 1;
        basketitems[items[itemIndex].itemname]++;
        FiyatHesaplaWhoSaller()
    });

    // Azaltma düğmelerini dinle
    $(".whosallerbasket").on('click', '.inputbutton[id^="decreasebutton"]', function() {
        var buttonId = this.id; // Tıklanan düğmenin kimliğini alın
        var itemIndex = buttonId.replace("decreasebutton", ""); // Düğme kimliğinden ürün dizinini alın

        // Input elementini bulun
        var inputElement = document.getElementById(`input${itemIndex}`);

        // Input değerini azaltın (minimum değer 1)
        var currentValue = parseInt(inputElement.value, 10);
        if (currentValue > 0) {
            inputElement.value = currentValue - 1;
            basketitems[items[itemIndex].itemname]--;
            FiyatHesaplaWhoSaller()
        }
    });

    // Inputları dinle
    $(".whosallerbasket").on('change', '.input-item', function() {
        var inputId = this.id; // Değişen inputun kimliğini alın
        var itemIndex = inputId.replace("input", ""); // Input kimliğinden ürün dizinini alın
        var newValue = parseInt(this.value, 10); // Yeni input değerini alın

        if (newValue < 0) {
            // Değer 0'dan küçükse bildirim gönderin
            notify(Lang["negative_number"])
            // Değeri 0 olarak ayarlayın
            this.value = 0;
            // basitems tablosunu da güncelleyin
            basketitems[items[itemIndex].itemname] = 0;
            FiyatHesaplaWhoSaller()
        } else {
            // Değer 0'dan büyük veya eşitse, basitems tablosunu güncelleyin
            basketitems[items[itemIndex].itemname] = newValue;
            FiyatHesaplaWhoSaller()
        }
    });

    $("#aramaInput").on("input", function() {
        var searchTerm = $(this).val().toLowerCase();
    
        $(".whosalleritems > div").each(function() {
            var itemLabel = $(this).attr("id").toLowerCase();
            if (itemLabel.indexOf(searchTerm) === -1) {
                $(this).hide();
            } else {
                $(this).show();
            }
        });
    });

    $("#sellmarketbutton").click(function () {
        document.getElementById("sellmarketprice").textContent = "(" + (marketdata.price * selx) / 100 + "$)";
        $(".SellConfirm").fadeIn(500);
    });

    $("#extendtimebutton").click(function () {
        document.getElementById("extendmarketprice").textContent = "(" + (marketdata.price * extendx) / 100 + "$)";
        $(".ExtendConfirm").fadeIn(500)
    });

    $("#closemarketbutton").click(function () {
        $(".CloseMarket").fadeIn(500)
    });

    $("#deletemarketdata").click(function () {
        closemenu()
        $.post("https://arob-shops/CloseMarket", JSON.stringify({}))
    });

    $("#sellmarketconfirm").click(function () {
        closemenu()
        $.post("https://arob-shops/SellMyMarket", JSON.stringify({}))
    });

    $("#hireworker").click(function () {
        $(".MarketHireWorker").fadeIn(500)
    });

    $("#hireclose").click(function () {
        $(".MarketHireWorker").fadeOut(500)
    });

    $("#hireconfirm").click(function () {
        var inputValue = document.getElementById("input-hire").value;
        if (inputValue) {
            $.post("https://arob-shops/HireWorker", JSON.stringify({playerid: inputValue}))
            $(".MarketHireWorker").fadeOut(500)
        } else {
            notify(Lang["enter_player_id"])
        }
    });

    $("#extendtimemarket").click(function () {
        $.post("https://arob-shops/ExtendTimeMarket", JSON.stringify({}))
        $(".BuyMarket").fadeOut(500);
        $(".ShopScreenNormal").fadeOut(500)
        $(".ShopScreenManageable").fadeOut(500)
        $(".ShopScreenWholeSaler").fadeOut(500)
        $(".ItemManagement").fadeOut(500)
        $(".SellConfirm").fadeOut(500)
        $(".ExtendConfirm").fadeOut(500)
        $(".CloseMarket").fadeOut(500)
    });
});

function notify(text) {
    clicksound()
    $(".Notify").fadeIn(500);
    document.getElementById("notifyinsidetext").innerHTML = text;
    setTimeout(() => {
        $(".Notify").fadeOut(500);
    }, 5000);
}

function clicksound() {
    let beat = new Audio('./sound/notification.ogg');
    beat.volume = 0.1;
    beat.play();
}

function FiyatHesapla() {
    var fiyat = 0;
    for (var i = 0; i < Object.entries(items).length; i++) {
        for (var j = 0; j < Object.keys(basketitems).length; j++) {
            var itemName = Object.keys(basketitems)[j];
            if (items[i].itemname === itemName) {
                var inputElement = document.getElementById("inputsag" + i);
                var deger = inputElement ? inputElement.value : 1;
                fiyat += items[i].price * deger;
            }
        }
    }
    var totalpricenumberyellowElement = document.getElementById("totalpricenumberyellow");
    if (totalpricenumberyellowElement) {
        totalpricenumberyellowElement.textContent = "$" + fiyat.toFixed(2); // Fiyatı düzgün bir şekilde biçimlendirir (iki ondalık basamak)
    }
    var totalpricenumberyellowElement = document.getElementById("totalpricenumberyellow2");
    if (totalpricenumberyellowElement) {
        totalpricenumberyellowElement.textContent = "$" + fiyat.toFixed(2); // Fiyatı düzgün bir şekilde biçimlendirir (iki ondalık basamak)
    }
}

function FiyatHesaplaWhoSaller() {
    var fiyat = 0;
    for (var i = 0; i < Object.entries(items).length; i++) {
        for (var j = 0; j < Object.keys(basketitems).length; j++) {
            var itemName = Object.keys(basketitems)[j];
            if (items[i].itemname === itemName) {
                var inputElement = document.getElementById("input" + i);
                var deger = inputElement ? inputElement.value : 1;
                fiyat += items[i].price * deger;
            }
        }
    }
    var totalpricenumberyellowElement = document.getElementById("whosallertotalprice");
    if (totalpricenumberyellowElement) {
        totalpricenumberyellowElement.textContent = "$" + fiyat.toFixed(2); // Fiyatı düzgün bir şekilde biçimlendirir (iki ondalık basamak)
    }
}

function FiyatHesaplaSatinAl() {
    var fiyat = 0;
    for (var i = 0; i < Object.entries(items).length; i++) {
        for (var j = 0; j < Object.keys(basketitems).length; j++) {
            var itemName = Object.keys(basketitems)[j];
            if (items[i].itemname === itemName) {
                var inputElement = document.getElementById("inputsag" + i);
                var deger = inputElement ? inputElement.value : 1;
                fiyat += items[i].price * deger;
            }
        }
    }
    return fiyat
}