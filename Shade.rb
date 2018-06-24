require 'discordrb'

TOKEN = 'NDYwNTIxNDA2NTk0MDIzNDU0.DhGGEA.Math4hxTXm6xp8apFmBgkkf_6Zk'
bot = Discordrb::Commands::CommandBot.new token: TOKEN, prefix: 'pw!'

bot.message(from: 'LykosHand', in: 'shade') do |event|
    bot.send_message(460524939750014979, "#{event.message.content}") #ANNA
    bot.send_message(460523929392644107, "#{event.message.content}") #ARCLIGHT
    bot.send_message(460525181119627344, "#{event.message.content}") #CIEL
    bot.send_message(460525002916102146, "#{event.message.content}") # DECIBEL
    bot.send_message(460523899667349512, "#{event.message.content}") #LIN
    bot.send_message(460527363709599764, "#{event.message.content}") #SERRA
end
bot.run