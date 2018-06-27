require 'discordrb'

TOKEN = 'NDYwNTI3NTYwMjI1NDU2MTQ0.DhGIew.HSwy_cwm-z7JzsgVyybSybjlufg'
bot = Discordrb::Commands::CommandBot.new token: TOKEN, prefix: 'pw!'

bot.message(from: 'Bok Choi', in: 'traitors') do |event|
    bot.send_message(460548991306956800, "#{event.message.content}")
    event.message.delete
end
bot.run