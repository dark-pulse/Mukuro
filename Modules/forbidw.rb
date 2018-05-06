require_relative 'forbidw_word'
# Deletes the message if it contains the word. Here's for defining a word:
# The word variable defined before the block so that the block can update it

# The forbidding def command
$bot.command :def_forbid do |event, *args|
    event.respond "The forbidden statements have changed to **#{args.join(' ')}**"
    File.open('Modules/forbidw_word.rb', 'w') { |file| file.write("$word = /#{args.join(' ')}/i") }
end

# The deletion command
   $bot.message(contains: $word) do |event|
     event.message.delete
   event.respond "A message was deleted for containing a forbidden word."
 end