require 'discordrb'

TOKEN = 'NDU2MjI1MzY2Njk3MDUwMTEy.DgHchw.YIB2k3HZvyzZgHHDiHw-eJV6vog'
bot = Discordrb::Bot.new token: TOKEN

bot.ready do |event|
	bot.dnd
	bot.game = "Awaiting configurations..."
end

bot.run