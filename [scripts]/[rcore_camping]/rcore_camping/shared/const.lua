ANIM_FLAG_NORMAL = 0
ANIM_FLAG_REPEAT = 1
ANIM_FLAG_STOP_LAST_FRAME = 2
ANIM_FLAG_UPPERBODY = 16
ANIM_FLAG_ENABLE_PLAYER_CONTROL = 32
ANIM_FLAG_CANCELABLE = 120

--consts
Controls = {
    PLACE = 'place',
    CANCEL = 'cancel',
    LEAVE_TENT = 'leave_tent',
    ROT_LEFT = 'rot_left',
    ROT_RIGHT = 'rot_right',
}

Types = {
    TENT = 'tent',
    FIREPLACE = 'fireplace',
    CHAIR = 'chair',
    GAZEBO = 'gazebo',
    BEER = 'beer',
}

AnimationTypes = {
    PLACE = 'place',
    CLEAR = 'clear',
}

BeerType = {
    ['0_5'] = '0_5',
    ['0_3'] = '0_3',
}

BeerTypeItemMap = {
    ['0_5'] = 'beer_05',
    ['0_3'] = 'beer_03',
}

Animation = {
    CHICKEN = 'fire_chicken_stick',
    FISH = 'fire_fish_stick',
    EMPTY = 'fire_wood_stick',
}

Items = {
    WOOD = 'wood',
    FLINT = 'flint',
}

SECONDS = 1000
MINUTE = 60 * SECONDS
HOUR = 60 * MINUTE
