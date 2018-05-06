
#  Command that kicks an user. It first checks for mod powers from the bot and then from the user before
#  performing the action.

$bot.command :kick do |event, *args|
    if $bot.user(event.user.id).on(436231756929171456).permission?(:kick_members) == false
        event.respond(":black_heart: You do not have permissions to Kick Members")
    elsif $bot.user(442349017712820244).on(436231756929171456).permission?(:kick_members) == false
        event.respond(":black_heart: I do not have permissions to Kick Members")
    else
        $bot.kick(event.message.mentions[0], args.join(' '))
        event.respond "I have kicked **#{event.message.mentions[0].name}** with **#{event.user.name}**'s help.'"
    end
end