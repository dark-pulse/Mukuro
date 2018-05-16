require 'discordrb'

TOKEN = 'NDQyNzE2ODgxMDI4MTIwNjAw.DdDGiQ.01JdGgsVHAtcFCzPgOGZu26yya4'
bot = Discordrb::Bot.new token: TOKEN

bot.message(in: 442799943175110676, from: "LykosHand") do |event|
        bot.send_message(442799827764641814, "#{event.message.content}")
end

bot.run