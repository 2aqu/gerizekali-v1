var maxLevel = 1000;
var neededEXP = 1000;
var currentLevel = 1;
var currentXP = 0;
var lastSelected;
var categories = [];
var itemler = [];
var tasks = [];
var firstOpen = true;
var profilePhoto = "";

window.addEventListener("message", (event) => {
    if (event.data.type === "show") {
        if (firstOpen) {
            firstOpen = false;
            var xhr = new XMLHttpRequest();
            xhr.responseType = "text";
            xhr.open("GET", event.data.steamid, true);
            xhr.send();
            xhr.onreadystatechange = processRequest;
            function processRequest(e) {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    var string = xhr.responseText.toString();
                    var array = string.split("avatarfull");
                    var array2 = array[1].toString().split('"');
                    profilePhoto = array2[2].toString();
                    $(".profilePhotoAK4Y").attr("src", profilePhoto);
                }
            }
        } else {
            $(".profilePhotoAK4Y").attr("src", profilePhoto);
        }
        $(".taskFirstName").html(event.data.firstname);
        $(".taskLastName").html(event.data.lastname);
        $(".cashMoneyValue").html("$" + event.data.moneyCash);
        $(".bankMoneyValue").html("$" + event.data.moneyBank);
        $(".firstName").html(event.data.firstname);
        $(".lastname").html(event.data.lastname);
        $(".charSex").html(event.data.gender);
        $(".taskCharSex").html(event.data.gender);
        giveExp(parseInt(event.data.currentXP));
        categories = event.data.categories;
        itemler = event.data.items;
        tasks = event.data.tasks;
        setTasks(tasks, event.data.playerTasks);
        setCategories(categories);
        $(".generalSection").show();
    } else if (event.data.type === "addEXP") {
        giveJustExp(parseInt(event.data.exp));
    }
});

$(document).on("keydown", function () {
    switch (event.keyCode) {
        case 27: // ESC
            $.post("https://ak4y-blackmarket/closeMenu", JSON.stringify());
            $(".generalSection").hide();
            $(".generalTaskSection").hide();
            $(".generalBuySection").hide();
            $(".notifySection").hide();
            break;
    }
});

function updatecounters() {
    if (currentXP >= neededEXP) {
        currentLevel += Math.floor(currentXP / neededEXP);
        currentXP = currentXP % neededEXP;
    }
    setTimeout(() => {
        currentXP = currentLevel > maxLevel ? neededEXP : currentXP;
        currentLevel = currentLevel > maxLevel ? maxLevel : currentLevel;
        document.getElementById("taskLevelText").innerHTML = "LEVEL " + currentLevel;
        document.getElementById("currentLVL").innerHTML = currentLevel + " LVL";
        $(".levelFill").css("width", (currentXP / neededEXP) * 100 + "%");
        $(".taskCurrentFill").css("width", (currentXP / neededEXP) * 100 + "%");
        $(".taskCurrentXP").html(currentXP + "XP");
        $(".currentXP").html(currentXP + "XP");
        setItemsIntoCategory(itemler, lastSelected);
    }, 100);
}

function giveExp(number) {
    currentLevel = 1;
    currentXP = 0;
    currentXP += number;
    updatecounters();
}

function giveJustExp(number) {
    currentXP += number;
    updatecounters();
}

let cart = [];
let cartTotal = 0;
const cartDom = document.querySelector(".cartItemList");

function setCategories(data) {
    $(".categorySection").empty();
    data.forEach((element) => {
        $(".categorySection").append(`
            <div class="categoryItem" id="${element.category}">${element.label}</div>
        `);
    });
    setTimeout(() => {
        lastSelected = categories[0].category;
        $(".categoryItem:first-child").click();
    }, 1);
}

$(document).on("click", ".categoryItem", function () {
    var $this = this;
    var current = document.getElementsByClassName("categoryItem selected");
    if (current.length > 0) {
        current[0].className = current[0].className.replace("categoryItem selected", "categoryItem");
    }
    $this.className += " selected";
    setItemsIntoCategory(itemler, $this.id);
    calculateTotal();
});

