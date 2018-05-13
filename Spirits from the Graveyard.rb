require 'discordrb'
TOKEN = 'NDQyNDMwMDg4NjU5NTk5Mzcw.DdDEbg.NVrCaF2Q6ejLHGb8qbXlNlZfap0'
bot = Discordrb::Bot.new token: TOKEN

bot.message(in: 442723126045048832) do |event|
    if event.user.id == 442431428198662144
        # Code
    elsif event.user.id == 271097183292489729
        # Code
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