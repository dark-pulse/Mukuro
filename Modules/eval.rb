
# Used to test commands while the bot has already initiated

$bot.command :eval do |evaluate, *args| # Args is whatever bit that comes after the command
    eval(args.join(' ')) # We use args.join(' ') so that all the args arguments are fused into one
end