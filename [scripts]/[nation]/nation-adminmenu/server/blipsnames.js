const QBCore = exports["qb-core"].GetCoreObject()
let players = {}
let datacache = {}
let allplayers = []
allplayers = QBCore.Functions.GetPlayers()

setInterval(() => {
    allplayers = QBCore.Functions.GetPlayers()
}, 10000);

doBlipsLoop()

setInterval(() => {
    doBlipsLoop()
}, 1000);


setInterval(() => {
    allplayers = []
    datacache = {}
    players = {}
}, 60000);


function doBlipsLoop() {
    allplayers.forEach(playerid => {
        const playerDataRaw = datacache[playerid] || QBCore.Functions.GetPlayer(playerid)
        if (!playerDataRaw) {return}
        if (!(datacache[playerid])) {
            datacache[playerid] = playerDataRaw
        }
        const playerPed = GetPlayerPed(playerid)
        const player = {
            fullname: `${playerDataRaw.PlayerData.charinfo.firstname || ""} ${playerDataRaw.PlayerData.charinfo.lastname || ""} | (${GetPlayerName(playerid)}) [${playerid}]`,
            coords: GetEntityCoords(playerPed)
        }
        players[playerid] = player
    });
}

onNet("requestBlips", function () {
    emitNet("deliverBlips", source, players)
})