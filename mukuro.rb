#============================================================================================================
#======================================        REQUIREMENTS
#============================================================================================================
require 'discordrb'
require 'execjs'
require 'sqlite3'
bot = Discordrb::Commands::CommandBot.new token: "NDA5MzY4NzE3NTQ2NDg3ODI4.DVinRg.tQQ4_YevAjm__Uu_BreZ4gsW-Cs", prefix: "m."
chocolate = 0
#============================================================================================================
#======================================        CONFIG
#============================================================================================================
bot.ready do |event|
bot.game = 'Pokémon Reborn'
end
#============================================================================================================
#======================================        CENSOR
#============================================================================================================
bot.message(contains: /retard|retarded|fag|dick|dyke|nigga|nigger|motherfucker|vagina/i ) do |event|
    event.respond "#{event.user.mention}, you have said a word that is forbidden by the rules.\n**You have been warned** not to repeat the same action."
  end
#============================================================================================================
#======================================        ANNOUNCEMENT
#============================================================================================================
bot.message(with_text: /m.123/i ) do |event|
  bot.send_message(event.channel.id, 'Mukuro will sleep now** . . .**')
  exit
end
#============================================================================================================
#======================================        OTHERS
#============================================================================================================

bot.message(contains: "tests") do |event|
    event.respond tt.sample
end

#============================================================================================================
#======================================        OTHERS
#============================================================================================================


bot.command :hug do |_event, *args|
  if "#{args.join(' ')}" == "#{event.mention}"  
  _event << "#{_event.user.mention} has hugged #{args.join(' ')}"
  statusraise = [
  "#{args.join(' ')}'s ATK rose!", 
  "#{args.join(' ')}'s DEF rose!", 
  "#{args.join(' ')}'s SPATK rose!", 
  "#{args.join(' ')}'s SPDEF rose!", 
  "#{args.join(' ')}'s SPE rose!", 
  "#{args.join(' ')}'s LCK rose!"
  ]
    _event << statusraise.sample

  else
    "You have to mention an user!"
  end
end

bot.command :help do |event|
event.user.pm "Hello. My name is Mukuro!\nI'm a bot, but please don't discriminate me! :cold_sweat:\n\n__As of my current version, I possess the following commands__\n**m.hug** | **m.help** |\n\nAlso, if you say something wrong to the others, I'll come by and punish you! :angry:"
end

bot.command :p do |event|
"The number of p's that were given today is #{chocolate}."
end

bot.message(with_text: "givep") do |event|
chocolate += 1
end

bot.run