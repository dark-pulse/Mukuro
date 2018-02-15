#============================================================================================================
#======================================        REQUIREMENTS
#============================================================================================================
require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: "NDEzNzYyMTYwMjQ2OTE1MDcz.DWdhow.flMm5ef6gmJrg65hUsPe1DRWf58"
#============================================================================================================
#======================================        CONFIG
#============================================================================================================
bot.ready do |event|
bot.game = 'VM'
end
#============================================================================================================
#======================================        ANNOUNCEMENT
#============================================================================================================
bot.message(from: "Mafioso Divergent" ) do |event|
    bot.send_message("413708767033556997", "#{event.message.content}") #Mods
    bot.send_message("413769928550645771", "#{event.message.content}") #Pecilia
    bot.send_message("413769975916920833", "#{event.message.content}") #Miah
    bot.send_message("413770104342315009", "#{event.message.content}") #ASDBUDDY
end

bot.message(with_text: "!?count") do |event|
    event.respond "Umm..."
      loop sleep 5 * 59 
      bot.run
          event.respond "Umm..."
         end

bot.run