#============================================================================================================
#======================================        REQUIREMENTS
#============================================================================================================
require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: "NDEzNzYyMjEzOTYzMTA0MjY3.DWdhpQ.3_ASN2FuUhj6M5wdF9Hgds7ZDMk"
#============================================================================================================
#======================================        CONFIG
#============================================================================================================
bot.ready do |event|
bot.game = 'VM'
end
#============================================================================================================
#======================================        ANNOUNCEMENT
#============================================================================================================
bot.message(from: "ASDBUDDY" ) do |event|
    bot.send_message("413708767033556997", "#{event.message.content}") #Mods
    bot.send_message("413769928550645771", "#{event.message.content}") #Pecilia
    bot.send_message("413769975916920833", "#{event.message.content}") #Miah
    bot.send_message("413770021555273773", "#{event.message.content}") #Kiyotaka
end

bot.message(with_text: "!?count") do |event|
    event.respond "Umm..."
      loop sleep 5 * 59 
      bot.run
          event.respond "Umm..."
         end

bot.run