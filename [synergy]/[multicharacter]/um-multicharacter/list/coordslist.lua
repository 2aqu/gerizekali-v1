Coords = {}


--[[

    !! Important Note

    Do not place your character inside an interior,
    i.e. an apartment or a garage or a house, as interiors are not supported in um-multicharacter
    and the environment may not load

    Your character is spawn in a different world (bucket),
    but it would be better to put your character in a quiet and scenic place where cars don't pass by,
    so don't put your character in the middle of the road,
    I could delete or block cars this with a loop but I thought it was unnecessary

--]]

Coords.List = {
    --[[

        if camCoords is not specified, the camera and ped will try to be set to the same coordinates,
        but if this is not what you want, set it manually by specifying camCoords
        like the 3rd coordinate

    --]]
    {
        pedCoords = vector4(2934.43, 5325.41, 100.62, 128.05)
    },
    {
        pedCoords = vector4(3321.66, 5171.31, 18.42, 98.12)
    },
    {
        pedCoords = vector4(2528.89, 4208.06, 40.03, 323.25),
        camCoords = vector4(2529.9, 4210.20, 40.04, 143.39)
    },
    {
        pedCoords = vector4(1965.92, 4636.62, 40.82, 36.75),
    },
    {
        pedCoords = vector4(-1588.18, -1126.39, 2.57, 268.58),
        camCoords = vector4(-1586.52, -1125.79, 2.58, 95.23)
    },
    {
        pedCoords = vector4(-1683.34, -1129.57, 13.13, 102.49)
    },
    {
        pedCoords = vector4(-1631.62, 194.38, 60.63, 111.56)
    },
    {
        pedCoords = vector4(-1739.52, -1114.48, 13.07, 91.75)
    },
    {
        pedCoords = vector4(-1387.03, 6741.98, 11.98, 67.8)
    },
    {
        pedCoords = vector4(26.96, 200.78, 105.97, 334.61),
        camCoords = vector4(27.60, 202.78, 105.97, 334.61)
    },
}