let buttonParams = [];

const openMenu = (data = null, size = null) => {
    let html = "";
    data.forEach((item, index) => {
        if(!item.hidden) {
            let header = item.header;
            let message = item.txt || item.text;
            let isMenuHeader = item.isMenuHeader;
            let isSubMenu = item.isSubMenu;
            let isDisabled = item.disabled;
            let icon = item.icon;
            let image = item.image
            html += getButtonRender(header, message, index, isMenuHeader, isSubMenu, isDisabled, icon, image, size);
            if (item.params) buttonParams[index] = item.params;
        }
    });

    $("#buttons").html(html);

    $('.button').click(function() {
        const target = $(this)
        if (!target.hasClass('title') && !target.hasClass('disabled')) {
            postData(target.attr('id'));
        }
    });
};

const getButtonRender = (header, message = null, id, isMenuHeader, isSubMenu, isDisabled, icon, image, size) => {
    let width = "37.25vw";
    let maxw = "40%";
    if (size == "medium") { width = "44vw"; maxw = "80%"; };
    if (size == "large") { width = "52vw"; maxw = "100%"; };

    return `
        <div class="${isMenuHeader ? "title" : "button"} ${isDisabled ? "disabled" : ""}" id="${id}" style="width: ${width}; max-width: ${maxw};">
            <div class="icon"> <img src=nui://${image} width=30px onerror="this.onerror=null; this.remove();"> <img src=nui://${icon} width=30px onerror="this.onerror=null; this.remove();"> <i class="${icon}" onerror="this.onerror=null; this.remove();"></i> </div>
            <div class="column">
            <div class="header"> ${header}</div>
            ${message ? `<div class="text">${message}</div>` : ""}
            ${isSubMenu ? `<div class="subicon"> <i class="fas fa-angle-right" onerror="this.onerror=null; this.remove();"></i> </div>` : ""}
            </div>
        </div>
    `;
};

const closeMenu = () => {
    $("#buttons").html(" ");
    buttonParams = [];
};

const postData = (id) => {
    $.post(`https://${GetParentResourceName()}/clickedButton`, JSON.stringify(parseInt(id) + 1));
    return closeMenu();
};

const cancelMenu = () => {
    $.post(`https://${GetParentResourceName()}/closeMenu`);
    return closeMenu();
};

window.addEventListener("message", (event) => {
    const data = event.data;
    const buttons = data.data;
    const action = data.action;
    switch (action) {
        case "OPEN_MENU":
        case "SHOW_HEADER":
            return openMenu(buttons, data.size);
        case "CLOSE_MENU":
            return closeMenu();
        default:
            return;
    }
});

document.onkeyup = function (event) {
    const charCode = event.key;
    if (charCode == "Escape") {
        cancelMenu();
    }
};
