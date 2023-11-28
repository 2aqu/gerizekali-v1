var soundList = [];
var closeToPlayer = [];
var isMutedAll = false;
var refreshTime = 100;

var playerPos = [-90000,-90000,-90000];

class SoundPlayer
{
    static yPlayer = null;
    youtubeIsReady = false;
	constructor()
	{
		this.url = "test";
		this.name = "";
		this.dynamic = false;
		this.distance = 10;
		this.volume = 1.0;
		this.pos = [0.0,0.0,0.0];
		this.max_volume = -1.0; 
		this.div_id = "myAudio_" + Math.floor(Math.random() * 9999999);
		this.loop = false;
		this.isYoutube = false;
		this.load = false;
		this.isMuted_ = false;
		this.audioPlayer = null;
	}

	isYoutubeReady(result){
	    this.youtubeIsReady = result;
	}

	getDistance() { return this.distance;}
	getLocation() { return this.pos;     }
	getVolume()   { return this.volume;  }
	getMaxVolume(){ return this.max_volume;  }
	getUrlSound() { return this.url;     }
	isDynamic()   { return this.dynamic; }
	getDivId()    { return this.div_id;  }
	isLoop()      { return this.loop;    }
	getName()     { return this.name;    }
	loaded()      { return this.load;    }

	getAudioPlayer()    { return this.audioPlayer; }
	getYoutubePlayer()  { return this.yPlayer;     }

    setLoaded(result)    { this.load = result;   }
	setName(result)      { this.name = result;   }
	setDistance(result)  { this.distance = result;   }
	setDynamic(result)   { this.dynamic = result;    }
	setLocation(x_,y_,z_){ this.pos = [x_,y_,z_];    }
	setSoundUrl(result)  { this.url = result;        }

	setLoop(result) {
        if(!this.isYoutube)
        {
            if(this.audioPlayer != null){
                this.audioPlayer.loop(result);
            }
        }
	    this.loop = result;
	}


	setMaxVolume(result) { this.max_volume = result; }
	setVolume(result)    
	{
		this.volume = result;
		if(this.max_volume == -1) this.max_volume = result; 
		if(this.max_volume > (this.volume - 0.01)) this.volume = this.max_volume;
		if(this.isMuted_){
			if(!this.isYoutube)
			{
				if(this.audioPlayer != null) this.audioPlayer.volume(0);
			}
			else
			{
				if(this.yPlayer && this.youtubeIsReady){this.yPlayer.setVolume(0);}
			}			
		}
		else
		{
			if(!this.isYoutube)
			{
				if(this.audioPlayer != null) this.audioPlayer.volume(result);
			}
			else
			{
				if(this.yPlayer && this.youtubeIsReady){this.yPlayer.setVolume(result * 100);}
			}
		}
	}
  
	create()
	{
	    $.post('https://bitsound/events', JSON.stringify(
	    {
            type: "onLoading",
            id: this.getName(),
	    }));
	    var link = getYoutubeUrlId(this.getUrlSound());
        if(link === "")
        {
            this.isYoutube = false;

            this.audioPlayer = new Howl({
                src: [this.getUrlSound()],
                loop: false,
                html5: true,
                autoplay: false,
                volume: 0.00,
                format: ['mp3'],
                onend: function(event){
                    ended(null);
                },
                onplay: function(){
                    isReady("nothing", true);
                },
            });
            $("#" + this.div_id).remove();
            $("body").append("<div id = '"+ this.div_id +"' style='display:none'>"+this.getUrlSound() +"</div>")
        }
        else
        {
            this.isYoutube = true;
            this.isYoutubeReady(false);
            $("#" + this.div_id).remove();
            $("body").append("<div id='"+ this.div_id +"'></div>");
            this.yPlayer = new YT.Player(this.div_id, {

                startSeconds:Number,

                videoId: link,
                origin: window.location.href,
                enablejsapi: 1,
                width: "0",
                height: "0",
                events: {
                    'onReady': function(event){
                        event.target.setVolume(0);
                        event.target.playVideo();
                        isReady(event.target.getIframe().id);
                    },
                    'onStateChange': function(event){
                        if (event.data == YT.PlayerState.ENDED) {
                            isLooped(event.target.getIframe().id);
                            ended(event.target.getIframe().id);
                        }
                    }
                }
            });
        }
	}

