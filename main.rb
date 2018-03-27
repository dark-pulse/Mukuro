require 'dotenv'
Dotenv.load

require 'discordrb'
bot = Discordrb::Commands::CommandBot.new token: 'NDE5MjgwMzk0MjUzNTAwNDI2.DYCgFA.c6Gxg0O07jDKEnlP-EG8t7B25lY', application_id: '419280394253500426', prefix: 's!', advanced_functionality: false, debug: true #, log_modes: :debug

dir = File.dirname(__FILE__)

bot.command :hello do |event|
"Hello"
end

bot.run