function setTasks(data, userDetails) {
    $(".taskList").empty();
    for (let i = 0; i < data.length; i++) {
        const element = data[i];
        var userDet = JSON.parse(userDetails);
        if (typeof userDet[i] !== "undefined") {
            if (!userDet[i].taken && userDet[i].hasCount >= element.requiredcount) {
                $.post("https://ak4y-blackmarket/taskDone", JSON.stringify({ taskId: element.taskId }));
            }
            var deneme = `
            <div class="taskItem">
                <div class="taskItemTopSection">
                    <div class="taskItemTitle">${element.taskTitle}</div>
                    <div class="taskItemRewardXP">+ ${element.rewardXP}XP</div>
                </div>
                <div class="taskItemMiddleSection">
                    <div class="taskItemDescArea">
                        ${element.taskDescription}
                    </div>
                    <div class="taskItemRadialArea">
                        <div class="progressBar" id="taskBarProgressID-${i + 1}"></div>
                    </div>
                </div>
            </div>
            `;
            $(".taskList").append(deneme);
            progressBarCreate(i + 1);
            var myCount = userDet[i].hasCount > element.requiredcount ? element.requiredcount : userDet[i].hasCount;
            changeProgressBar(i + 1, myCount / element.requiredcount, userDet[i].hasCount + "/" + element.requiredcount);
        }
    }
}

function setItemsIntoCategory(data, cate) {
    lastSelected = cate;
    $(".itemListArea").empty();
    data.forEach((element) => {
        if (element.category === cate) {
            if (currentLevel >= element.level) {
                const IsinCart = cart.filter((cartItem) => cartItem.itemId === element.id).length > 0;
                if (IsinCart) {
                    html = `
                    <div class="listItem" data-itemData='${JSON.stringify(element)}'>
                        <div class="listItemName">${element.label}</div>
                        <div class="listItemType">${element.type}</div>
                        <div class="listItemImageArea">
                            <img src=${element.image} alt="" />
                        </div>
                        <div class="listItemBottomSection">
                            <div class="listItemCost" data-price="${element.price}">$${element.price}</div>
                            <div class="listItemLevel">LEVEL ${element.level}</div>
                        </div>
                        <div class="listItemClickableArea">
                            <div class="listItemBuyButton" id="addButton-${element.id}">IN CART</div>
                        </div>
                    </div>
                    `;
                } else {
                    html = `
                    <div class="listItem" data-itemData='${JSON.stringify(element)}'>
                        <div class="listItemName">${element.label}</div>
                        <div class="listItemType">${element.type}</div>
                        <div class="listItemImageArea">
                            <img src=${element.image} alt="" />
                        </div>
                        <div class="listItemBottomSection">
                            <div class="listItemCost" data-price="${element.price}">$${element.price}</div>
                            <div class="listItemLevel">LEVEL ${element.level}</div>
                        </div>
                        <div class="listItemClickableArea">
                            <div class="listItemBuyButton" id="addButton-${element.id}">ADD CART</div>
                        </div>
                    </div>
                    `;
                }
            } else {
                html = `
                <div class="listItem">
                    <div class="listItemName">${element.label}</div>
                    <div class="listItemType">${element.type}</div>
                    <div class="listItemImageArea">
                        <img src=${element.image} alt="" />
                    </div>
                    <div class="listItemBottomSection">
                        <div class="listItemCost">$${element.price}</div>
                        <div class="listItemLevel">LEVEL ${element.level}</div>
                    </div>
                    <div class="listItemRequiredLevelArea">
                        <i id="lockIcon" class="fa-solid fa-lock"></i>
                        <div class="listRequiredItemText">REQUIRED</div>
                        <div class="listRequiredLevel">LEVEL ${element.level}</div>
                    </div>
                </div>
                `;
            }
            $(".itemListArea").append(html);
        }
    });
}

$(document).on("click", ".listItemBuyButton", function () {
    var $this = this;
    var productDom = $this.parentNode.parentNode;
    var selectedItemData = JSON.parse(productDom.getAttribute("data-itemData"));
    var product = {
        itemId: selectedItemData.id,
    };

    const IsinCart = cart.filter((cartItem) => cartItem.itemId === product.itemId).length > 0;
    if (IsinCart === false) {
        if ($(".cartListEmptyText").length >= 1) {
            $(".cartListEmptyText").remove();
        }
        $($this).html("IN CART");
        $(".cartItemList").append(`
        <div class="cartItem" data-cartItemData='${JSON.stringify(selectedItemData)}'>
            <div class="cartItemLeftArea">
                <div class="cartItemName">${selectedItemData.label}</div>
            </div>
            <div class="cartItemMiddleArea">
                <div class="cartItemMoney">$${selectedItemData.price}</div>
            </div>
            <div class="cartItemRightArea">
                <div class="cartCountButton" id="removeCountButton">-</div>
                <input type="text" class="cartItemCountInput" value="1" readonly/>
                <div class="cartCountButton" id="addCountButton">+</div>
            </div>
        </div>
        `);
    }
    cart.push(product);
    calculateTotal();
});