    destroyYoutubeApi()
    {
        if (this.yPlayer) {
            if (typeof this.yPlayer.stopVideo === "function" && typeof this.yPlayer.destroy === "function") {
                this.yPlayer.stopVideo();
                this.yPlayer.destroy();
                this.youtubeIsReady = false;
                this.yPlayer = null;
            }
        }
    }

	delete()
	{
	    if(this.audioPlayer != null){
            this.audioPlayer.pause();
            this.audioPlayer.stop();
            this.audioPlayer.unload();
	    }
	    this.audioPlayer = null;
	    $("#" + this.div_id).remove();
	}

	updateVolume(dd,maxd) 
	{
        var d_max = maxd;
        var d_now = dd;

        var vol = 0;

        var distance = (d_now / d_max);

        if (distance < 1)
        {
            distance = distance * 100;
            var far_away = 100 - distance;
            vol = (this.max_volume / 100) * far_away;;
			this.setVolume(vol);
			this.isMuted_ = false;
        }
        else
        {
            this.setVolume(0);
            this.isMuted_ = true;
        }
	}

	play() 
	{
        if(!this.isYoutube)
        {
            if(this.audioPlayer != null){
                this.audioPlayer.play();
            }
        }
        else
        {
            if(this.youtubeIsReady){
                this.yPlayer.playVideo();
            }
        }
	}
	pause()
	{
        if(!this.isYoutube)
        {
            if(this.audioPlayer != null) this.audioPlayer.pause();
        }
        else
        {
            if(this.youtubeIsReady) this.yPlayer.pauseVideo();
        }
	}

	resume()
	{
        if(!this.isYoutube)
        {
            if(this.audioPlayer != null) this.audioPlayer.play();
        }
        else
        {
            if(this.youtubeIsReady) this.yPlayer.playVideo();
        }
	}

	isMuted()
	{
        return this.isMuted_;
	}

	mute()
	{
        if(!this.isYoutube)
        {
            if(this.audioPlayer != null) this.audioPlayer.volume(0);
        }
        else
        {
            if(this.youtubeIsReady) this.yPlayer.setVolume(0);
        }
        this.isMuted_ = true;
	}

	unmute()
	{
        if(!this.isYoutube)
        {
            if(this.audioPlayer != null) this.audioPlayer.volume(this.getVolume());
        }
        else
        {
            if(this.youtubeIsReady) this.yPlayer.setVolume( this.getVolume() * 100);
        }
        this.isMuted_ = false;
	}

	unmuteSilent()
	{
        this.isMuted_ = false;
	}

	setTimeStamp(time)
	{
        if(!this.isYoutube)
        {
            this.audioPlayer.seek(time);
        }
        else
        {
            this.yPlayer.seekTo(time);
        }
	}

	isPlaying()
	{
        if(this.isYoutube) return this.youtubeIsReady && this.yPlayer.getPlayerState() == 1;
        else return this.audioPlayer != null  && this.audioPlayer.playing();
	}
}

function getYoutubeUrlId(url)
{
    var videoId = "";
    if( url.indexOf("youtube") !== -1 ){
        var urlParts = url.split("?v=");
        videoId = urlParts[1].substring(0,11);
    }

    if( url.indexOf("youtu.be") !== -1 ){
        var urlParts = url.replace("//", "").split("/");
        videoId = urlParts[1].substring(0,11);
    }
    return videoId;
}

