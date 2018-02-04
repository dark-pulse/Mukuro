#============================================================================================================
#======================================        REQUIREMENTS
#============================================================================================================
require 'discordrb'
require 'execjs'
bot = Discordrb::Bot.new token: "NDA5MzY4NzE3NTQ2NDg3ODI4.DVdl8w.BtzCJbNCSDVfNMZXkfHtTKrC1A0" prefix: ''
#============================================================================================================
#======================================        CONFIG
#============================================================================================================
mods = [271097183292489729, 253502477498974213, 286838535066222594, 287225292408225792]

bot.ready do |event|
  bot.game = "Pokémon Reborn"
end


#============================================================================================================
#======================================        CENSOR
#============================================================================================================
bot.message(contains: /trap|retard|retarded|fag|dick|dyke|nigga|nigger|test|motherfucker|vagina/i ) do |event|
    event.respond "#{event.user.mention}, you have said a word that is forbidden by the rules.\n**You have been warned** not to repeat the same action."
  end
#============================================================================================================
#======================================        ANNOUNCEMENT
#============================================================================================================

#============================================================================================================
#======================================        OTHERS
#============================================================================================================

bot.message(contains: "Hello") do |event|
    event.respond "You said #{event.message.content} after greeting, so..."
end

  bot.message(with_text: "PM me") do |event|
    event.respond "Sure, I sent a PM to you :heart:"
    event.user.pm("Hello. You have requested a PM from me. Unfortunately I cannot do anything else, sorry. :persevere:")
  end

  bot.message(with_text: "m.help") do |event|
    event.respond "Sure, I sent a PM to you with all I could do :triumph: :heart:"
    event.user.pm("Hello. My name's **Mukuro** and I am Reborn Mafia Discord Server's own customized bot :smile:\nIf you want to know the commands, I'll start with the simplest to the hardest. Try to keep up with me! :wink:\n\n**hug**: Hugs!\n\n...It looks like the list is over :sweat:\nI'm sorry, but I'll be able to do more things, I promise!")
  end
#============================================================================================================
#======================================        OTHERS
#============================================================================================================


bot.run