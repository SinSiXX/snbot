# Description:
# Memes, External Links, and Stuff
#
# Commands:
# This bot is being maintained by **@Shuttle099#4093**. Please contact me if you are experiencing any issues.
# SNBot c - Talk to SNBot
# SNBot invite - Get an invite link for the bot to join your server

module.exports = (robot) ->
  
   robot.hear /futur 2015/i, (res) ->
    res.send "IT'S FUTUR 2016 NOT 2015! What do you think this is?"
    
   robot.hear /futur for president/i, (res) ->
    res.send "http://i.imgur.com/2ss6dKQ.jpg"
    
   robot.hear /link towerunite/i, (res) ->
    res.send "http://www.towerunite.com/"
    
   robot.hear /link futurmedia/i, (res) ->
    res.send "http://futurmedia.co/"
    
   robot.hear /memes please/i, (res) ->
    res.send "https://cdn.meme.am/instances/500x/57292342.jpg"
    
   robot.respond /invite/i, (res) ->
    res.send "https://discordapp.com/oauth2/authorize?scope=bot&client_id=168080204063834112&permissions=0"
    
   robot.hear /SNBot, SNBot, in the server, who is the dankest memer ever?/i, (res) ->
    res.send "With memes of steel and gifs so clever, SonicNat will be the dankest memer forever"
    
   robot.respond /help/i, (res) ->
    res.send "This bot is being maintained by **@Shuttle099#4093**. Please contact me if you are experiencing any issues.\nSNBot c - Talk to SNBot __**(Note: The bot can learn stuff, so please don't abuse it)**__\nSNBot invite - Get an invite link for the bot to join your server\nHead to our site at https://shuttlenet.org/snbot/commands to get the full list of commands!"
   
   robot.hear /Come on and slam/i, (res) ->
    res.send "and welcome to the jam https://youtu.be/J9FImc2LOr8"