require 'dotenv'
Dotenv.load

require 'discordrb'
bot = Discordrb::Commands::CommandBot.new token: ENV['TOKEN'], application_id: ENV['APPID'], prefix: '!', advanced_functionality: false, debug: true #, log_mode: :debug

dir = File.dirname(__FILE__)

bot.command :hello do |event|
"Hello"
end

bot.run
