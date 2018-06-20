require 'discordrb'

TOKEN = 'NDU5MDQ5NzM3MTAzMDgxNTEy.Dgwkug.Woy64Ieqqq6U6V5gNFOIFP4q1Wo'
bot = Discordrb::Commands::CommandBot.new token: TOKEN, prefix: 'pw!'

bot.message(from: 'Soyabean', in: 'magikarp') do |event|
    bot.send_message(459049339957018624, "#{event.message.content}") #DARKRAI
    bot.send_message(459049417006252033, "#{event.message.content}") #SHUCKLE
    bot.send_message(459049447976992768, "#{event.message.content}") #WYNAUT
    bot.send_message(459050282261807104, "#{event.message.content}") #RAINBOW_KARP
    bot.send_message(459052971318312961, "#{event.message.content}") #LITWICK
    bot.send_message(459053756336832542, "#{event.message.content}") #SPECTATOR
end
bot.run