if Config.Locale == 'cs' then
    Locales = {
        -- LEVÉ MENU
        ['LEFT_WELCOME'] = 'Vítejte',
        ['LEFT_DASHBOARD'] = 'Nástěnka',
        ['LEFT_PROFILES'] = 'Profily',
        ['LEFT_INCIDENTS'] = 'Incidenty',
        ['LEFT_WARRANTS'] = 'Zatykače',
        ['LEFT_VEHICLES'] = 'Vozidla',
        ['LEFT_CAMS'] = 'Kamery',
        ['LEFT_CALLS'] = 'Hovory',
        ['LEFT_EVIDENCE'] = 'Důkazy',
        ['LEFT_CHARGES'] = 'Obvinění',
        ['LEFT_SETTINGS'] = 'Nastavení',
        ['LEFT_HOUSES'] = 'Domy',
        ['LEFT_LIVE_MAP'] = 'Živá mapa',

        -- ZÁHLAVÍ
        ['HEADER_EXITFROM'] = 'UKONČIT Z',
        ['HEADER_POLICEMDT'] = 'POLICEJNÍ MDT',

        -- NÁSTĚNKA
        ['DASHBOARD_COPS'] = 'POLICISTÉ',
        ['DASHBOARD_CALLS'] = 'HOVORY',
        ['DASHBOARD_LIVEMAP'] = 'ŽIVÁ MAPA',
        ['DASHBOARD_ONLINECOPS'] = 'ONLINE POLICISTÉ',
        ['DASHBOARD_CHAT'] = 'CHAT',
        ['DASHBOARD_WARRANT'] = 'ZATYKAČE',
        ['DASHBOARD_ACTIVE'] = 'Aktivní',
        ['DASHBOARD_SENDMESSAGE'] = 'Napište něco...',

        -- PROFILY
        ['PROFILES_HEADER'] = 'PROFILY',
        ['PROFILES_SEARCH'] = 'Hledat osobu (jméno)',
        ['PROFILES_CHANGEPHOTO_1'] = 'Změnit',
        ['PROFILES_CHANGEPHOTO_2'] = 'Fotografie',
        ['PROFILES_NAME'] = 'Jméno',
        ['PROFILES_LASTNAME'] = 'Příjmení',
        ['PROFILES_BIRTHDATE'] = 'Datum narození',
        ['PROFILES_PROFESSION'] = 'Práce',
        ['PROFILES_CITZENID'] = 'Občanský průkaz',
        ['PROFILES_NUMBER'] = 'Telefonní číslo',
        ['PROFILES_INCIDENTS'] = 'INCIDENTY', 
        ['PROFILES_INCIDENT'] = 'Incidenty',
        ['PROFILES_WARRANTS'] = 'ZATYKAČE',
        ['PROFILES_WARRANT'] = 'Zatykač',
        ['PROFILES_INFORMATION'] = 'Napište informace o osobě',
        ['PROFILES_LICENSES'] = 'LICENCE',
        ['PROFILES_VEHICLES'] = 'VOZIDLA',
        ['PROFILES_VEHICLE'] = 'Vozidlo',
        ['PROFILES_GALLERY'] = 'GALERIE',
        ['PROFILES_ADDPHOTO'] = 'PŘIDAT FOTOGRAFII',
        ['PROFILES_HOUSES'] = 'DOMY',
        ['PROFILES_HOUSE'] = 'Dům',
        ['PRFILES_EXIST'] = 'TATO OSOBA NEEXISTUJE',
        
        -- INCIDENTY
        ['INCIDENTS_HEADER'] = 'INCIDENTY',
        ['INCIDENTS_SEARCH'] = 'Hledat incident',
        ['INCIDENTS_CREATE'] = 'VYTVOŘIT INCIDENT',
        ['INCIDENTS_NAME'] = 'Název incidentu',
        ['INCIDENTS_DESCRIPTION'] = 'Popis incidentu',
        ['INCIDENTS_EVIDENCES'] = 'Důkazy',
        ['INCIDENTS_ADD_EVIDENCES'] = 'PŘIDAT DŮKAZY',
        ['INCIDENTS_FINES'] = 'Pokuty',
        ['INCIDENTS_ADD_FINES'] = 'PŘIDAT POKUTY',

        -- ZATYKAČE
        ['WARRANTS_HEADER'] = 'ZATYKAČE',
        ['WARRANTS_SEARCH'] = 'Hledat zatykač',
        ['WARRANTS_CREATE'] = 'VYTVOŘIT ZATYKAČ',
        ['WARRANTS_NAME'] = 'Název zatykače',
        ['WARRANTS_REASON'] = 'Důvod zatykače',
        ['WARRANTS_TYPE'] = 'Typ zatykače',
        ['WARRANTS_TYPE_SEARCH'] = 'Hledat zatykač',
        ['WARRANTS_TYPE_ARREST'] = 'Zatykač na zatčení',
        ['WARRANTS_ADRESS'] = 'Adresa',

        -- VOZIDLA
        ['VEHICLES_HEADER'] = 'VOZIDLA',
        ['VEHICLES_SEARCH'] = 'Hledat vozidlo (jméno nebo SPZ)',
        ['VEHICLES_INFO'] = 'INFORMACE O VOZIDLE',
        ['VEHICLES_MODEL'] = 'Model',
        ['VEHICLES_CATEGORY'] = 'Kategorie',
        ['VEHICLES_COLOR'] = 'Barva',

        ['VEHICLES_PLATE'] = 'SPZ',
        ['VEHICLES_OWNER'] = 'Majitel vozidla',
        ['VEHICLES_INCIDENTS'] = 'Incidenty',
        ['VEHICLES_WARRANTS'] = 'Zatykače',
        ['VEHICLES_GALLERY'] = 'GALERIE VOZIDEL',
        ['VEHICLES_ADDPHOTO'] = 'PŘIDAT FOTOGRAFII',

        -- KAMERY
        ['CAMS_HEADER'] = 'KAMERY',
        ['CAMIP'] = '145.181.0.11',

        -- HOVORY
        ['CALLS_HEADER'] = 'HOVORY',
        ['CALLS_SETWAYPOINT'] = 'Nastavit cíl',
        ['CALLS_VIEW'] = 'Zobrazit na živé mapě',
        ['CALLS_REMOVECALL'] = 'Odstranit hovor',

        -- DŮKAZY
        ['EVIDENCES_HEADER'] = 'DŮKAZY',
        ['EVIDENCES_SEARCH'] = 'Hledat důkaz',
        ['EVIDENCES_CREATE'] = 'VYTVOŘIT DŮKAZ',
        ['EVIDENCES_NAME'] = 'Název důkazu',
        ['EVIDENCES_DESCRIPTION'] = 'Popis důkazu',

        -- OBVINĚNÍ
        ['CHARGES_HEADER'] = 'OBVINĚNÍ',
        ['CHARGES_SERACH'] = 'Hledat obvinění',
        ['CHARGES_SERVICE'] = 'Veřejně prospěšné práce',
        ['CHARGES_TIME'] = 'Vězení',

        -- DOMY
        ['HOUSES_HEADER'] = 'DOMY',
        ['HOUSES_SEARCH'] = 'Hledat dům',
        ['HOUSES_INFO'] = 'INFORMACE O DOMĚ',
        ['HOUSES_ADRESS'] = 'Adresa',
        ['HOUSES_OWNER'] = 'Majitel domu',

        -- ŽIVÁ MAPA
        ['LMAP_HEADER'] = 'ŽIVÁ MAPA',
        ['LMAP_CALLS'] = 'HOVORY',
        ['LMAP_COPS'] = 'POLICISTÉ',
        ['LMAP_HOUSES'] = 'DOMY',

        ['LMAP_ONMAP'] = 'Jít na mapu',
        ['LMAP_DBLCLICK'] = 'Dvojitým kliknutím nastavte cíl',
        ['LMAP_RESET'] = 'RESET',

        -- NASTAVENÍ
        ['SETTINGS_HEADER'] = 'NASTAVENÍ',
        ['SETTINGS_GPSCODE'] = 'Nastavit kód GPS',
        ['TYPE_CODE'] = 'Kód GPS',
        ['LIGHTTHEME'] = 'SVĚTLÉ TÉMA',
        ['DARKTHEME'] = 'TMANÉ TÉMA',

        -- VSTUPY
        ['INPUTS_CREATEFINE'] = 'VYTVOŘIT POKUTU',
        ['INPUTS_REASON'] = 'Zadejte důvod',
        ['INPUTS_MONEY'] = 'Peníze (číslo)',
        ['INPUTS_SERVICE'] = 'Veřejně prospěšné práce (číslo)',
        ['INPUTS_JAIL'] = 'Vězení (číslo)',
        ['INPUTS_CATEGORYNAME'] = 'Název kategorie',
        ['INPUTS_CREATECATEGORY'] = 'VYTVOŘIT KATEGORII',
        ['INPUTS_SEARCHPERSON'] = 'Hledat osobu (jméno)',
        ['INPUTS_SEARCHCOP'] = 'Hledat policistu (jméno)',
        ['INPUTS_SEARCHVEHICLE'] = 'Hledat vozidlo (SPZ)',
        ['INPUTS_SEARCHEVIDENCES'] = 'Hledat důkazy (jméno)',
        ['INPUTS_SEARCHFINES'] = 'Hledat pokuty (kategorie)',
        ['INPUTS_ADDPHOTO'] = 'PŘIDAT FOTOGRAFII',
        ['INPUTS_TAKEPHOTO'] = 'POŘÍDIT FOTOGRAFII',

        -- OBECNÉ
        ['EDIT'] = 'UPRAVIT',
        ['SAVE'] = 'ULOŽIT',
        ['DELETE'] = 'ODSTRANIT',
        ['INSPECT'] = 'PROHLÉDNOUT',
        ['CREATE'] = 'VYTVOŘIT',
        ['ADD'] = 'PŘIDAT',
        ['ENTER_URL'] = 'Zadejte URL',
        ['SELECT'] = 'VYBERTE PROSÍM',
        ['UNKOWN'] = 'Neznámý',
        ['WARRANTS'] = 'Zatykače',
        ['EVIDENCES'] = 'Důkazy',
        ['GALLERY_EMPTY'] = 'GALERIE JE PRÁZDNÁ',
        ['WARRANT_EMPTY'] = 'ZATYKAČ JE PRÁZDNÝ',
        ['CHAT_EMPTY'] = 'CHAT JE PRÁZDNÝ',
        ['INCIDENTS_EMPTY'] = 'INCIDENTY JSOU PRÁZDNÉ',
        ['LICENSES_EMPTY'] = 'LICENCE JSOU PRÁZDNÉ',
        ['VEHICLES_EMPTY'] = 'VOZIDLA JSOU PRÁZDNÁ',
        ['HOUSES_EMPTY'] = 'DOMY JSOU PRÁZDNÉ',
        ['HOUSE'] = 'Dům',
        ['PEOPLE_INVOLVED'] = 'Zúčastněné osoby',
        ['ADD_PEOPLE'] = 'PŘIDAT ZÚČASTNĚNÉ OSOBY',
        ['COPS_INVOLVED'] = 'Zúčastnění policisté',
        ['ADD_COPS'] = 'PŘIDAT ZÚČASTNĚNÉ POLICISTY',
        ['VEHICLE_INVOLVED'] = 'Zúčastněná vozidla',
        ['ADD_VEHICLES'] = 'PŘIDAT VOZIDLA',
        ['ADDLICENSE'] = 'PŘIDAT LICENCI',
        ['COMMUNITYSERVICE'] = 'Veřejně prospěšné práce',
        ['JAILTIME'] = 'Vězení',
        ['IMAGES'] = 'Obrázky',
        ['CURRENCY'] = '$'
    }
end