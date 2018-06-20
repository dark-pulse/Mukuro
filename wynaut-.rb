require 'discordrb'

TOKEN = 'NDU5MDQ3MjQ1MDM2MTI2MjE5.Dgwkew.lpjXhVeDJuqNDy35KvouHoIA4CA'
bot = Discordrb::Commands::CommandBot.new token: TOKEN, prefix: 'pw!'

bot.message(from: 'DigitalAmber', in: 'wynaut') do |event|
    bot.send_message(459049339957018624, "#{event.message.content}") #DARKRAI
    bot.send_message(459049417006252033, "#{event.message.content}") #SHUCKLE
    bot.send_message(459050282261807104, "#{event.message.content}") #RAINBOW_KARP
    bot.send_message(459050337093943297, "#{event.message.content}") # MAGIKARP
    bot.send_message(459052971318312961, "#{event.message.content}") #LITWICK
    bot.send_message(459053756336832542, "#{event.message.content}") #SPECTATOR
end
bot.run