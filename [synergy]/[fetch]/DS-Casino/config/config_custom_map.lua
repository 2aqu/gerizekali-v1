function custom_is_in_casino()
    local ped = PlayerPedId()
    local int = GetInteriorFromEntity(ped)

    if int == 0 then
        return false
    end

    local inside = int ~= 0 and (GetInteriorRoomName(int, 1) == "your_room")
    return inside
end

--CASHIER
custom_cashier_pos = vec3(1117.761, 220.0465, -50.43518)
custom_cashier_heading = 92.46362

--CASINO AREA
custom_casino_area_min = vec3(1089.675, 206.0661, -48.99972)
custom_casino_area_max = vec3(1192.385, 330.2569, -52.84082)

--BUY CHIPS
custom_buy_chips_coords = vec3(989.6456, 32.34665, 71.46609)

--BOSS MENU
custom_society_coords = vec3(999.3372, 53.3801, 75.06965)

--CCTV OPEN MENU
custom_open_cam_coords = vec3(997.5077, 52.86699, 75.06965)

--BOSS ELEVATOR
custom_elevator_coords_enter = vec3(1017.135, 70.16774, 69.86058)
custom_elevator_coords_exit = vec3(993.8678, 56.22727, 75.05975)

--CCTV
custom_cctv = {
    {label = 'Security Camera [1]', x = 986.7656, y = 35.7915, z = 83.85557, r = {x = -25.0, y = 0.0, z = -10.0}, canRotate = true},
    {label = 'Security Camera [2]', x = 992.3175, y= 44.27831, z= 83.85557, r = {x = -25.0, y = 0.0, z = 10.0}, canRotate = true},
}

--LUCKY WHEEL
custom_luckywheel_spawnbase = true
custom_luckywheel_pos = vec3(964.643250, 49.322929, 80.856282)
custom_luckywheel_heading = 58.0
custom_luckywheel_vehicle_pos = vec3(970.0049, 46.02151, 81.57808)
custom_luckywheel_vehicle_heading = 244.3798

--ROULETTE
RouletteTables = {
    [1] = {
        position = vector3(982.164490, 52.203957, 69.232758),
        rot = -77.0
    },
}

--BLACKJACK
BlackJackTables = {
    {
        coords = vec4(1027.855, 40.083, 68.860, 103.466),
        highStakes = false
    },
}

--POKER
PokerTables = {
    [1] = {
        Position = vector3(991.848511, 62.164890, 79.980583),
        Heading = 60.0,
    },
}

--INSIDETRACK SCREEN POSITION
ScreenPos = vec3(992.5667, 83.13076, 69.66022)