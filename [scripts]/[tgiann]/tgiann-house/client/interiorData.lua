--the number of bedrooms and toilet rooms in the interior
interiorFeatures = {
    --[[ 
    -- Example
    ["testName"] = { -- Instead of testName, you can write whatever you want, but it must be the same as the name you will add below.
        {"2 Bedrooms"},
        {"1 Bathrooms"},
    }, ]]
    ["GetGTAOHouseLow1Object"] = {
        {"2 Bedrooms"},
        {"1 Bathrooms"},
    },
    ["GetGTAOHouseMid1Object"] = {
        {"2 Bedrooms"},
        {"1 Bathrooms"},
    },
    ["GetGTAOHouseHi8Object"] = {
        {"2 Bedrooms"},
        {"1 Bathrooms"},
    },
    ["GetGTAOHouseHi7Object"] = {
        {"2 Bedrooms"},
        {"1 Bathrooms"},
    },
    ["GetGTAOHouseHi6Object"] = {
        {"2 Bedrooms"},
        {"1 Bathrooms"},
    },
    ["GetGTAOHouseHi5Object"] = {
        {"2 Bedrooms"},
        {"1 Bathrooms"},
    },
    ["GetGTAOHouseHi4Object"] = {
        {"2 Bedrooms"},
        {"1 Bathrooms"},
    },
    ["GetGTAOHouseHi3Object"] = {
        {"2 Bedrooms"},
        {"1 Bathrooms"},
    },
    ["GetGTAOHouseHi2Object"] = {
        {"2 Bedrooms"},
        {"1 Bathrooms"},
    },
    ["GetGTAOHouseHi1Object"] = {
        {"2 Bedrooms"},
        {"1 Bathrooms"},
    },
    ["GetGTAOApartmentHi2Object"] = {
        {"2 Bedrooms"},
        {"1 Bathrooms"},
    },
    ["GetGTAOApartmentHi1Object"] = {
        {"2 Bedrooms"},
        {"1 Bathrooms"},
    },
    ["GetHLApartment1Object"] = {
        {"2 Bedrooms"},
        {"1 Bathrooms"},
    },
    ["GetHLApartment2Object"] = {
        {"2 Bedrooms"},
        {"1 Bathrooms"},
    },
    ["GetHLApartment3Object"] = {
        {"2 Bedrooms"},
        {"1 Bathrooms"},
    },
    ["GetHLApartment4Object"] = {
        {"2 Bedrooms"},
        {"1 Bathrooms"},
    },
    ["GetHLApartment5Object"] = {
        {"2 Bedrooms"},
        {"1 Bathrooms"},
    },
    ["GetHLApartment6Object"] = {
        {"2 Bedrooms"},
        {"1 Bathrooms"},
    },
    ["GetExecApartment1Object"] = {
        {"2 Bedrooms"},
        {"1 Bathrooms"},
    },
    ["GetExecApartment2Object"] = {
        {"2 Bedrooms"},
        {"1 Bathrooms"},
    },
    ["GetExecApartment3Object"] = {
        {"2 Bedrooms"},
        {"1 Bathrooms"},
    },
    ["Motel1"] = {
        {"2 Bedrooms"},
        {"1 Bathrooms"},
    }
}

