require 'discordrb'

bot = Discordrb::Bot.new token: "NDE5ODExNjQ5MTM0Nzg4NjE4.DX1uug.rYbUJ-kuxthQXYfdQSlddmZlD6s"

loop do 
    input = gets.chomp
    bot.send_message(407079437704757249, "#{input}")
end

bot.run