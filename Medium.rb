require 'discordrb'

TOKEN = 'NDQyNDMxNDI4MTk4NjYyMTQ0.DdDErA.KQOxXT_1Q62m8gMIu4mKb4TuawI'
bot = Discordrb::Bot.new token: TOKEN

bot.message(in: 442724139015471104) do |event| 
    if event.user.id == 271097183292489729
        # Code
    elsif event.user.id == 442430088659599370
        # Code
    else
        bot.send_message(442723126045048832, "#{event.message.content}") 
    end
end

bot.run