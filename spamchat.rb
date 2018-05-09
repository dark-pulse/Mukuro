require 'discordrb'
bot = Discordrb::Commands::CommandBot.new token: 'NDI3MjAwNjI5NTA5OTgwMTcx.DdSh-Q.f3egQ3iyjA3EHGi7-wSkQ_emYYY', prefix: "!"
client_id = 427200629509980171


bot.message(from: "Venus", in: "mukuro-mine") do |event|
        bot.user(287225292408225792).dm("#{event.message.content}")
end

bot.dm do |event|
  bot.send_message(434032728980193290, "#{event.message.content}")
end

bot.mention do |event|
event.respond "Yes."
end

bot.ready do |event|
 loop do
text = gets.chomp
bot.send_message(436270683064893441, "#{text}")
end
end
bot.run