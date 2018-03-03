require 'discordrb'
require 'yaml'
require_relative "setup/constants"
require_relative "scripts/load"
#Code
CONFIG = YAML.load_file('config.yaml')
bot = Discordrb::Commands::CommandBot.new token: CONFIG['token'], prefix: "-"

bot.ready { bot.game = GAME }
#Start
bot.run