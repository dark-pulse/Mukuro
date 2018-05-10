require 'discordrb'

TOKEN = 'NDQyNzA5ODcxOTQ3Njc3Njk2.DdDGXA.Ede_TKm0_LFyFMwEPWJ2m5VWt6o'
bot = Discordrb::Bot.new token: TOKEN

bot.message(in: 442799827764641814) do |event|
    unless event.user.id == [271097183292489729, 442716881028120600]
    bot.send_message(442799943175110676, "#{event.message.content}")
    end
end

bot.run