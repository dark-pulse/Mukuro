const Discord = require("discord.js");
const client = new Discord.Client();

client.on("ready", () => {
  console.log("I am ready!");
});

client.on("message", (message) => {
  if (message.content.startsWith("ping")) {
    message.channel.send("pong!");
  }
});

client.login("NDEzODAyOTA0MDg0ODA3Njkx.DWeP_A.aYC9iy0g4utgi1RnTER5Gt6P5M4");