local Bones = {
    Options = {},
    Vehicle = {'chassis', 'windscreen', 'seat_pside_r', 'seat_dside_r', 'bodyshell', 'suspension_lm', 'suspension_lr',
               'platelight', 'attach_female', 'attach_male', 'bonnet', 'boot', 'chassis_dummy', 'chassis_Control',
               'door_dside_f', 'door_dside_r', 'door_pside_f', 'door_pside_r', 'Gun_GripR', 'windscreen_f',
               'platelight', 'VFX_Emitter', 'window_lf', 'window_lr', 'window_rf', 'window_rr', 'engine', 'gun_ammo',
               'ROPE_ATTATCH', 'wheel_lf', 'wheel_lr', 'wheel_rf', 'wheel_rr', 'exhaust', 'overheat', 'seat_dside_f',
               'seat_pside_f', 'Gun_Nuzzle', 'seat_r'}
}

if Config.EnableDefaultOptions then
    local BackEngineVehicles = {
        ["ninef"] = true,
        ["adder"] = true,
        ["vagner"] = true,
        ["t20"] = true,
        ["infernus"] = true,
        ["zentorno"] = true,
        ["reaper"] = true,
        ["comet2"] = true,
        ["comet3"] = true,
        ["jester"] = true,
        ["jester2"] = true,
        ["cheetah"] = true,
        ["cheetah2"] = true,
        ["prototipo"] = true,
        ["turismor"] = true,
        ["pfister811"] = true,
        ["ardent"] = true,
        ["nero"] = true,
        ["nero2"] = true,
        ["tempesta"] = true,
        ["vacca"] = true,
        ["bullet"] = true,
        ["osiris"] = true,
        ["entityxf"] = true,
        ["turismo2"] = true,
        ["fmj"] = true,
        ["re7b"] = true,
        ["tyrus"] = true,
        ["italigtb"] = true,
        ["penetrator"] = true,
        ["monroe"] = true,
        ["ninef2"] = true,
        ["stingergt"] = true,
        ["surfer"] = true,
        ["surfer2"] = true,
        ["gp1"] = true,
        ["autarch"] = true,
        ["tyrant"] = true
    }

    local function ToggleDoor(vehicle, door)
        if GetVehicleDoorLockStatus(vehicle) < 2 then
            if GetVehicleDoorAngleRatio(vehicle, door) > 0.0 then
                SetVehicleDoorShut(vehicle, door, false)
            else
                SetVehicleDoorOpen(vehicle, door, false)
            end
        end
    end

    Bones.Options['seat_dside_f'] = {
        ["Şöfor Kapısını Aç/Kapat"] = {
            icon = "fas fa-door-open",
            label = "Şöfor Kapısını Aç/Kapat",
            canInteract = function(entity)
                return GetEntityBoneIndexByName(entity, 'door_dside_f') ~= -1
            end,
            action = function(entity)
                ToggleDoor(entity, 0)
            end,
            distance = 1.2
        }
    }
    Bones.Options['seat_pside_f'] = {
        ["Yolcu Kapısını Aç/Kapat"] = {
            icon = "fas fa-door-open",
            label = "Yolcu Kapısını Aç/Kapat",
            canInteract = function(entity)
                return GetEntityBoneIndexByName(entity, 'door_pside_f') ~= -1
            end,
            action = function(entity)
                ToggleDoor(entity, 1)
            end,
            distance = 1.2
        }
    }

    Bones.Options['seat_dside_r'] = {
        ["Arka Şoför Tarafı Kapısını Aç/Kapat"] = {
            icon = "fas fa-door-open",
            label = "Arka Şoför Tarafı Kapısını Aç/Kapat",
            canInteract = function(entity)
                return GetEntityBoneIndexByName(entity, 'door_dside_r') ~= -1
            end,
            action = function(entity)
                ToggleDoor(entity, 2)
            end,
            distance = 1.2
        }
    }

    Bones.Options['seat_pside_r'] = {
        ["Arka Yolcu Tarafı Kapısını Aç/Kapat"] = {
            icon = "fas fa-door-open",
            label = "Arka Yolcu Tarafı Kapısını Aç/Kapat",
            canInteract = function(entity)
                return GetEntityBoneIndexByName(entity, 'door_pside_r') ~= -1
            end,
            action = function(entity)
                ToggleDoor(entity, 3)
            end,
            distance = 1.2
        }
    }

    Bones.Options['bonnet'] = {
        ["Kaputu Aç/Kapat"] = {
            icon = "fa-duotone fa-engine",
            label = "Kaputu Aç/Kapat",
            action = function(entity)
                ToggleDoor(entity, BackEngineVehicles[GetEntityModel(entity)] and 5 or 4)
            end,
            distance = 0.9
        }
    }
    Bones.Options['boot'] = {
        ["Bagajı Aç/Kapat"] = {
            icon = "fas fa-truck-ramp-box",
            label = "Bagajı Aç/Kapat",
            action = function(entity)
                ToggleDoor(entity, BackEngineVehicles[GetEntityModel(entity)] and 4 or 5)
            end,
            distance = 0.9
        },
        ["Bagaja Gir"] = {
            icon = "fas fa-truck-ramp-box",
            label = "Bagaja Gir",
            event = "qb-trunk:client:GetIn",
            distance = 0.9
        }
    }
    Bones.Options['engine'] = {
        ["DriftChip Ara"] = {
            icon = "fas fa-truck-ramp-box",
            label = "DriftChip Ara",
            action = function(entity)
                print("za")
            end,
            distance = 2
        }
    }
end

return Bones