function isReady(divId, howler){
    if(howler){
        for (var soundName in soundList)
        {
            var sound = soundList[soundName];
            if(sound.loaded() == false){

                sound.setLoaded(true);
                $.post('https://bitsound/events', JSON.stringify(
                {
                    type: "onPlay",
                    id: sound.getName(),
                }));

                var time = 0;
                if(sound.getAudioPlayer() != null){time = sound.getAudioPlayer()._duration;}
                if(sound.isDynamic()) sound.setVolume(0);

                $.post('https://bitsound/data_status', JSON.stringify(
                {
                    time: time,
                    type: "maxDuration",
                    id: sound.getName(),
                }));
                break;
            }
        }
        return;
    }
	for (var soundName in soundList)
	{
		var sound = soundList[soundName];
        if(sound.getDivId() === divId){
            $.post('https://bitsound/events', JSON.stringify(
            {
                type: "onPlay",
                id: sound.getName(),
            }));

            var time = 0;
            if(sound.getYoutubePlayer() != null){time = sound.getYoutubePlayer().getDuration();}
			if(sound.isDynamic()) sound.setVolume(0);
            sound.setLoaded(true);

            $.post('https://bitsound/data_status', JSON.stringify(
            {
                time: time,
                type: "maxDuration",
                id: sound.getName(),
            }));

            sound.isYoutubeReady(true);
            if(!sound.isDynamic()) sound.setVolume(sound.getVolume())
            break;
        }
	}
}

function isLooped(divId){
	for (var soundName in soundList)
	{
		var sound = soundList[soundName];
        if(sound.getDivId() === divId && sound.isLoop()){
            sound.setTimeStamp(0);
            sound.play();

            $.post('https://bitsound/data_status', JSON.stringify({ type: "finished",id: soundName }));
            $.post('https://bitsound/events', JSON.stringify(
            {
                type: "onEnd",
                id: sound.getName(),
            }));

            var time = 0;
            if(sound.getAudioPlayer() != null){time = sound.getAudioPlayer()._duration;}
            if(sound.getYoutubePlayer() != null){time = sound.getYoutubePlayer().getDuration();}
            $.post('https://bitsound/events', JSON.stringify(
            {
                type: "resetTimeStamp",
                id: sound.getName(),
                time: time,
            }));
            break;
        }
    }
}

function ended(divId){
    if(divId == null)
    {
    	for (var soundName in soundList)
    	{
            var sound = soundList[soundName];
            if(!sound.isPlaying())
            {
                $.post('https://bitsound/data_status', JSON.stringify({ type: "finished",id: soundName }));
                $.post('https://bitsound/events', JSON.stringify(
                {
                    type: "onEnd",
                    id: sound.getName(),
                }));
                if(sound.isLoop()){
                    var time = 0;
                    if(sound.getAudioPlayer() != null){time = sound.getAudioPlayer()._duration;}
                    if(sound.getYoutubePlayer() != null){time = sound.getYoutubePlayer().getDuration();}
                    $.post('https://bitsound/events', JSON.stringify(
                    {
                        type: "resetTimeStamp",
                        id: sound.getName(),
                        time: time,
                    }));

                    sound.setTimeStamp(0);
                    sound.play();
                }
                break;
            }
    	}
    }
    else
    {
    	for (var soundName in soundList)
    	{
            var sound = soundList[soundName];
            if(sound.getDivId() === divId && !sound.isLoop()){
                $.post('https://bitsound/data_status', JSON.stringify({ type: "finished",id: soundName }));
                $.post('https://bitsound/events', JSON.stringify(
                {
                    type: "onEnd",
                    id: sound.getName(),
                }));
                break;
            }
        }
    }
}


