require 'discordrb'
bot = Discordrb::Bot.new token: process.env.TOKEN
bot.run