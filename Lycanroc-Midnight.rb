require 'discordrb'

TOKEN = 'NDYyNDE4Nzc0MTg0OTUxODE4.DhhkkQ.w1m5OLcZ-qq39o519zWf9yChx88'
bot = Discordrb::Commands::CommandBot.new token: TOKEN, prefix: 'ln!'

bot.ready do |event|
    bot.dnd
    bot.game = 'PokéWolf'
    puts "This is Lycanroc, Midnight Form Bot."
end

bot.dm do |event|
    event.respond "RaWf!!"
    bot.send_message(465982985791864842, "#{event.user.mention} has told me: \n#{event.message.content}")
end

bot.command :dm do |event, username, *args|
    if username == nil
        event.respond "How dare you forget to input an username!?"
    else
        if args == nil
            event.respond "How dare you forget to input a message!?"
        else
            ka = event.server.users
            ka.each do |s_user|
            if s_user.name.include? username
                    bot.user(s_user.id).pm(args.join(' '))
                end
            end
        end
    end
end

bot.run