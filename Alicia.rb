require 'discordrb'
bot = Discordrb::Commands::CommandBot.new token: 'NDE0NzEzMTc0ODU2Njk1ODE4.DWrXVw.4D2DLSqH9sQyiBTX3O64quKhrzA', prefix: '?'
bot.ready do |event|
    bot.game = "Pokémon Reborn 17.1"
    bot.idle
    puts "Alicia is now smilling at death..."
end

loop do
    bot.run
    sleep 4 * 59
end