function calculateTotal() {
    var totalPrice = 0;
    const cartItemList = document.querySelectorAll(".cartItem");
    cartItemList.forEach((element) => {
        var cartItemJSON = JSON.parse(element.getAttribute("data-cartItemData"));
        var currentCountDom = element.querySelector(".cartItemRightArea").querySelector(".cartItemCountInput");
        totalPrice += parseInt(currentCountDom.value * cartItemJSON.price);
    });
    $(".totalPrice").html(`$${totalPrice}`);
    $(".totalPrice").attr("data-totalPrice", totalPrice);
}
$(document).on("click", "#addCountButton", function () {
    var $this = this;
    var cartItemDom = $this.parentNode.parentNode;
    var cartItemJSON = JSON.parse(cartItemDom.getAttribute("data-cartItemData"));
    var currentCost = cartItemDom.querySelector(".cartItemMiddleArea").querySelector(".cartItemMoney");
    var currentCountDom = cartItemDom.querySelector(".cartItemRightArea").querySelector(".cartItemCountInput");
    var currentCount = parseInt(currentCountDom.value) + 1;
    currentCost.innerText = `$${currentCount * cartItemJSON.price}`;
    currentCountDom.value = currentCount;
    calculateTotal();
});

$(document).on("click", "#removeCountButton", function () {
    var $this = this;
    var cartItemDom = $this.parentNode.parentNode;
    var cartItemJSON = JSON.parse(cartItemDom.getAttribute("data-cartItemData"));
    var currentCost = cartItemDom.querySelector(".cartItemMiddleArea").querySelector(".cartItemMoney");
    var currentCountDom = cartItemDom.querySelector(".cartItemRightArea").querySelector(".cartItemCountInput");
    var currentCount = parseInt(currentCountDom.value) - 1;
    currentCost.innerText = `$${currentCount * cartItemJSON.price}`;
    currentCountDom.value = currentCount;
    cart.forEach((cartItem) => {
        if (cartItem.itemId === cartItemJSON.id) {
            if (currentCount <= 0) {
                cart = cart.filter((cartItem) => cartItem.itemId !== cartItemJSON.id);
                $(`#addButton-${cartItemJSON.id}`).html("ADD CART");
                cartItemDom.remove();
                if (cart.length < 1) {
                    $(".cartItemList").append(`<div class="cartListEmptyText">EMPTY</div>`);
                }
            } else {
            }
        }
    });
    calculateTotal();
});

$(document).on("click", ".tasksButton", function () {
    $(".generalTaskSection").fadeIn(250);
});

$(document).on("click", ".cartBottomPaymentButton", function () {
    if (cart.length < 1) {
        $(".cartListEmptyText").css("color", "rgba(255, 255, 255, 0.821)");
        setTimeout(() => {
            $(".cartListEmptyText").css("color", "rgba(255, 255, 255, 0.01)");
        }, 1000);
    } else {
        $(".buyMenuItemList").empty();
        var selectedDiv = this;
        var text = "";
        paymentType = selectedDiv.id == "cashPay" ? "cash" : "bank";
        text = selectedDiv.id == "cashPay" ? "CASH MONEY?" : "BANK MONEY?";
        $("#buyButtonMenu").attr("data-paymentType", paymentType);
        const cartItemList = document.querySelectorAll(".cartItem");
        cartItemList.forEach((element) => {
            var cartItemJSON = JSON.parse(element.getAttribute("data-cartItemData"));
            var currentCountDom = element.querySelector(".cartItemRightArea").querySelector(".cartItemCountInput");
            $(".buyMenuItemList").append(`
                <div class="buyItem">
                    <div class="buyItemName">${cartItemJSON.label}</div>
                    <div class="buyItemCount">X${currentCountDom.value}</div>
                </div>
            `);
        });
        $(".aboveSecondText").html(text);
        $(".generalBuySection").fadeIn(250);
    }
});

