require 'discordrb'
require_relative "setup/constants"
require_relative "setup/joinleave"
#Code
bot = Discordrb::Commands::CommandBot.new token: TOKEN_ID, prefix: PREFIX

bot.ready { bot.game = GAME }
#Start
bot.run