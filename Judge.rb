require 'discordrb'

PREFIX = 'j!'
TOKEN = 'NDQxNzEzMTUzNjEzNjI3NDIy.DeI0RA.ZcpxnIjByMGM6491vz1SHlvchMU'
bot = Discordrb::Commands::CommandBot.new token: TOKEN, prefix: PREFIX
witches = [442774638444019733, 442774691128803338, 442774734212562955, 442774768899588145, 442774809357844510, 442802713227558912]
bot.command :lobby do |event, *args|
    bot.send_message(441709301493530636, args.join(' '))
end

bot.command :witch do |event, *args|
    witches.each do |id|
        bot.send_message(id, args.join(' '))
    end
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

bot.command :prune do |event|
    bot.channel(event.channel.id).prune(10)
end

bot.dm do |event|
    bot.send_message(441983217424400384," — __#{event.user.name} has sent you a message:__\n#{event.message.content}")
end

bot.run