
# Modules for both moments when a new user joins the server and leaves. It also displays a Ban Message

$bot.member_join do |event| # Joining on Lía's Server
    $bot.send_message(436231756929171458, "#{event.user.mention} has joined the server. WooHoo!")
end

$bot.member_leave do |event| # Leaving on Lía's Server
    $bot.send_message(436231756929171458, "#{event.user.mention} has left the server. Boo!")
end