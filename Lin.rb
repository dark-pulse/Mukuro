require 'discordrb'

TOKEN = 'NDYwNTI2NTA5OTc5OTkyMDg0.DhGIJQ.agUA9LXqLTu0ow6DcecfC5tLltw'
bot = Discordrb::Commands::CommandBot.new token: TOKEN, prefix: 'pw!'

bot.message(from: 'andracass', in: 'lin') do |event|
    bot.send_message(460524939750014979, "#{event.message.content}") #ANNA
    bot.send_message(460523929392644107, "#{event.message.content}") #ARCLIGHT
    bot.send_message(460525181119627344, "#{event.message.content}") #CIEL
    bot.send_message(460525002916102146, "#{event.message.content}") # DECIBEL
    bot.send_message(460523948690374686, "#{event.message.content}") #SHADE
    bot.send_message(460527363709599764, "#{event.message.content}") #SERRA
end
bot.run