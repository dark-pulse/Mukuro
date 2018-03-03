bot = Discordrb::Commands::CommandBot.new token: CONFIG['token'], prefix: '-'

bot.command :hug do |event, *args|
    if event.mentions[0] == nil
      event.respond  "You must include at least one mention!"
    else
        event.respond  "#{event.user.mention} has hugged #{args.join(' ')}!\n#{args.join(' ')}'s **#{HUG.sample} rose!'"
    end
end