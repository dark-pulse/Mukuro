require 'discordrb'

TOKEN = 'NDY3NzkzMTU0MTY3NDA2NTky.DivyEw.kv5RnHycd2pmP0ysCkION5JiyEE'
bot = Discordrb::Commands::CommandBot.new token: TOKEN, prefix: 'd!'

bot.ready do |event|
    bot.dnd
    bot.game = 'PokéWolf'
    puts "This is Dialga."
end

bot.dm do |event|
    event.respond "..."
    bot.send_message(467796123822718976, "#{event.user.mention} has told me: \n#{event.message.content}")
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

bot.message(from: 271097183292489729, in: 467793250422620160) do |event|
    bot.send_message(465600708948000789, event.message.content) #Spectator
    bot.send_message(465979089707335690, event.message.content) #Carbink
    bot.send_message(465980176543645696, event.message.content) #Entei
    bot.send_message(465980250677968916, event.message.content) #Gallade
    bot.send_message(465980293518458930, event.message.content) #Goodra
    bot.send_message(465980591590866955, event.message.content) #Granbull
    bot.send_message(465980665771327499, event.message.content) #Growlithe
    bot.send_message(465980709979291678, event.message.content) #Lycanroc
    bot.send_message(465980747832885248, event.message.content) #Marshadow
    bot.send_message(465980817919836180, event.message.content) #Mew
    bot.send_message(465980995909320708, event.message.content) #Nidoking
    bot.send_message(465981034337665066, event.message.content) #Plusle
    bot.send_message(465981074531549194, event.message.content) #Vikavolt
    bot.send_message(465981271860969492, event.message.content) #Zoroark
    event.message.delete
end

bot.run
