require 'discordrb'

TOKEN = 'NDU2MjI1MzY2Njk3MDUwMTEy.DhGN4g.3Qpg1d9O17c4_R-MmoABTz5LhCk'
bot = Discordrb::Commands::CommandBot.new token: TOKEN, prefix: 'pw!'

bot.message(from: 'Venus', in: 'chatt') do |event|
    bot.send_message(460548991306956800, "#{event.message.content}") #ANNA
end
bot.run