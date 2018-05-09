require 'discordrb'
require_relative 'quotes'
require_relative 'global'
require_relative 'characters'

ID = 427200629509980171
TOKEN = 'NDI3MjAwNjI5NTA5OTgwMTcx.DdSh-Q.f3egQ3iyjA3EHGi7-wSkQ_emYYY'
PREFIX = 'm.'
bot = Discordrb::Commands::CommandBot.new token: TOKEN, prefix: PREFIX
roulette = ["Dead", "Dead","Alive","Dead","Dead"]

bot.ready do |event|
    bot.game = "Pokémon Reborn E18"
   # bot.send_message("375831470620672021", "Hello.")
end

bot.command :blacklist do |event, *args|
    event.respond "From now on, messages containing #{args.join(' ')} will be deleted automatically."
end

bot.message(with_text: "#{PREFIX}start") do |event|
    user_id = "#{event.user.id}".to_i
    if File.exist?("#{user_id}.rb") == true
        event.respond(":negative_squared_cross_mark: You have already created an account!")
    else
        user_file = File.open("#{user_id}.rb", "a") { |f| f.write("$id = #{user_id}
            $title = 'None'
            $money = 0
            $quotes = 0
            $rank = 'User'
            $bot_perms = 'Basic'
            $char = nil
            $charnum = nil") }
        event.respond(":white_check_mark: You have successfully created an account in Mukuro!")
    end
end

bot.message(with_text: "#{PREFIX}add") do |event|
    if event.user.bot_account? == true
        bot.send_message("428259721821290498", "You are a **Bot**!")
    else
       user_id = "#{event.user.id}".to_i
       user_file = File.open("#{user_id}.rb", "a+")
       if File.zero?("#{user_id}.rb") == true
          bot.send_message("428259721821290498", "There's no **#{user_id}** data.")
       end
    end
end

loot = false
bot.message(with_text: "#{PREFIX}loot") do |event| 
    if loot == false
       user_id = "#{event.user.id}".to_i
       the_user = File.open("#{user_id}.rb", "r+")
       require_relative "#{user_id}"
       random_n = rand(0..98)
       $money = random_n + $money
       File.open("#{user_id}.rb", "w") {|f| f.write("$id = #{$id}
        $title = '#{$title}'
        $money = #{$money}
        $quotes = #{$quotes}
        $rank = '#{$rank}'
        $bot_perms = '#{$bot_perms}'
        $char = '#{$char}'
        $charnum = #{$charnum}") }
       event.respond ":asterisk: You have gained **#{random_n} Coins**"
       loot = true
    else
       event.respond ":asterisk: You have already looted in this session!"
    end
end

bot.message(with_text: "#{PREFIX}bal") do |event|
    user_id = "#{event.user.id}".to_i
    require_relative "#{user_id}"
    event.respond ":asterisk: Currently, you have **#{$money} Coins**"
end

bot.message(with_text: "#{PREFIX}profile") do |event|
    user_id = "#{event.user.id}".to_i
    #File.open("#{user_id}.rb", 'r')
    load "#{user_id}.rb"
    if $char != nil
       imgg = File.open("#{$char}.png", 'rb')
    end
    event.channel.send_embed do |embed|
        embed.thumbnail = Discordrb::Webhooks::EmbedThumbnail.new(url:"https://cdn.discordapp.com/avatars/#{event.user.id}/#{event.user.avatar_id}.webp?size=1024")
        embed.title = event.user.nick.nil? ? "#{event.user.name}" : "#{event.user.nick}"
        embed.description = "**Account:** #{event.user.name}##{event.user.discriminator}
**Title:** #{$title}
**Colour:** ##{event.user.on(350520572016459776).colour.hex.to_s}
**Quotes:** 0
**Money:** #{$money}
**Server Rank:** #{$rank}
**Bot Permissions:** #{$bot_perms}
**Reborn Character:** #{$char}"
       embed.color = event.user.on(350520572016459776).colour.combined
        if $char != nil
            i_url = $charac["#{$charnum}"][1]
             embed.image = Discordrb::Webhooks::EmbedImage.new(url: i_url )
       end
    end
end

bot.command :russian_roulette do |event|
    event.respond "You are **#{roulette.sample}**"
end

bot.command :title do |event, *args| 
    if args.join(' ').include? "'"
        event.respond ":negative_squared_cross_mark: You cannot use quotation marks!"
    elsif args.join(' ').include? '"'
        event.respond ":negative_squared_cross_mark: You cannot use quotation marks!"
    else
       user_id = "#{event.user.id}".to_i
       the_user = File.open("#{user_id}.rb", "r+")
       require_relative "#{user_id}"
       $title = args.join(' ')
       event.respond ":white_check_mark: You have changed your title to **#{$title}**"
       File.open("#{user_id}.rb", "w") {|f| f.write("$id = #{$id}
        $title = '#{$title}'
        $money = #{$money}
        $quotes = #{$quotes}
        $rank = '#{$rank}'
        $bot_perms = '#{$bot_perms}'
        $char = '#{$char}'
        $charnum = #{$charnum}") }
    end
end

bot.message(with_text: "#{PREFIX}char") do |event|
    user_id = "#{event.user.id}".to_i
    the_user = File.open("#{user_id}.rb", "r+")
    require_relative "#{user_id}"
    random_char = rand(1..44)
    $charac["#{random_char}"].each do |name,image|
    $char = name
    event.respond ":bust_in_silhouette: Your character has changed to **#{$char}**"
    event.send_file(File.open("#{$char}.png", 'rb'))
    File.open("#{user_id}.rb", "w") {|f| f.write("$id = #{$id}
        $title = '#{$title}'
        $money = #{$money}
        $quotes = #{$quotes}
        $rank = '#{$rank}'
        $bot_perms = '#{$bot_perms}'
        $char = '#{$char}'
        $charnum = #{random_char}") }
        break
    end
end

bot.command :search do |event, *args|
    if args.join(' ').length > 1
       event.server.users.each do |usua|
           if usua.name.include? args.join(' ')
            bot.send_message(428259721821290498, "#{usua.name}'s name is here.")
           end
        end
    else
        "You need a name longer than 1 character."
    end
end

bot.command :help do |event|
    event.respond ":spy::skin-tone-2: #{event.user.mention} we have sent Team Meteor Grunts to capture you."
    event.user.pm.send_embed do |embed|
        embed.title = ':black_heart: Using Mukuro...'
        embed.description = "**Mukuro** is a Discord Bot made by Venus, using **discordrb**. Call **Venus#9063** if you have any issues with me~"
        embed.color = Discordrb::ColourRGB.new(0xb572b6).combined
    end
    event.user.pm.send_embed do |embed|
        embed.title = 'Commands'
        embed.description = "**Your Account**
`m.start = Creates an account in Mukuro that allows you to use more of its functionalities.
m.profile = Shows your profile page.
m.char = Changes your favorite Reborn Character to a randomly chosen one.
m.title = Changes your title on your profilge page.`
        
**Testing**
`m.eval = Tests a ruby code`
        
**Quotes**
`m.quote = Displays a random quote from this server.
m.addquote = Adds a quote. Use the format: m.addquote #Username #Quote.`"
        embed.color = Discordrb::ColourRGB.new(0xb572b6).combined
    end
    event.user.pm.send_embed do |embed|
        embed.title = ":wave: That's all for now!"
        embed.description = "If you have any suggestions for any command, feel free to tell **Venus#9063**!"
        embed.color = Discordrb::ColourRGB.new(0xb572b6).combined
    end
end

bot.message(with_text: "#{PREFIX}quote") do |event|
    r_n = rand(1..$quotes_n)
    load 'quotes.rb'
         event.channel.send_embed do |embed|
               embed.author = Discordrb::Webhooks::EmbedAuthor.new(name: bot.user($quotes["#{r_n}"][0]).on($quotes["#{r_n}"][1]).display_name, icon_url: "https://cdn.discordapp.com/avatars/#{$quotes["#{r_n}"][0]}/#{bot.user($quotes["#{r_n}"][0]).avatar_id}.webp?size=1024")
               embed.description = $quotes["#{r_n}"][2].to_s
               embed.colour = bot.user($quotes["#{r_n}"][0]).on($quotes["#{r_n}"][1]).colour.combined
               embed.footer = Discordrb::Webhooks::EmbedFooter.new(text: "Saved from #{bot.server($quotes["#{r_n}"][1]).name}", icon_url: 'https://bts2013.files.wordpress.com/2016/07/mafiasmall.jpg?w=393&h=421') 
         end
end

$value_id = nil
$value_server_id = nil
$value_quote = nil

bot.command :addquote do |event, names, *args|
    if names == nil
        event.respond ":speech_left: Please write a member's name that's in this server."
    else
        if args[0] == nil
            event.respond ":speech_left: Please write the quote."
        else
            $value_quote = args.join(' ')
            event.server.users.each do |s_user|
                if s_user.name.include? names
                    $value_id = s_user.id
                    $value_server_id = event.server.id
                    File.open("global.rb", "r+") do |file|
                        $quotes_n += 1
                        file.write("$quotes_n = #{$quotes_n}")
                    end
                end
            end
            if $value_id == nil
                event.respond ":speech_balloon: There's no one named **#{names}** on this server!"
                break
            else
                event.respond "Added **#{$value_quote}** to **#{bot.user($value_id).name}** from **#{event.server.name}**"
                File.open("quotes.rb", "a") {|f| f.write("
$quotes['#{$quotes_n}'] = [#{$value_id}, #{$value_server_id}, %Q(#{$value_quote})]") }
            end
        end
    end
end

bot.command :eval do |evaluate, *args| # Args is whatever bit that comes after the command
    user_id = "#{event.user.id}".to_i
    load "#{user_id}.rb"
    if $bot_perms == 'All'
        eval(args.join(' ')) # We use args.join(' ') so that all the args arguments are fused into one
    else
        evaluate.respond ":negative_squared_cross_mark: You do not have enough bot permissions!"
    end
end

bot.command :kick do |event, *args|
    if $bot.user(event.user.id).on(436231756929171456).permission?(:kick_members) == false
        event.respond(":negative_squared_cross_mark: You do not have permissions to Kick Members")
    elsif $bot.user(442349017712820244).on(436231756929171456).permission?(:kick_members) == false
        event.respond(":negative_squared_cross_mark: I do not have permissions to Kick Members")
    else
        event.respond ":white_check_mark: I have kicked **#{event.message.mentions[0].name}** with **#{event.user.name}**'s help.'"
        $bot.kick(event.message.mentions[0], args.join(' '))
    end
end

bot.run