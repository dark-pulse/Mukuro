require 'discordrb'

TOKEN = 'NDYwNTI1MDg5MjAxMzI0MDQy.DhGHiA.3Sd7mmYDERW5_Wszl2Z33c34rkE'
bot = Discordrb::Commands::CommandBot.new token: TOKEN, prefix: 'pr!'

bot.message(from: 'Caimie', in: 'anna') do |event|
    bot.send_message(460523929392644107, "#{event.message.content}") #ARCLIGHT
    bot.send_message(460525181119627344, "#{event.message.content}") #CIEL
    bot.send_message(460525002916102146, "#{event.message.content}") # DECIBEL
    bot.send_message(460523899667349512, "#{event.message.content}") #LIN
    bot.send_message(460523948690374686, "#{event.message.content}") #SHADE
    bot.send_message(460527363709599764, "#{event.message.content}") #SERRA
end
bot.run