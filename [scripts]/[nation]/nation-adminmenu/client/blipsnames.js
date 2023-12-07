//setInterval(() => {
//    emitNet("requestBlips")
//    console.log("selm");
//}, 1000);

let blips = {}
let debb = false
RegisterCommand("debugblips", function () {
    debb = !debb
})


onNet("deliverBlips", function (blipData) {
    const sizeInMB = calculateSizeInMB(JSON.stringify(blipData));
    if (debb) {
        console.log(`Text size: ${sizeInMB.toFixed(2)} MB`);
    }
    Object.keys(blipData).forEach(playerId => {
        if (playerId == GetPlayerServerId(PlayerId())) { return }
        if (blips[playerId]) {
            const coords = blipData[playerId]["coords"]
            SetBlipCoords(blips[playerId], coords[0], coords[1], coords[2])
            AddTextComponentSubstringPlayerName(blipData[playerId].fullname)
            EndTextCommandSetBlipName(blips[playerId])
            ShowHeadingIndicatorOnBlip(blips[playerId], true)
        } else {
            const coords = blipData[playerId]["coords"]
            blips[playerId] = AddBlipForCoord(coords[0], coords[1], coords[2], 1, 1)
            SetBlipNameToPlayerName(blips[playerId], playerId)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentSubstringPlayerName(blipData[playerId].fullname)
            EndTextCommandSetBlipName(blips[playerId])
            ShowHeadingIndicatorOnBlip(blips[playerId], true)
            SetBlipCategory(blips[playerId], 7)
        }
    })
})

onNet("clearBlips", function () {
    console.log("sil sil sil sil sil");
    Object.keys(blips).forEach(playerId => {
        RemoveBlip(blips[playerId])
    })
})

function calculateSizeInMB(text) {
    // Calculate the size in bytes (assuming 2 bytes per character)
    const bytes = text.length * 2;

    // Convert bytes to megabytes
    const megabytes = bytes / (1024 * 1024);

    return megabytes;
}
