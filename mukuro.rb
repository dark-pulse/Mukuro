#============================================================================================================
#======================================        REQUIREMENTS
#============================================================================================================
require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: "NDEwMDQ3MjY5MTExMzMyODc0.DVnd2A.nrVAcSB2bg5WgZPdCRQKnU-palE", prefix: "m."
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
#======================================        TESTS
#============================================================================================================

bot.command :tests do |event|
  event.channel.send_embed do |embed|
    embed.title = "Achievement complete!"
    embed.description = "#{event.author.mention} has successfully written a embed message."
    embed.color = Discordrb::ColourRGB.new(0x46576B).combined
    embed.add_field(name: "This is a field.", value: "And this is the field's description.", inline: true)
    embed.add_field(name: "This is another field.", value: "And this is the other field's description.", inline: true)
    embed.add_field(name: "This is a field but...", value: "Isn't something different here?", inline: false)
    embed.add_field(name: "Oh, I see now!", value: "So this is what it was about!", inline: false)
  end
end

#============================================================================================================
#======================================        OTHERS
#============================================================================================================


bot.command :hug do |_event, *args|
  if _event.message.mentions[0] == nil
    "You have to mention an user!"
  else
  _event << "#{_event.user.mention} has hugged #{args[0]}"
  statusraise = [
  "#{args[0]}'s ATK rose!", 
  "#{args[0]}'s DEF rose!", 
  "#{args[0]}'s SPATK rose!", 
  "#{args[0]}'s SPDEF rose!", 
  "#{args[0]}'s SPE rose!", 
  "#{args[0]}'s LCK rose!"
  ]
  _event << statusraise.sample
   
  end
end


bot.command :help do |event|
event << ":heart: Sure! I've sent you a message with everything I could! :heart:"
event.user.pm.send_embed do |embed|
  embed.title = "Hello!"
  embed.color = Discordrb::ColourRGB.new(0x46576B).combined
  embed.add_field(name: "Introduction", value: "Hello. My name is Mukuro!\nI'm a bot, but please don't discriminate me! :cold_sweat:", inline: true)
  embed.add_field(name: "Commands", value: "__As of my current version, I possess the following commands__\n**m.hug** | **m.help** |", inline: true)
  embed.add_field(name: "Finishing...", value: "Also, if you say something wrong to the others, I'll come by and punish you! :angry:", inline: true)
end
end

bot.command :p do |event|
"The number of p's that were given today is #{chocolate}."
end

bot.message(with_text: "givep") do |event|
chocolate += 1
end
#============================================================================================================
#======================================        USER INFO
#============================================================================================================
bot.command :me do |event|
  event << '**__User Info For You__**'
  event << ''
  event << "**User ID:** `#{event.user.id}`"
  event << "**User Discrim:** `#{event.user.discrim}`"
  event << "**Username:** `#{event.user.name}`"
  event << "**User Nickname:** `#{event.user.nick}`" unless event.user.nick.nil?
  event << "**User Game:** `#{event.user.game}`" unless event.user.game.nil?
  event << "**User Avatar:** https://cdn.discordapp.com/avatars/#{event.user.id}/#{event.user.avatar_id}.webp?size=1024"
end
bot.run