require 'discordrb'

TOKEN = 'NDU5MDUzODU4MTUzNTYyMTUw.DgwnHw.Wrelisf7s9aCAye6F1DInYK2c7Y'
bot = Discordrb::Commands::CommandBot.new token: TOKEN, prefix: 'pw!'

bot.message(from: 'Bok Choi', in: 'litwick') do |event|
    bot.send_message(459049339957018624, "#{event.message.content}") #DARKRAI
    bot.send_message(459049417006252033, "#{event.message.content}") #SHUCKLE
    bot.send_message(459049447976992768, "#{event.message.content}") #WYNAUT
    bot.send_message(459050337093943297, "#{event.message.content}") # MAGIKARP
    bot.send_message(459050282261807104, "#{event.message.content}") #RAINBOW_KARP
    bot.send_message(459053756336832542, "#{event.message.content}") #SPECTATOR
end
bot.run