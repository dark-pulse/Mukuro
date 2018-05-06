require 'discordrb'

# The necessary configurations to run the bot.
TOKEN = 'NDQyMzQ5MDE3NzEyODIwMjQ0.Dc9hSw.QALKSRr-dPJYNqb5i2nAMwrKKSA'
PREFIX = '!'

$bot = Discordrb::Commands::CommandBot.new token: TOKEN, prefix: PREFIX

# Instances that run when the bot.run command starts.
$bot.ready do |event|
    $bot.game = "with your man ❤"
end

# The list of commands that are to be imported
require_relative 'Modules/modules'

$bot.run