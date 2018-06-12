require 'discordrb'

bot = Discordrb::Bot.new token: TOKEN

bot.ready do |event|
	bot.dnd
	bot.game = "Awaiting configurations..."
end

bot.run