require 'discordrb'

TOKEN = 'NDYwNTI2NTA5OTc5OTkyMDg0.DhGIJQ.agUA9LXqLTu0ow6DcecfC5tLltw'
bot = Discordrb::Commands::CommandBot.new token: TOKEN, prefix: 'pw!'

bot.message(from: 'andracass', in: 'lin') do |event|
end
bot.run