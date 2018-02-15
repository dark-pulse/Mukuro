#============================================================================================================
#======================================        REQUIREMENTS
#============================================================================================================
require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: "NDEzNzYyMTAzMDk1MDY2NjI1.DWdhoA.Lexr8ZdDlDXIIPbDq4yX5yROsRY"
#============================================================================================================
#======================================        CONFIG
#============================================================================================================
bot.ready do |event|
bot.game = 'VM'
end
#============================================================================================================
#======================================        ANNOUNCEMENT
#============================================================================================================
bot.message(from: "mimi" ) do |event|
    bot.send_message("413708767033556997", "#{event.message.content}") #Mods
    bot.send_message("413769928550645771", "#{event.message.content}") #Pecilia
    bot.send_message("413770021555273773", "#{event.message.content}") #Kiyotaka
    bot.send_message("413770104342315009", "#{event.message.content}") #ASDBUDDY
end

bot.message(with_text: "!?count") do |event|
    event.respond "Umm..."
      loop sleep 5 * 59 
      bot.run
          event.respond "Umm..."
         end

bot.run