$(document).on("click", "#buyButtonMenu", function () {
    var sendCart = [];
    var totalPrice = $(".totalPrice").attr("data-totalPrice");
    var paymentMethod = $("#buyButtonMenu").attr("data-paymentType");
    const cartItemList = document.querySelectorAll(".cartItem");
    cartItemList.forEach((element) => {
        var cartItemJSON = JSON.parse(element.getAttribute("data-cartItemData"));
        var currentCountDom = element.querySelector(".cartItemRightArea").querySelector(".cartItemCountInput");
        var currentItem = { itemData: cartItemJSON, count: parseInt(currentCountDom.value) };
        sendCart.push(currentItem);
    });
    $.post(
        "https://ak4y-blackmarket/buyCart",
        JSON.stringify({
            sendCart: sendCart,
            totalPrice: totalPrice,
            paymentMethod: paymentMethod,
        }),
        function (data) {
            if (data == true) {
                cart = [];
                $(".generalBuySection").fadeOut(250);
                $(".cartItemList").empty();
                $(".cartItemList").append(`<div class="cartListEmptyText">EMPTY</div>`);
                calculateTotal();
                $(".notifyMain").css("background-color", "rgba(43, 255, 0, 0.67)");
                $(".notifyMain").html("Purchase is successful.");
                $(".notifySection").fadeIn(250);
                setTimeout(() => {
                    $(".notifySection").fadeOut(250);
                }, 1500);
            } else {
                $(".notifyMain").css("background-color", "rgba(255, 0, 0, 0.67)");
                $(".notifyMain").html("An error occurred during purchase.");
                $(".notifySection").fadeIn(250);
                setTimeout(() => {
                    $(".notifySection").fadeOut(250);
                }, 1500);
            }
        }
    );
});

$(document).on("click", "#cancelButtonMenu", function () {
    $(".generalBuySection").fadeOut(250);
});

$(document).on("click", "#exitButtonIcon", function () {
    $(".generalTaskSection").fadeOut(250);
});

