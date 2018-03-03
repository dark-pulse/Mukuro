bot = Discordrb::Commands::CommandBot.new token: CONFIG['token'], prefix: '-'

bot.message( contains: /fag|dyke|nigger|nigga|negro|retard/i ) { event.respond "You have included a word that is forbidden by the rules in #server-rules-and-queue, and therefore you have earned a small warning for breaking the rules.\nPlease refrain from repeating the same action in the future, #{event.user.mention}" }