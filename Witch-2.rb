require 'discordrb'

TOKEN = 'NDQyNzQ0MTExNDczMzYwODk4.DdDRSg.jMep6_x6sjPX0tuCauZhLU8IWCo'
bot = Discordrb::Bot.new token: TOKEN

bot.message(in: 442774691128803338) do |event|
    if event.user.id == 271097183292489729 
    elsif event.user.id == 442742120898494475 
    elsif event.user.id == 442744111473360898
    elsif event.user.id == 442744191471321089
    elsif event.user.id == 442744190091132939
    elsif event.user.id == 442744233296920576
    else
        bot.send_message(442774638444019733, "#{event.message.content}") # 1
        bot.send_message(442774734212562955, "#{event.message.content}") # 3
        bot.send_message(442774768899588145, "#{event.message.content}") # 4
        bot.send_message(442774809357844510, "#{event.message.content}") # 5
        bot.send_message(442802713227558912, "#{event.message.content}") # ALL
    end
end

bot.run