function progressBarCreate(deger) {
    if (deger == 1) {
        taskProgressId1 = new ProgressBar.Circle("#taskBarProgressID-1", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 2) {
        taskProgressId2 = new ProgressBar.Circle("#taskBarProgressID-2", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 3) {
        taskProgressId3 = new ProgressBar.Circle("#taskBarProgressID-3", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 4) {
        taskProgressId4 = new ProgressBar.Circle("#taskBarProgressID-4", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 5) {
        taskProgressId5 = new ProgressBar.Circle("#taskBarProgressID-5", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 6) {
        taskProgressId6 = new ProgressBar.Circle("#taskBarProgressID-6", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 7) {
        taskProgressId7 = new ProgressBar.Circle("#taskBarProgressID-7", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 8) {
        taskProgressId8 = new ProgressBar.Circle("#taskBarProgressID-8", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 9) {
        taskProgressId9 = new ProgressBar.Circle("#taskBarProgressID-9", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 10) {
        taskProgressId10 = new ProgressBar.Circle("#taskBarProgressID-10", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 11) {
        taskProgressId11 = new ProgressBar.Circle("#taskBarProgressID-11", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 12) {
        taskProgressId12 = new ProgressBar.Circle("#taskBarProgressID-12", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 13) {
        taskProgressId13 = new ProgressBar.Circle("#taskBarProgressID-13", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 14) {
        taskProgressId14 = new ProgressBar.Circle("#taskBarProgressID-14", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 15) {
        taskProgressId15 = new ProgressBar.Circle("#taskBarProgressID-15", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 16) {
        taskProgressId16 = new ProgressBar.Circle("#taskBarProgressID-16", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 17) {
        taskProgressId17 = new ProgressBar.Circle("#taskBarProgressID-17", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 18) {
        taskProgressId18 = new ProgressBar.Circle("#taskBarProgressID-18", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 19) {
        taskProgressId19 = new ProgressBar.Circle("#taskBarProgressID-19", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 20) {
        taskProgressId20 = new ProgressBar.Circle("#taskBarProgressID-20", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 21) {
        taskProgressId21 = new ProgressBar.Circle("#taskBarProgressID-21", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 22) {
        taskProgressId22 = new ProgressBar.Circle("#taskBarProgressID-22", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 23) {
        taskProgressId23 = new ProgressBar.Circle("#taskBarProgressID-23", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 24) {
        taskProgressId24 = new ProgressBar.Circle("#taskBarProgressID-24", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 25) {
        taskProgressId25 = new ProgressBar.Circle("#taskBarProgressID-25", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 26) {
        taskProgressId26 = new ProgressBar.Circle("#taskBarProgressID-26", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 27) {
        taskProgressId27 = new ProgressBar.Circle("#taskBarProgressID-27", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 28) {
        taskProgressId28 = new ProgressBar.Circle("#taskBarProgressID-28", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 29) {
        taskProgressId29 = new ProgressBar.Circle("#taskBarProgressID-29", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    } else if (deger == 30) {
        taskProgressId30 = new ProgressBar.Circle("#taskBarProgressID-30", {
            strokeWidth: 7,
            easing: "easeInOut",
            duration: 500,
            color: "#FF8A8A",
            trailColor: "rgba(0, 0, 0, 0.42)",
            trailWidth: 3,
            text: {
                value: "5/10",
                className: "radialText",
                style: {
                    color: "#fff",
                    position: "absolute",
                    left: "50%",
                    top: "50%",
                    padding: 0,
                    margin: 0,
                    transform: {
                        prefix: true,
                        value: "translate(-50%, -50%)",
                    },
                },
            },
            fill: "rgba(0, 0, 0, 0.1)",
        });
    }
}

function changeProgressBar(deger, progress, text) {
    if (deger == 1) {
        taskProgressId1.animate(progress);
        taskProgressId1.setText(text);
    } else if (deger == 2) {
        taskProgressId2.animate(progress);
        taskProgressId2.setText(text);
    } else if (deger == 3) {
        taskProgressId3.animate(progress);
        taskProgressId3.setText(text);
    } else if (deger == 4) {
        taskProgressId4.animate(progress);
        taskProgressId4.setText(text);
    } else if (deger == 5) {
        taskProgressId5.animate(progress);
        taskProgressId5.setText(text);
    } else if (deger == 6) {
        taskProgressId6.animate(progress);
        taskProgressId6.setText(text);
    } else if (deger == 7) {
        taskProgressId7.animate(progress);
        taskProgressId7.setText(text);
    } else if (deger == 8) {
        taskProgressId8.animate(progress);
        taskProgressId8.setText(text);
    } else if (deger == 9) {
        taskProgressId9.animate(progress);
        taskProgressId9.setText(text);
    } else if (deger == 10) {
        taskProgressId10.animate(progress);
        taskProgressId10.setText(text);
    } else if (deger == 11) {
        taskProgressId11.animate(progress);
        taskProgressId11.setText(text);
    } else if (deger == 12) {
        taskProgressId12.animate(progress);
        taskProgressId12.setText(text);
    } else if (deger == 13) {
        taskProgressId13.animate(progress);
        taskProgressId13.setText(text);
    } else if (deger == 14) {
        taskProgressId14.animate(progress);
        taskProgressId14.setText(text);
    } else if (deger == 15) {
        taskProgressId15.animate(progress);
        taskProgressId15.setText(text);
    } else if (deger == 16) {
        taskProgressId16.animate(progress);
        taskProgressId16.setText(text);
    } else if (deger == 17) {
        taskProgressId17.animate(progress);
        taskProgressId17.setText(text);
    } else if (deger == 18) {
        taskProgressId18.animate(progress);
        taskProgressId18.setText(text);
    } else if (deger == 19) {
        taskProgressId19.animate(progress);
        taskProgressId19.setText(text);
    } else if (deger == 20) {
        taskProgressId20.animate(progress);
        taskProgressId20.setText(text);
    } else if (deger == 21) {
        taskProgressId21.animate(progress);
        taskProgressId21.setText(text);
    } else if (deger == 22) {
        taskProgressId22.animate(progress);
        taskProgressId22.setText(text);
    } else if (deger == 23) {
        taskProgressId23.animate(progress);
        taskProgressId23.setText(text);
    } else if (deger == 24) {
        taskProgressId24.animate(progress);
        taskProgressId24.setText(text);
    } else if (deger == 25) {
        taskProgressId25.animate(progress);
        taskProgressId25.setText(text);
    } else if (deger == 26) {
        taskProgressId26.animate(progress);
        taskProgressId26.setText(text);
    } else if (deger == 27) {
        taskProgressId27.animate(progress);
        taskProgressId27.setText(text);
    } else if (deger == 28) {
        taskProgressId28.animate(progress);
        taskProgressId28.setText(text);
    } else if (deger == 29) {
        taskProgressId29.animate(progress);
        taskProgressId29.setText(text);
    } else if (deger == 30) {
        taskProgressId30.animate(progress);
        taskProgressId30.setText(text);
    }
}
