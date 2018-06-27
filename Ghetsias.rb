require 'discordrb'

TOKEN = 'NDYxNTg3MzkwNTk5OTIxNjY1.DhVeTA.YGR2HZvy84rAfiD36_I-PZ70Pn4'
bot = Discordrb::Commands::CommandBot.new token: TOKEN, prefix: 'pr!'

bot.message(from: 'Link', in: 'spmaville') do |event|
    bot.send_message(460548991306956800, "#{event.message.content}")
    event.message.delete
end
bot.run