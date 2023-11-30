const fs = require("fs")
let dolog = false
let logfn = Date.now() + (1000 * 60 * 5)
let doextendedsql = true
let doprofilerloop = true
let writeevents = false
let global = false
const delay = require("delay")
let highestSqlTick = 0
let sqlaverage = 0
var axios = require("axios").default;
let last10s1 = 0
let last10s1_cl = 0
let last10s2_cl = 0
let last10sql1 = 0
let last10sql2 = 0
let extev = false

let safe1 = true
let safe2 = true

on("onResourceStop", function(resource){
    if (resource == GetCurrentResourceName()) {
        if (!safe1) {
            ExecuteCommand("proftog")
            console.log("Götünü kurtardim, salak.");
        }
        if (!safe2) {
            ExecuteCommand("proftog_tce")
            console.log("Götünü kurtardim, salak.");
        }
    }
})
on("profilertogglex", function() {
    safe1 = !safe1
})

on("profilertogglex_tce", function() {
    safe2 = !safe2
})


RegisterCommand("pr_enableVD", function () { dolog = !dolog; console.log(dolog) }, true)
RegisterCommand("pr_extev", function () { extev = !extev; console.log(extev) }, true)
RegisterCommand("pr_writeevents", function () { writeevents = !writeevents; console.log(writeevents) }, true)
RegisterCommand("pr_panic", function () { global = !global; console.log(global) }, true)
RegisterCommand("pr_doextendedsql", function () { doextendedsql = !doextendedsql; console.log(doextendedsql) }, true)
RegisterCommand("pr_doprofilerloop", function () { doprofilerloop = !doprofilerloop; console.log(doprofilerloop); }, true)

RegisterCommand("pr_get_enableVD", function () {  console.log(dolog) }, true)
RegisterCommand("pr_get_extev", function () {console.log(extev) }, true)
RegisterCommand("pr_get_writeevents", function () {console.log(writeevents) }, true)
RegisterCommand("pr_get_panic", function () { console.log(global) }, true)
RegisterCommand("pr_get_doextendedsql", function () {  console.log(doextendedsql) }, true)
RegisterCommand("pr_get_doprofilerloop", function () { console.log(doprofilerloop); }, true)

let mysqlavar = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
function log(...args) {
    if (!dolog) { return } 
    console.log(...args);
}
setInterval(() => {
    logfn = Date.now() + (1000 * 60 * 5)
}, (1000 * 60 * 5));

exports("mysqlInput", async function (e, a, n) {
    try {
        if (!global) return
        let extendedsql = ""
        const jsondata_ = JSON.parse(e)
        if (doextendedsql) {
            extendedsql = `[${jsondata_.query}]`
        }
        const exect = jsondata_.exect
        if ((exect > highestSqlTick) && (exect > sqlaverage) && exect > 5) {
            highestSqlTick = jsondata_.exect
            sqlrecord(jsondata_.invr, exect, jsondata_.query)
        }
        last10sql1++
        if (exect > 5) {
            mysqlavar.push(exect)
            mysqlavar.shift()
            if (mysqlavar.length > 50) {
                mysqlavar = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
            }
            calculatemysqlav()
        }
        //log(jsondata_.invr, exect, jsondata_.query.length);
        fs.appendFileSync(`C:\\Users\\Administrator\\Desktop\\adsfsdafs\\${logfn}.log`, `[${Date.now()}][MYSQL]:[${jsondata_.invr}][${exect}][${jsondata_.query.length}][${extendedsql}]\n`)
    } catch (err) {
        console.log(err);
    }
})


exports("eventHandlerTrigger", async function (_, resourceName, eventName, eventPayload, eventSource) {
    last10s1++
    try {
        if (!global) { return }
        if (!writeevents) { return }
        let ext = ""
        if (extev) {
            ext = `[${eventPayload}][${eventSource}]`
        }
        //log("eventHandlerTrigger", resourceName, eventName, eventPayload, eventSource);
        fs.appendFileSync(`C:\\Users\\Administrator\\Desktop\\adsfsdafs\\${logfn}.log`, `[${Date.now()}][EHT]:[${resourceName}][${eventName}]${ext}\n`)

    } catch {

    }
})
exports("triggeredClientEvent", async function (_, resourceName, eventName, targetId) {
    last10s1_cl++
    try {
        if (!global) { return }
        if (!writeevents) { return }
        // log("eventHandlerTrigger", resourceName, eventName, eventPayload, eventSource);
        fs.appendFileSync(`C:\\Users\\Administrator\\Desktop\\adsfsdafs\\${logfn}.log`, `[${Date.now()}][TCE]:[${resourceName}][${eventName}][${targetId}]\n`)

    } catch {

    }
})
doProTick()

async function doProTick() {
    if (doprofilerloop) {
        ExecuteCommand("profiler record start")
    }
    await delay(1000 * 60 * 5)
    ExecuteCommand("profiler record stop")
    await delay(3000)
    if (doprofilerloop) {
        ExecuteCommand(`profiler saveJSON profiles/${Date.now()}.json`)
    }
    await delay(7000)
    doProTick()
}

async function calculatemysqlav() {
    let sum = mysqlavar.reduce((accumulator, currentValue) => {
        return accumulator + currentValue
    }, 0);
    if (sum > 0) {
        sqlaverage = sum / mysqlavar.length
    } else {
        sqlaverage = 1
    }
}


async function sqlrecord(resname, restick, resquery) {
    try {
        const msg = `\`\`\` SQL TICK REKORU KIRILDI\n
        KIRAN SCRIPT : ${resname}\n
        TICK TIME : ${restick}\n
        QUERY: ${resquery} \`\`\` `
        var options = {
            method: 'POST',
            url: 'https://discord.com/api/webhooks/1177163011123851405/JceOlA_poLU8vc3e1H8ydxnyQWFSlOvXFG7tJUOjQQng8VODicE9V9K-CyMoL9zsV-hT',
            params: { wait: '1' },
            data: { username: 'test', avatar_url: '', content: msg }
        };
        axios.request(options)
    } catch { }

}

setInterval(() => {
    try {

        var options = {
            method: 'POST',
            url: 'https://discord.com/api/webhooks/1177163011123851405/JceOlA_poLU8vc3e1H8ydxnyQWFSlOvXFG7tJUOjQQng8VODicE9V9K-CyMoL9zsV-hT',
            params: { wait: '1' },
            data: {
                username: 'test', avatar_url: '', content: `\`\`\` 
            SYNCID : ${logfn}
            OYUNCU SAYISI : ${GetNumberOfPlayers()}
            SQL ORTALAMA SORGU TICK : ${sqlaverage}ms
            SON 10 SANİYE EVENT TRIGGER SAYISI : ${last10s1}, BİR ÖNCEKİ : ${last10s2}
            SON 10 SANİYE CLIENT EVENT TRIGGER SAYISI : ${last10s1_cl}, BİR ÖNCEKİ : ${last10s2_cl}
            SON 10 SANİYE SQL QUERY SAYISI: ${last10sql1}, BİR ÖNCEKİ : ${last10sql2}
            SON 10 SANİYE EN YÜKSEK SQL SORGU TICK : ${highestSqlTick}ms
            \`\`\` ` }
        };
        axios.request(options)
        highestSqlTick = 0
        last10s2 = last10s1
        last10s1 = 0
        last10sql2 = last10sql1
        last10sql1 = 0
        last10sql2_cl = last10sql1_cl
        last10sql1_cl = 0
    } catch { }
}, 10000);
