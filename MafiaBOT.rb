#============================================================================================================
#======================================        REQUIREMENTS
#============================================================================================================
require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: "NDEzNzcxNjI1ODg5MjY3NzE1.DWdqeA.aefThrtSujJFTAqqi7GIQAqTFZs"
#============================================================================================================
#======================================        CONFIG
#============================================================================================================
bot.ready do |event|
bot.game = 'Mafia'
end
#============================================================================================================
#======================================        ANNOUNCEMENT
#============================================================================================================
bot.message(in: "chatroom-all", from: "Venus" ) do |event|
    bot.send_message("413769928550645771", "#{event.message.content}") #Pecilia
    bot.send_message("413769975916920833", "#{event.message.content}") #Miah
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