require 'discordrb'

TOKEN = 'NDQyNzE2ODgxMDI4MTIwNjAw.DdDGiQ.01JdGgsVHAtcFCzPgOGZu26yya4'
bot = Discordrb::Bot.new token: TOKEN

bot.message(in: 442799943175110676) do |event|
    unless event.user.id == [271097183292489729, 442709871947677696]
        bot.send_message(442799827764641814, "#{event.message.content}")
    end
end

bot.run