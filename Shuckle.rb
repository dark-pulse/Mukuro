require 'discordrb'

TOKEN = 'NDU5MDQ2NTgyNDk1NjA4ODU0.DgwjhA.w66EWSLrfdF2N_m1tns1QU0GfCM'
bot = Discordrb::Commands::CommandBot.new token: TOKEN, prefix: 'pw!'

bot.message(from: 'Lía', in: 'shuckle') do |event|
    bot.send_message(459049339957018624, "#{event.message.content}") #DARKRAI
    bot.send_message(459049447976992768, "#{event.message.content}") #WYNAUT
    bot.send_message(459050282261807104, "#{event.message.content}") #RAINBOW_KARP
    bot.send_message(459050337093943297, "#{event.message.content}") # MAGIKARP
    bot.send_message(459052971318312961, "#{event.message.content}") #LITWICK
    bot.send_message(459053756336832542, "#{event.message.content}") #SPECTATOR
end
bot.run