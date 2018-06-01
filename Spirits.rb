require 'discordrb'
TOKEN = 'NDQyNDMwMDg4NjU5NTk5Mzcw.DeI38A.yyDsgITBm-iI2U8tLHE4bPTtR8s'
bot = Discordrb::Bot.new token: TOKEN

bot.message(in: 442723126045048832) do |event|
    if event.user.id == 442431428198662144
        # Code
    elsif event.user.id == 271097183292489729
        # Code
    elsif event.user.id == 231915769976455178
        bot.send_message(442724139015471104, "***__NickCrash:__*** — #{event.message.content}")
    elsif event.user.id == 266227890318868491
        bot.send_message(442724139015471104, "***__L'Belle:__*** — #{event.message.content}")
    else
        bot.send_message(442724139015471104, "***__???:__*** — #{event.message.content}")
    end
end

=begin
    if event.user.id == ID of connected Spirit
        bot.send_message(442724139015471104, "***__#{event.user.name} said:__*** #{event.message.content}")
    else
        bot.send_message(442724139015471104, "***__A voice said:__*** #{event.message.content}")
    end
=end

bot.run