$(function(){
	window.addEventListener('message', function(event) {
		var item = event.data;
        switch(item.status)
        {
            case "position":
                playerPos = [item.x,item.y,item.z];
                break;

            case "volume":
                var sound = soundList[item.name];
                if(sound != null)
                {
                    sound.setVolume(item.volume);
                    sound.setMaxVolume(item.volume);
                }
                break;

            case "timestamp":
                var sound = soundList[item.name];
                if(sound != null)
                {
                    sound.setTimeStamp(item.timestamp);
                }
                break;

            case "max_volume":
                var sound = soundList[item.name];
                if(sound != null)
                {
                    sound.setMaxVolume(item.volume);
                }
                break;

            case "url":
                var sound = soundList[item.name];

                if(sound != null)
                {
                    sound.destroyYoutubeApi();
                    sound.delete();
                    sound = null;
                }

                var sd = new SoundPlayer();
                sd.setName(item.name);
                sd.setSoundUrl(item.url);
                sd.setDynamic(item.dynamic);
                sd.setLocation(item.x,item.y,item.z);
                sd.setLoop(item.loop)
                sd.create();
                sd.setVolume(item.volume);
                sd.play();
                soundList[item.name] = sd;
                break;

            case "distance":
                var sound = soundList[item.name];
                if(sound != null)
                {
                    sound.setDistance(item.distance);
                }
                break;

            case "play":
                var sound = soundList[item.name];
                if(sound != null)
                {
                    sound.delete();
                    sound.create();
                    sound.setVolume(item.volume);
                    sound.setDynamic(item.dynamic);
                    sound.setLocation(item.x,item.y,item.z);
                    sound.play();
                }
                break;

            case "soundPosition":
                var sound = soundList[item.name];
                if(sound != null)
                {
                    sound.setLocation(item.x,item.y,item.z);
                }
                break;

            case "resume":
                var sound = soundList[item.name];
                if(sound != null)
                {
                    sound.resume();
                }
                break;

            case"pause":
                var sound = soundList[item.name];
                if(sound != null)
                {
                    sound.pause();
                }
                break;

            case "delete":
                var sound = soundList[item.name];
                if(sound != null)
                {
                    sound.destroyYoutubeApi();
                    sound.delete();
                }
                break;
            case "repeat":
                var sound = soundList[item.name];
                if(sound != null)
                {
                    sound.setTimeStamp(0);
                    sound.play();
                }
                break;
            case "changedynamic":
                var sound = soundList[item.name];
                if(sound != null)
                {
                    sound.unmute()
                    sound.setDynamic(item.bool);
                    sound.setVolume(sound.getMaxVolume());
                }
                break;
            case "changeurl":
                var sound = soundList[item.name];
                if(sound != null)
                {
                    sound.destroyYoutubeApi();
                    sound.delete();
                    sound.setSoundUrl(item.url);
                    sound.setLoaded(false);
                    sound.create();

                    sound.play();
                }
                break;
            case "loop":
                var sound = soundList[item.name];
                if(sound != null)
                {
                    sound.setLoop(item.loop);
                }
                break;
            case "unmuteAll":
                isMutedAll = false;
                for (var soundName in soundList)
                {
                    sound = soundList[soundName];
                    if(sound.isDynamic()){
                        sound.unmuteSilent();
                    }
                }
                updateVolumeSounds();
                break;
            case "muteAll":
                isMutedAll = true;
                for (var soundName in soundList)
                {
                    sound = soundList[soundName];
                    if(sound.isDynamic()){
                        sound.mute();
                    }
                }
                break;
		}
    })
});  	

function Between(loc1,loc2)
{	
	var deltaX = loc1[0] - loc2[0];
	var deltaY = loc1[1] - loc2[1];
	var deltaZ = loc1[2] - loc2[2];

	var distance = Math.sqrt(deltaX * deltaX + deltaY * deltaY + deltaZ * deltaZ);
	return distance;
}

function addToCache()
{
    closeToPlayer = [];
    if(isMutedAll == false){
        var sound = null;
        for (var soundName in soundList)
        {
            sound = soundList[soundName];
            if(sound.isDynamic())
            {
                var distance = Between(playerPos,sound.getLocation());
                var distance_max = sound.getDistance();
                if(distance < distance_max + 40)
                {
                    closeToPlayer[soundName] = soundName;
                }
                else
                {
                    if(sound.loaded()) {
                        sound.mute();
                    }
                }
            }
        }
	}
}

setInterval(addToCache, 1000);

function updateVolumeSounds()
{
    if(isMutedAll == false){
        var sound = null;
        for (var name in closeToPlayer)
        {
            sound = soundList[name];
            if(sound.isDynamic())
            {
                var distance = Between(playerPos,sound.getLocation());
                var distance_max = sound.getDistance();
                if(distance < distance_max)
                {
                    sound.updateVolume(distance,distance_max);
                    continue;
                }
                sound.mute();
            }
        }
    }
}

setInterval(updateVolumeSounds, refreshTime);