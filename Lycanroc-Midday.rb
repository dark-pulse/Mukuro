require 'discordrb'

TOKEN = 'NDYyNDE4NjE1ODA4MDMyNzk3.Dhhkhg.uK-je-UI4LvWPPpxh3T9pauprv4'
bot = Discordrb::Commands::CommandBot.new token: TOKEN, prefix: 'ld!'

bot.ready do |event|
    bot.game = 'PokéWolf'
    puts "This is Lycanroc, Midday Form Bot."
end

bot.dm do |event|
    event.respond "RaWf!"
    bot.send_message(465982952279638037, "#{event.user.mention} has told me: \n#{event.message.content}")
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