--Do not translate any text(Smoke, Strip, Enable, none, stage1, etc)
interior = {
    --[[ 
    ["testName"] = { -- must be the same as the house name you wrote above
        notBobIpl = true, --Don't change This
        door = vector3(151.22120666504, -1007.8682861328, -100.000038146973),
        settings =vector3(155.50151062012, -1005.8213500977, -98.999900817871),
        storage = vector3(150.8981628418, -1003.1119995117, -99.000038146973),
        wardrobe = vector3(152.27243041992, -1000.4721069336, -98.999900817871),
    }, 
    ]]
    ["GetGTAOHouseLow1Object"] = {
        door = vector3(266.07452392578, -1007.5321044922, -102.0085067749),
        settings = vector3(263.90451049805, -994.77618408203, -99.008674621582),
        storage = vector3(263.63970947266, -1003.1755371094, -99.00855255127),
        wardrobe = vector3(259.60559082031, -1003.9588012695, -99.00855255127),
        data = {
            ["Strip"] = {
                feature = {"B","A","C"},
                functionName = "Enable"
            },
            ["Booze"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
            ["Smoke"] = {
                feature = {"none", "stage1", "stage2", "stage3" },
                functionName = "Set"
            },
        }
    },
    ["GetGTAOHouseMid1Object"] = {
        door = vector3(346.52368164063, -1013.1513671875, -100.1962890625),
        settings = vector3(342.1233215332, -1003.8807373047, -99.1962890625),
        storage = vector3(351.29867553711, -1000.1115112305, -99.196311950684),
        wardrobe = vector3(350.55487060547, -993.73944091797, -99.196296691895),
        data = {
            ["Strip"] = {
                feature = {"B","A","C"},
                functionName = "Enable"
            },
            ["Booze"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
            ["Smoke"] = {
                feature = {"none", "stage1", "stage2", "stage3" },
                functionName = "Set"
            },
        }
    },
    ["GetGTAOHouseHi8Object"] = {
        door = vector3(-1289.8123779297, 449.77795410156, 96.902481079102),
        settings = vector3(-1284.0920410156, 447.30557250977, 97.894676208496),
        storage = vector3(-1290.7716064453, 432.9333190918, 94.094848632813),
        wardrobe = vector3(-1286.0046386719, 438.23342895508, 94.094848632813),
        data = {
            ["Strip"] = {
                feature = {"B","A","C"},
                functionName = "Enable"
            },
            ["Booze"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
            ["Smoke"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
        }
    },
    ["GetGTAOHouseHi7Object"] = {
        door = vector3(117.27876281738, 560.09185791016, 183.3048248291),
        settings = vector3(123.00011444092, 558.15515136719, 184.29699707031),
        storage = vector3(117.9992980957, 543.26397705078, 180.53005981445),
        wardrobe = vector3(122.22928619385, 548.84338378906, 180.49714660645),
        data = {
            ["Strip"] = {
                feature = {"B","A","C"},
                functionName = "Enable"
            },
            ["Booze"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
            ["Smoke"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
        }
    },
    ["GetGTAOHouseHi6Object"] = {
        door = vector3(-860.01440429688, 691.40649414063, 151.86065673828),
        settings = vector3(-854.05920410156, 689.4951171875, 152.8528137207),
        storage = vector3(-859.66271972656, 674.65948486328, 149.07446289063),
        wardrobe = vector3(-855.22894287109, 679.88391113281, 149.0530090332),
        data = {
            ["Strip"] = {
                feature = {"B","A","C"},
                functionName = "Enable"
            },
            ["Booze"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
            ["Smoke"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
        }
    },
    ["GetGTAOHouseHi5Object"] = {
        door = vector3(-758.22271728516, 619.04943847656, 143.14068603516),
        settings = vector3(-757.96942138672, 611.97521972656, 144.14053344727),
        storage = vector3(-773.78076171875, 613.60217285156, 140.34310913086),
        wardrobe = vector3(-767.37982177734, 610.81884765625, 140.33076477051),
        data = {
            ["Strip"] = {
                feature = {"B","A","C"},
                functionName = "Enable"
            },
            ["Booze"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
            ["Smoke"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
        }
    },
    ["GetGTAOHouseHi4Object"] = {
        door = vector3(-682.54437255859, 592.69097900391, 144.37989807129),
        settings = vector3(-676.32312011719, 595.79235839844, 145.37968444824),
        storage = vector3(-671.73760986328, 579.99462890625, 141.59889221191),
        wardrobe = vector3(-671.44970703125, 587.17346191406, 141.57000732422),
        data = {
            ["Strip"] = {
                feature = {"B","A","C"},
                functionName = "Enable"
            },
            ["Booze"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
            ["Smoke"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
        }
    },
    ["GetGTAOHouseHi3Object"] = {
        door = vector3(373.63775634766, 423.76901245117, 144.9077911377),
        settings = vector3(378.50231933594, 420.1496887207, 145.89994812012),
        storage = vector3(368.45971679688, 407.74737548828, 142.13426208496),
        wardrobe = vector3(374.40145874023, 411.64520263672, 142.10014343262),
        data = {
            ["Strip"] = {
                feature = {"B","A","C"},
                functionName = "Enable"
            },
            ["Booze"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
            ["Smoke"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
        }
    },
    ["GetGTAOHouseHi2Object"] = {
        door = vector3(341.88388061523, 437.6852722168, 148.39390563965),
        settings = vector3(343.46276855469, 431.09652709961, 149.38082885742),
        storage = vector3(327.94451904297, 430.72833251953, 145.60589599609),
        wardrobe = vector3(334.11178588867, 428.39108276367, 145.57095336914),
        data = {
            ["Strip"] = {
                feature = {"B","A","C"},
                functionName = "Enable"
            },
            ["Booze"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
            ["Smoke"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
        }
    },
    ["GetGTAOHouseHi1Object"] = {
        door = vector3(-174.19421386719, 497.61044311523, 136.66693115234),
        settings = vector3(-167.45524597168, 497.31311035156, 137.65362548828),
        storage = vector3(-170.98779296875, 482.15386962891, 133.86849975586),
        wardrobe = vector3(-167.45610046387, 487.65414428711, 133.84385681152),
        data = {
            ["Strip"] = {
                feature = {"B","A","C"},
                functionName = "Enable"
            },
            ["Booze"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
            ["Smoke"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
        }
    },
    ["GetGTAOApartmentHi2Object"] = {
        door = vector3(-1457.8688964844, -520.43792724609, 55.928985595703),
        settings = vector3(-1464.1235351563, -535.84625244141, 55.526401519775),
        storage = vector3(-1469.1756591797, -534.39282226563, 50.7216796875),
        wardrobe = vector3(-1467.31640625, -537.13439941406, 50.732490539551),
        data = {
            ["Strip"] = {
                feature = {"B","A","C"},
                functionName = "Enable"
            },
            ["Booze"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
            ["Smoke"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
        }
    },
    ["GetGTAOApartmentHi1Object"] = {
        door = vector3(-18.421422958374, -581.91613769531, 89.114799499512),
        settings = vector3(-34.676464080811, -585.70965576172, 88.712272644043),
        storage = vector3(-36.525615692139, -580.38214111328, 83.90754699707),
        wardrobe = vector3(-37.774967193604, -583.56921386719, 83.918296813965),
        data = {
            ["Strip"] = {
                feature = {"B","A","C"},
                functionName = "Enable"
            },
            ["Booze"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
            ["Smoke"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
        }
    },
    ["GetHLApartment1Object"] = {
        door = vector3(-1456.5649414063, -534.37420654297, 73.044593811035),
        settings = vector3(-1471.3850097656, -536.99542236328, 73.44416809082),
        storage = vector3(-1466.3347167969, -529.02239990234, 73.443603515625),
        wardrobe = vector3(-1449.9613037109, -549.2587890625, 72.843643188477),
        data = {
            ["Strip"] = {
                feature = {"B","A","C"},
                functionName = "Enable"
            },
            ["Booze"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
            ["Smoke"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
        }
    },
    ["GetHLApartment2Object"] = {
        door = vector3(-919.43096923828, -368.52258300781, 113.27503204346),
        settings = vector3(-918.99047851563, -383.72842407227, 113.67462921143),
        storage = vector3(-926.26843261719, -377.43167114258, 113.67407989502),
        wardrobe = vector3(-903.49603271484, -364.2861328125, 113.07420349121),
        data = {
            ["Strip"] = {
                feature = {"B","A","C"},
                functionName = "Enable"
            },
            ["Booze"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
            ["Smoke"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
        }
    },
    ["GetHLApartment3Object"] = {
        door = vector3(-610.85711669922, 58.876792907715, 97.200531005859),
        settings = vector3(-617.14727783203, 45.266139984131, 97.600074768066),
        storage = vector3(-620.77691650391, 53.9387550354, 97.599578857422),
        wardrobe = vector3(-594.62841796875, 56.412498474121, 96.999633789063),
        data = {
            ["Strip"] = {
                feature = {"B","A","C"},
                functionName = "Enable"
            },
            ["Booze"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
            ["Smoke"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
        }
    },
    ["GetHLApartment4Object"] = {
        door = vector3(-777.24737548828, 323.73587036133, 210.99760437012),
        settings = vector3(-770.99914550781, 337.39874267578, 211.39710998535),
        storage = vector3(-767.40386962891, 328.65231323242, 211.39653015137),
        wardrobe = vector3(-793.46801757813, 326.6921081543, 210.79670715332),
        data = {
            ["Strip"] = {
                feature = {"B","A","C"},
                functionName = "Enable"
            },
            ["Booze"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
            ["Smoke"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
        }
    },
    ["GetHLApartment5Object"] = {
        door = vector3(-24.130931854248, -597.65777587891, 79.031234741211),
        settings = vector3(-13.516665458679, -586.96362304688, 79.43074798584),
        storage = vector3(-13.095878601074, -596.60186767578, 79.430267333984),
        wardrobe = vector3(-38.091247558594, -589.08514404297, 78.830307006836),
        data = {
            ["Strip"] = {
                feature = {"B","A","C"},
                functionName = "Enable"
            },
            ["Booze"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
            ["Smoke"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
        }
    },
    ["GetHLApartment6Object"] = {
        door = vector3(-610.83618164063, 58.887042999268, -183.38046264648),
        settings = vector3(-617.15832519531, 45.347545623779, -182.98091125488),
        storage = vector3(-621.04150390625, 54.287647247314, -182.98149108887),
        wardrobe = vector3(-594.64971923828, 55.624099731445, -183.5813293457),
        data = {
            ["Strip"] = {
                feature = {"B","A","C"},
                functionName = "Enable"
            },
            ["Booze"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
            ["Smoke"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
        }
    },
    ["GetExecApartment1Object"] = {
        door = vector3(-781.72290039063, 318.02426147461, 216.63854980469),
        settings = vector3(-783.18658447266, 327.57949829102, 217.03825378418),
        storage = vector3(-800.70367431641, 338.51422119141, 220.43853759766),
        wardrobe = vector3(-797.78552246094, 328.26287841797, 220.43853759766),
        data = {
            ["Strip"] = {
                feature = {"B","A","C"},
                functionName = "Enable"
            },
            ["Booze"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
            ["Smoke"] = {
                feature = {"none", "stage1", "stage2", "stage3" },
                functionName = "Set"
            },
            ["Style"] = {
                feature = {"modern","moody","vibrant","monochrome","seductive","regal","aqua"},
                functionName = "Set"
            }
        }
    },
    ["GetExecApartment2Object"] = {
        door = vector3(-779.08715820313, 339.79946899414, 195.68612670898),
        settings = vector3(-777.30419921875, 330.25256347656, 196.08940124512),
        storage = vector3(-760.45056152344, 319.61431884766, 199.48635864258),
        wardrobe = vector3(-763.08984375, 329.81997680664, 199.48628234863),
        data = {
            ["Strip"] = {
                feature = {"B","A","C"},
                functionName = "Enable"
            },
            ["Booze"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
            ["Smoke"] = {
                feature = {"none", "stage1", "stage2", "stage3" },
                functionName = "Set"
            },
            ["Style"] = {
                feature = {"modern","moody","vibrant","monochrome","seductive","regal","aqua"},
                functionName = "Set"
            }
        }
    },
    ["GetExecApartment3Object"] = {
        door = vector3(-781.78485107422, 317.95504760742, 186.91372680664),
        settings = vector3(-783.61151123047, 327.51263427734, 187.31324768066),
        storage = vector3(-797.56451416016, 333.93035888672, 190.71340942383),
        wardrobe = vector3(-797.83032226563, 328.45712280273, 190.71340942383),
        data = {
            ["Strip"] = {
                feature = {"B","A","C"},
                functionName = "Enable"
            },
            ["Booze"] = {
                feature = {"A","B","C"},
                functionName = "Enable"
            },
            ["Smoke"] = {
                feature = {"none", "stage1", "stage2", "stage3" },
                functionName = "Set"
            },
            ["Style"] = {
                feature = {"modern","moody","vibrant","monochrome","seductive","regal","aqua"},
                functionName = "Set"
            }
        }
    },
    ["Motel1"] = {
        notBobIpl = true,
        door = vector3(151.22120666504, -1007.8682861328, -100.000038146973),
        settings =vector3(155.50151062012, -1005.8213500977, -98.999900817871),
        storage = vector3(150.8981628418, -1003.1119995117, -99.000038146973),
        wardrobe = vector3(152.27243041992, -1000.4721069336, -98.999900817871),
    },

    ["2cargarage"] = {
        door = vector3(179.07846069336, -1000.3582763672, -99.999946594238),
    },
    ["6cargarage"] = {
        door = vector3(207.25703430176, -999.10418701172, -100.0),
    },
    ["10cargarage"] = {
        door = vector3(238.51811218262, -1004.8156738281, -99.999977111816),
    }
}