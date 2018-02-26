require 'discordrb'
require 'sqlite3'

bot = Discordrb::Commands::CommandBot.new token: 'NDE1OTEwMDk0MTkxMTk4MjA4.DW8yGw.rkQDoWjyVjZM9X9oFK2eyrVR95Y', prefix: '?'
###=============================================================================================================###
bot.ready do |event|
    bot.game = "with you 💕"
    bot.dnd
    puts "Artificial Intelligence is now active. Your next message written here will display in **Ruby Academy/Splargle**"
    loop do text = gets.chomp.to_s
      bot.send_message("414908531771310080", "#{text}")
    end  
end
###=============================================================================================================###
bot.member_join do |event|
  bot.send_message("414906604580765697", "Welcome to **ルビー高校**, #{event.user.mention}!\nBe ready to join on a Ruby journey!") 
end
bot.member_leave do |event|
  bot.send_message("414906604580765697", "Goodbye, #{event.user.mention}...\nWe'll miss you!") 
end
###=============================================================================================================###
bot.run
###=============================================================================================================###
