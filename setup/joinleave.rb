bot = Discordrb::Commands::CommandBot.new token: TOKEN_ID, prefix: PREFIX

bot.member_join do |event|
    event.user.pm("Welcome to Reborn Mafia Discord, **#{event.user.name}**! Please read the rules in the #server-rules-and-queue and enjoy your stay! Contact a server @Moderator if you have any questions(Or if you want your own color and title).")
end